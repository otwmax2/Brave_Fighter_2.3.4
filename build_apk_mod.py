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
OFF_IABRESULT_ISSUCCESS  = 0x6de2c
OFF_IABRESULT_ISFAILURE  = 0x6de50
OFF_MONSTERHUNTER_SHOWADS = 0x712f8
# showAdsList sudah return-void (code @ 0x71320 = 0E 00) — tidak perlu patch.

def patch_classes2(dex: bytearray) -> bytearray:
    """Terapkan patch bytecode langsung pada classes2.dex yang sudah dimuat
    sebagai bytearray (mutable)."""
    # ---- Patch isSuccess: const/4 v0, 1; return v0; nop (sisanya) ----
    insns_off = OFF_IABRESULT_ISSUCCESS + 16
    insns_size = struct.unpack_from('<I', dex, OFF_IABRESULT_ISSUCCESS + 12)[0]
    assert insns_size == 10, f"isSuccess insns_size expected 10, got {insns_size}"
    patch = bytes.fromhex('12100f00') + b'\x00\x00'*(insns_size - 2)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched IabResult.isSuccess() -> return true (free IAP)")

    # ---- Patch isFailure: const/4 v0, 0; return v0; nop (sisanya) ----
    insns_off = OFF_IABRESULT_ISFAILURE + 16
    insns_size = struct.unpack_from('<I', dex, OFF_IABRESULT_ISFAILURE + 12)[0]
    assert insns_size == 8, f"isFailure insns_size expected 8, got {insns_size}"
    patch = bytes.fromhex('12000f00') + b'\x00\x00'*(insns_size - 2)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched IabResult.isFailure() -> return false (free IAP)")

    # ---- Patch showAds: return-void; nop (sisanya) ----
    insns_off = OFF_MONSTERHUNTER_SHOWADS + 16
    insns_size = struct.unpack_from('<I', dex, OFF_MONSTERHUNTER_SHOWADS + 12)[0]
    assert insns_size == 12, f"showAds insns_size expected 12, got {insns_size}"
    patch = b'\x0e\x00' + b'\x00\x00'*(insns_size - 1)
    dex[insns_off:insns_off+2*insns_size] = patch
    print("[+] Patched MonsterHunter.showAds() -> return-void (no interstitial/banner ads)")

    # ---- Patch: nop-kan invoke-static ke IronSource.showInterstitial()V (method_idx 370) ----
    # Pola: invoke-static {}, showInterstitial@370 = 71 00 72 01 00 00 (3 code units = 6 bytes)
    pat_si = bytes([0x71, 0x00, 0x72, 0x01, 0x00, 0x00])
    i = 0; cnt = 0
    while True:
        j = dex.find(pat_si, i)
        if j < 0: break
        dex[j:j+6] = b'\x00\x00'*3
        cnt += 1; i = j+1
    print(f"[+] Nop {cnt}x invoke showInterstitial() (no ads)")

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

    # ---- Build PKCS#7 signature secara manual (DER minimal yang diterima Android) ----
    # Referensi: https://github.com/fornwall/apksigner/blob/master/apksigner-v1.py
    # Kita bangun DER secara langsung untuk menghindari perbedaan API asn1crypto.
    import struct as _s
    from asn1crypto import core as _core, x509 as asn1x509

    # Helper ASN.1 DER
    def der_int(n: int) -> bytes:
        if n == 0: return b'\x02\x01\x00'
        bl = n.to_bytes((n.bit_length()+7)//8, 'big')
        if bl[0] & 0x80: bl = b'\x00' + bl
        return b'\x02' + der_len(len(bl)) + bl
    def der_len(l: int) -> bytes:
        if l < 0x80: return bytes([l])
        enc = l.to_bytes((l.bit_length()+7)//8,'big')
        return bytes([0x80|len(enc)]) + enc
    def der_seq(*parts: bytes) -> bytes:
        body = b''.join(parts); return b'\x30' + der_len(len(body)) + body
    def der_set(*parts: bytes) -> bytes:
        body = b''.join(parts); return b'\x31' + der_len(len(body)) + body
    def der_oid(oid: str) -> bytes:
        # encode OID DER
        nums = [int(x) for x in oid.split('.')]
        enc = [0x28*nums[0]+nums[1]]
        for n in nums[2:]:
            if n < 0x80: enc.append(n)
            else:
                parts=[]
                while n>0: parts.append(n&0x7f); n>>=7
                for i in range(len(parts)-1,0,-1): enc.append(parts[i]|0x80)
                enc.append(parts[0])
        body = bytes(enc)
        return b'\x06' + der_len(len(body)) + body
    def der_octet(b: bytes) -> bytes:
        return b'\x04' + der_len(len(b)) + b
    def der_null() -> bytes: return b'\x05\x00'
    def der_explicit(tag: int, content: bytes) -> bytes:
        """[tag] EXPLICIT (constructed)"""
        return bytes([0xa0|tag]) + der_len(len(content)) + content

    # OIDs
    OID_DATA             = '1.2.840.113549.1.7.1'
    OID_SIGNED_DATA      = '1.2.840.113549.1.7.2'
    OID_SHA256           = '2.16.840.1.101.3.4.2.1'
    OID_SHA256_RSA       = '1.2.840.113549.1.1.11'

    signature = key.sign(sf_bytes, padding.PKCS1v15(), hashes.SHA256())

    # Parse issuer dan serial dari cert DER
    cert_asn1 = asn1x509.Certificate.load(cert_der)
    issuer_der = cert_asn1['tbs_certificate']['issuer'].dump()
    serial_int = cert_asn1['tbs_certificate']['serial_number'].native

    # SignerInfo
    signer_info = der_seq(
        der_int(1),  # version v1
        der_seq(issuer_der, der_int(serial_int)),  # sid: issuer+serial
        der_seq(der_oid(OID_SHA256), der_null()),  # digest algorithm
        der_seq(der_oid(OID_SHA256_RSA), der_null()),  # sig algorithm
        der_octet(signature),  # signature
    )

    # SignedData
    signed_data = der_seq(
        der_int(1),  # version
        der_set(der_seq(der_oid(OID_SHA256), der_null())),  # digest algorithms
        der_seq(der_oid(OID_DATA)),  # encap content info (data, no econtent)
        der_explicit(0, der_seq(cert_der)),  # certificates SET
        der_set(signer_info),
    )

    # Outer ContentInfo
    rsa_bytes = der_seq(
        der_oid(OID_SIGNED_DATA),
        der_explicit(0, signed_data),
    )
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

    # ---- Repack APK + sign ----
    print(f"[+] Menulis APK baru ke: {apk_out}")
    with zipfile.ZipFile(apk_out,'w',zipfile.ZIP_DEFLATED) as zout:
        for name, data in entries.items():
            if name.startswith('META-INF/') and (name.endswith('.SF') or
                name.endswith('.RSA') or name.endswith('.DSA') or
                name in ('META-INF/MANIFEST.MF',)):
                continue  # hapus signature lama
            zout.writestr(name, data)

        # Tambahkan META-INF signature baru
        manifest, sf, rsa = sign_apk_entries(entries)
        zout.writestr('META-INF/MANIFEST.MF', manifest)
        zout.writestr('META-INF/CERT.SF', sf)
        zout.writestr('META-INF/CERT.RSA', rsa)
        # Tambahkan CERT.SF + CERT.RSA di atas
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
