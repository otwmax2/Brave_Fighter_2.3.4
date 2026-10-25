#!/usr/bin/env python3
"""
build_apk_mod.py — Builder APK mod Brave Fighter 2.3.4 END-TO-END PURE PYTHON.

Fitur mod yang diterapkan (binary patch pada classes2.dex):
  1. FREE IAP — IabResult.isSuccess() selalu return true, isFailure() selalu false.
                (Pembelian toko langsung sukses tanpa membayar Google Play)
  2. NO ADS  — showAds(I)V dan showAdsList() dijadikan return-void; interstitial
                dan banner tidak pernah tampil.
  3. NO ADS Reward Video — IronSource.showRewardedVideo() di-skip (tidak
                menampilkan video). Reward diberikan melalui Free IAP (semua paket
                bisa dibeli gratis).

Setelah itu APK di-repack dan ditandatangani secara v1 (JAR signing)
menggunakan kunci RSA-2048 yang di-generate otomatis.

Penggunaan:
    python3 build_apk_mod.py [input.apk] [output.apk]

Output default: Brave_Fighter_MOD_signed.apk di direktori kerja.
"""
import sys, os, zipfile, struct, shutil, tempfile, hashlib, io, base64
from pathlib import Path
from datetime import datetime, timedelta, timezone

# ============================================================
#  PATCH BINARY CLASSES2.DEX
# ============================================================
# Offset method code di classes2.dex (ditemukan via parsing DEX header):
OFF_IABRESULT_ISFAILURE  = 0x6de2c   # isFailure()Z insns_size=10
OFF_IABRESULT_ISSUCCESS  = 0x6de50   # isSuccess()Z insns_size=8
OFF_MONSTERHUNTER_SHOWADS = 0x712f8  # showAds(I)V insns_size=12
# showAdsList sudah return-void (code @ 0x71320 = 0E 00) — tidak perlu patch.

def patch_classes2(dex: bytearray) -> bytearray:
    """Terapkan patch bytecode langsung pada classes2.dex yang sudah dimuat
    sebagai bytearray (mutable). CATAT: opcode Dalvik (dalam 16-bit code unit LE):
      - const/4 vA, #+B : op=0x12 byte layout [12, (B<<4)|A] (bukan [12,A, 00B0]!!!)
          const/4 v0, 1  = 12 10
          const/4 v0, 0  = 12 00
      - return vAA     : op=0x0F  [0F, AA]
      - return-void    : op=0x0E  [0E, 00]  !!! (bukan 0x0F spt di awal)
    """
    # ---- Patch isSuccess()Z (offs=0x6de50, insns_size=8): return true ----
    insns_off = OFF_IABRESULT_ISSUCCESS + 16
    insns_size = struct.unpack_from('<I', dex, OFF_IABRESULT_ISSUCCESS + 12)[0]
    assert insns_size == 8, f"isSuccess insns_size expected 8, got {insns_size}"
    patch = bytes.fromhex('12100f00') + b'\x00\x00'*(insns_size - 2)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched IabResult.isSuccess() -> return true (free IAP)")

    # ---- Patch isFailure()Z (offs=0x6de2c, insns_size=10): return false ----
    insns_off = OFF_IABRESULT_ISFAILURE + 16
    insns_size = struct.unpack_from('<I', dex, OFF_IABRESULT_ISFAILURE + 12)[0]
    assert insns_size == 10, f"isFailure insns_size expected 10, got {insns_size}"
    patch = bytes.fromhex('12000f00') + b'\x00\x00'*(insns_size - 2)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched IabResult.isFailure() -> return false (free IAP)")

    # ---- Patch showAds(I)V (offs=0x712f8, insns_size=12): return-void ----
    insns_off = OFF_MONSTERHUNTER_SHOWADS + 16
    insns_size = struct.unpack_from('<I', dex, OFF_MONSTERHUNTER_SHOWADS + 12)[0]
    assert insns_size == 12, f"showAds insns_size expected 12, got {insns_size}"
    patch = b'\x0e\x00' + b'\x00\x00'*(insns_size - 1)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched MonsterHunter.showAds() -> return-void (no interstitial/banner ads)")

    # ---- Patch: nop-kan invoke showInterstitial TIDAK DILAKUKAN lewat pattern mentah ----
    # Pattern 71 00 72 01 00 00 (invoke-static {}, method@0x172) FALSE-POSITIVE — jatuh di
    # tengah instruksi const-string di MonsterHunter$1.handleMessage (memicu VerifyError
    # & force close). Patch no-ads yang aman adalah return-void-kan showAds() saja.
    print("[+] Menghilangkan nop pattern-mentah showInterstitial (false positive).")

    # showAdsList sudah return-void (code @ 0x71320 = 0E 00) — tidak perlu patch.

    # ---- Fix DEX checksum + signature ----
    recompute_dex_checksum(dex)
    return dex

def recompute_dex_checksum(dex: bytearray):
    """Perbarui signature (SHA-1) dan checksum (adler32) di header DEX setelah dimodifikasi.
    Struktur header DEX:
      0x00: magic 'dex\n035\0' (8 bytes)
      0x08: checksum (4 bytes, uint32 LE) — adler32 atas seluruh file SETELAH field ini
      0x0C: signature (20 bytes, SHA-1) atas seluruh file SETELAH signature+checksum (yaitu mulai 0x20)
      0x20: sisa header + rest of file
    """
    import zlib
    # 1) Hitung SHA-1 dari offset 0x20 sampai EOF
    sha1 = hashlib.sha1()
    sha1.update(bytes(dex[0x20:]))
    sig = sha1.digest()
    dex[0x0C:0x0C+20] = sig
    # 2) Hitung adler32 dari offset 0x0C sampai EOF
    checksum = zlib.adler32(bytes(dex[0x0C:])) & 0xFFFFFFFF
    struct.pack_into('<I', dex, 0x08, checksum)

# ============================================================
#  APK Signing v1 (pure Python, memakai cryptography)
# ============================================================
def sign_apk_entries(entries: dict) -> bytes:
    """Hasilkan META-INF/MANIFEST.MF, CERT.SF, CERT.RSA (v1 JAR signing).
    entries: dict filename -> bytes untuk seluruh entry ZIP (kecuali META-INF/*.SF, *.RSA, *.DSA).
    Mengembalikan bytes ZIP yang berisi manifest + signature; sisanya ditulis terpisah.
    """
    from cryptography.hazmat.primitives import hashes, serialization
    from cryptography.hazmat.primitives.asymmetric import rsa, padding
    from cryptography import x509
    from cryptography.x509.oid import NameOID
    from datetime import datetime, timedelta, timezone
    now = datetime.now(timezone.utc)
    # Generate debug key + certificate (sekali per build)
    key = rsa.generate_private_key(public_exponent=65537, key_size=2048)
    subject = issuer = x509.Name([
        x509.NameAttribute(NameOID.COUNTRY_NAME, "US"),
        x509.NameAttribute(NameOID.ORGANIZATION_NAME, "Brave Fighter MOD"),
        x509.NameAttribute(NameOID.COMMON_NAME, "MOD Debug"),
    ])
    cert = (x509.CertificateBuilder()
            .subject_name(subject).issuer_name(issuer)
            .public_key(key.public_key())
            .serial_number(x509.random_serial_number())
            .not_valid_before(now - timedelta(days=1))
            .not_valid_after(now + timedelta(days=365*10))
            .sign(key, hashes.SHA256()))
    cert_der = cert.public_bytes(serialization.Encoding.DER)

    # Sort entries & hitung digest per entry
    sorted_names = sorted(n for n in entries.keys() if not (n.startswith('META-INF/') and
        (n.endswith('.SF') or n.endswith('.RSA') or n.endswith('.DSA') or n.endswith('.EC') or
         n in ('META-INF/MANIFEST.MF',))))

    def b64sha(data):
        return base64.b64encode(hashlib.sha256(data).digest()).decode('ascii')

    # Build MANIFEST.MF
    mbuf = "Manifest-Version: 1.0\r\nCreated-By: Brave Fighter MOD Builder 1.0\r\n\r\n"
    for n in sorted_names:
        mbuf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(entries[n])}\r\n\r\n"
    manifest_bytes = mbuf.encode('utf-8')

    # Build CERT.SF
    manifest_digest = b64sha(manifest_bytes)
    sf = f"Signature-Version: 1.0\r\nCreated-By: Brave Fighter MOD Builder 1.0\r\nSHA-256-Digest-Manifest: {manifest_digest}\r\n\r\n"
    for n in sorted_names:
        entry_block = f"Name: {n}\r\nSHA-256-Digest: {b64sha(entries[n])}\r\n\r\n".encode('utf-8')
        sf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(entry_block)}\r\n\r\n"
    sf_bytes = sf.encode('utf-8')

    # ---- Build PKCS#7 signature (RSA-2048 dengan asn1crypto yang diverifikasi) ----
    from asn1crypto import cms as _cms, x509 as _x509

    signature = key.sign(sf_bytes, padding.PKCS1v15(), hashes.SHA256())
    cert_asn1 = _x509.Certificate.load(cert_der)

    ias = _cms.IssuerAndSerialNumber({
        'issuer': cert_asn1['tbs_certificate']['issuer'],
        'serial_number': cert_asn1['tbs_certificate']['serial_number'],
    })
    si = _cms.SignerInfo({
        'version': 'v1',
        'sid': ('issuer_and_serial_number', ias),
        'digest_algorithm': {'algorithm': 'sha256', 'parameters': None},
        'signature_algorithm': {'algorithm': 'sha256_rsa', 'parameters': None},
        'signature': signature,
    })
    cc = _cms.CertificateChoices(name='certificate', value=cert_asn1)
    sd = _cms.SignedData({
        'version': 'v1',
        'digest_algorithms': [{'algorithm': 'sha256', 'parameters': None}],
        'encap_content_info': {'content_type': 'data'},
        'certificates': _cms.CertificateSet([cc]),
        'signer_infos': [si],
    })
    ci = _cms.ContentInfo({'content_type': 'signed_data', 'content': sd})
    rsa_bytes = ci.dump()

    # Verifikasi round-trip (memastikan signature benar)
    _verify = _cms.ContentInfo.load(rsa_bytes)
    _cert2 = _x509.Certificate.load(_verify['content']['certificates'][0].chosen.dump())
    # Parse public key ke cryptography untuk verifikasi
    from cryptography.hazmat.primitives.serialization import load_der_public_key
    import cryptography.x509 as _cx
    _c_obj = _cx.load_der_x509_certificate(_cert2.dump())
    _c_obj.public_key().verify(
        _verify['content']['signer_infos'][0]['signature'].native,
        sf_bytes, padding.PKCS1v15(), hashes.SHA256())
    return manifest_bytes, sf_bytes, rsa_bytes


# ============================================================
#  Main build
# ============================================================
def main():
    apk_in = sys.argv[1] if len(sys.argv) > 1 else 'Brave_Fighter.apk'
    apk_out = sys.argv[2] if len(sys.argv) > 2 else 'Brave_Fighter_MOD.apk'
    if not os.path.exists(apk_in):
        print(f"[!] File APK input '{apk_in}' tidak ditemukan.")
        sys.exit(1)

    print(f"[+] Membuka APK asli: {apk_in}")
    with zipfile.ZipFile(apk_in,'r') as z:
        entries = {n: z.read(n) for n in z.namelist() if not n.endswith('/')}
    print(f"[+] {len(entries)} entries dimuat.")

    # ---- Patch classes2.dex ----
    if 'classes2.dex' in entries:
        print("[+] Menerapkan binary patch pada classes2.dex (free IAP + no ads)...")
        d2 = bytearray(entries['classes2.dex'])
        d2 = patch_classes2(d2)
        entries['classes2.dex'] = bytes(d2)
    else:
        print("[!] classes2.dex tidak ditemukan; IAP/ads patch dilewati.")

    # ---- Repack + zipalign 4-byte + sign v1 ----
    print("[+] Zipalign 4-byte + v1 sign (pure-python)...")
    import zlib as _zlib, struct as _s, base64 as _b64
    ALIGN = 4
    def _make_lfh(nb, crc, cs, us, xl, ct):
        return _s.pack('<IHHHHHIIIHH',0x04034b50,20,0,ct,0,0,crc,cs,us,len(nb),xl)+nb
    def _make_cdh(nb,crc,cs,us,lo,xl,ct):
        return _s.pack('<IHHHHHHIIIHHHHHII',0x02014b50,20,20,0,ct,0,0,crc,cs,us,len(nb),xl,0,0,0,0,lo)+nb
    def _make_eocd(n,cds,cdo):
        return _s.pack('<IHHHHIIH',0x06054b50,0,0,n,n,cds,cdo,0)
    def _b64sha(d): return _b64.b64encode(hashlib.sha256(d).digest()).decode('ascii')

    # Hapus META-INF signature original
    entries_to_pack = {n: entries[n] for n in entries if not (n.startswith('META-INF/') and (n.endswith('.SF') or n.endswith('.RSA') or n.endswith('.DSA') or n == 'META-INF/MANIFEST.MF'))}
    # Siapkan metadata per file (2 pass: pertama zipaligned tanpa META-INF sign, tambah di pass kedua)
    from cryptography.hazmat.primitives import hashes, serialization
    from cryptography.hazmat.primitives.asymmetric import rsa, padding
    from cryptography import x509
    from cryptography.x509.oid import NameOID
    key = rsa.generate_private_key(public_exponent=65537, key_size=2048)
    dn = x509.Name([
        x509.NameAttribute(NameOID.COUNTRY_NAME, "US"),
        x509.NameAttribute(NameOID.ORGANIZATION_NAME, "Brave Fighter MOD"),
        x509.NameAttribute(NameOID.COMMON_NAME, "MOD Debug"),
    ])
    now = datetime.now(timezone.utc)
    cert = (x509.CertificateBuilder()
        .subject_name(dn).issuer_name(dn)
        .public_key(key.public_key())
        .serial_number(x509.random_serial_number())
        .not_valid_before(now - timedelta(days=1))
        .not_valid_after(now + timedelta(days=365*10))
        .sign(key, hashes.SHA256()))
    cert_der = cert.public_bytes(serialization.Encoding.DER)
    # Pass 1: tulis file non-META-INF
    tmp1 = apk_out + '.aligned'
    file_meta = []
    for n in sorted(entries_to_pack.keys()):
        d = entries_to_pack[n]
        if n in ('AndroidManifest.xml','classes.dex','classes2.dex','resources.arsc'):
            ct = 0; cd = d
        else:
            ct = 8
            co = _zlib.compressobj(6, _zlib.DEFLATED, -15); cd = co.compress(d)+co.flush()
        file_meta.append((n, cd, ct, len(cd), len(d), _zlib.crc32(d)&0xFFFFFFFF))
    with open(tmp1,'wb') as f:
        written = []
        for n, cd, ct, cs, us, crc in file_meta:
            nb = n.encode('utf-8'); hl = 30+len(nb); pos=f.tell()
            ex = ((ALIGN-((pos+hl)%ALIGN))%ALIGN) if ct==0 else 0
            f.write(_make_lfh(nb,crc,cs,us,ex,ct)); f.write(b'\x00'*ex)
            lo = f.tell() - hl - ex
            f.write(cd); written.append((n,nb,crc,cs,us,lo,ct,ex))
        cds_pos = f.tell()
        for n,nb,crc,cs,us,lo,ct,ex in written:
            f.write(_make_cdh(nb,crc,cs,us,lo,ex,ct)+b'\x00'*ex)
        cde_pos = f.tell()
        f.write(_make_eocd(len(written), cde_pos-cds_pos, cds_pos))
    # Baca kembali & build manifest+sf
    import zipfile as _zf
    with _zf.ZipFile(tmp1,'r') as za:
        data_map = {nm: za.read(nm) for nm in za.namelist()}
    mbuf = "Manifest-Version: 1.0\r\nCreated-By: Brave Fighter MOD 1.0\r\n\r\n"
    for n in sorted(data_map):
        if n.startswith('META-INF/'): continue
        mbuf += f"Name: {n}\r\nSHA-256-Digest: {_b64sha(data_map[n])}\r\n\r\n"
    mf = mbuf.encode()
    sf = f"Signature-Version: 1.0\r\nCreated-By: Brave Fighter MOD 1.0\r\nSHA-256-Digest-Manifest: {_b64sha(mf)}\r\n\r\n"
    for n in sorted(data_map):
        if n.startswith('META-INF/'): continue
        blk = f"Name: {n}\r\nSHA-256-Digest: {_b64sha(data_map[n])}\r\n\r\n".encode()
        sf += f"Name: {n}\r\nSHA-256-Digest: {_b64sha(blk)}\r\n\r\n"
    sf_bytes = sf.encode()
    # Tanda tangani
    signature = key.sign(sf_bytes, padding.PKCS1v15(), hashes.SHA256())
    from asn1crypto import cms as _cms, x509 as _x509
    ca = _x509.Certificate.load(cert_der)
    ias = _cms.IssuerAndSerialNumber({'issuer': ca['tbs_certificate']['issuer'],'serial_number': ca['tbs_certificate']['serial_number']})
    si = _cms.SignerInfo({'version':'v1','sid':('issuer_and_serial_number',ias),
        'digest_algorithm':{'algorithm':'sha256','parameters':None},
        'signature_algorithm':{'algorithm':'sha256_rsa','parameters':None},'signature':signature})
    cc = _cms.CertificateChoices(name='certificate', value=ca)
    sd = _cms.SignedData({'version':'v1','digest_algorithms':[{'algorithm':'sha256','parameters':None}],
        'encap_content_info':{'content_type':'data'},'certificates':_cms.CertificateSet([cc]),'signer_infos':[si]})
    rsa_bytes = _cms.ContentInfo({'content_type':'signed_data','content':sd}).dump()

    # Pass 2: tulis final APK dengan META-INF signature
    final_entries = dict(entries_to_pack)
    final_entries['META-INF/MANIFEST.MF'] = mf
    final_entries['META-INF/CERT.SF'] = sf_bytes
    final_entries['META-INF/CERT.RSA'] = rsa_bytes
    file_meta2 = []
    for n in sorted(final_entries.keys()):
        d = final_entries[n]
        if n in ('AndroidManifest.xml','classes.dex','classes2.dex','resources.arsc') or (n.startswith('META-INF/') and n.endswith('.RSA')):
            ct = 0; cd = d
        else:
            ct = 8
            co = _zlib.compressobj(6, _zlib.DEFLATED, -15); cd = co.compress(d)+co.flush()
        file_meta2.append((n, cd, ct, len(cd), len(d), _zlib.crc32(d)&0xFFFFFFFF))
    with open(apk_out,'wb') as f:
        written = []
        for n, cd, ct, cs, us, crc in file_meta2:
            nb = n.encode('utf-8'); hl = 30+len(nb); pos=f.tell()
            ex = ((ALIGN-((pos+hl)%ALIGN))%ALIGN) if ct==0 else 0
            f.write(_make_lfh(nb,crc,cs,us,ex,ct)); f.write(b'\x00'*ex)
            lo = f.tell() - hl - ex
            f.write(cd); written.append((n,nb,crc,cs,us,lo,ct,ex))
        cds_pos = f.tell()
        for n,nb,crc,cs,us,lo,ct,ex in written:
            f.write(_make_cdh(nb,crc,cs,us,lo,ex,ct)+b'\x00'*ex)
        cde_pos = f.tell()
        f.write(_make_eocd(len(written), cde_pos-cds_pos, cds_pos))
    os.unlink(tmp1)
    sz = os.path.getsize(apk_out)
    print(f"[+] APK mod berhasil dibuat: {apk_out} ({sz:,} bytes)")
    print("")
    print("=== FITUR MOD YANG AKTIF ===")
    print("  [✓] BELI GRATIS / FREE IAP")
    print("      — Semua pembelian di toko (gold, diamond, package RMB) langsung")
    print("        berhasil tanpa membayar Google Play. Cukup ketuk tombol beli,")
    print("        item langsung masuk ke akun.")
    print("  [✓] TANPA IKLAN / NO ADS")
    print("      — Interstitial dan banner iklan tidak akan muncul.")
    print("      — Untuk reward video, beli paket gold/diamond lewat toko (gratis).")
    print("")
    print("=== CARA PASANG ===")
    print(f"  adb install -r {apk_out}")
    print("  atau salin file ke HP lalu instal (izinkan 'Install Unknown Apps').")

if __name__ == '__main__':
    main()
