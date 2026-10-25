#!/usr/bin/env python3
"""Build APK variants untuk isolasi FC.
- REPACK_ONLY: re-pack + zipalign + sign TANPA patch apapun (byte-to-byte sama classes2.dex dengan asli).
- IAP_ONLY: patch free IAP saja.
- ADS_ONLY: patch showAds return-void saja.
- MOD_FULL: keduanya.
"""
import sys, os, zipfile, struct, hashlib, zlib, base64
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography import x509 as cx509
from cryptography.x509.oid import NameOID
from datetime import datetime, timedelta, timezone
from asn1crypto import cms as _cms, x509 as _x509


# ===== DEX patch helpers =====
OFF_IABRESULT_ISFAILURE  = 0x6de2c   # isFailure()Z sz=10
OFF_IABRESULT_ISSUCCESS  = 0x6de50   # isSuccess()Z sz=8
OFF_MONSTERHUNTER_SHOWADS = 0x712f8  # showAds(I)V sz=12

def patch_iap(dex):
    # isSuccess: const/4 v0,1 ; return v0 ; nop...
    off = OFF_IABRESULT_ISSUCCESS; sz = struct.unpack_from('<I', dex, off+12)[0]
    assert sz == 8
    dex[off+16:off+16+2*sz] = bytes.fromhex('12100f00') + b'\x00\x00'*(sz-2)
    # isFailure: const/4 v0,0 ; return v0 ; nop...
    off = OFF_IABRESULT_ISFAILURE; sz = struct.unpack_from('<I', dex, off+12)[0]
    assert sz == 10
    dex[off+16:off+16+2*sz] = bytes.fromhex('12000f00') + b'\x00\x00'*(sz-2)

def patch_ads(dex):
    off = OFF_MONSTERHUNTER_SHOWADS; sz = struct.unpack_from('<I', dex, off+12)[0]
    assert sz == 12
    dex[off+16:off+16+2*sz] = b'\x0e\x00' + b'\x00\x00'*(sz-1)

def recompute_dex_checksum(dex):
    sha1 = hashlib.sha1(); sha1.update(bytes(dex[0x20:]))
    dex[0x0C:0x0C+20] = sha1.digest()
    struct.pack_into('<I', dex, 0x08, zlib.adler32(bytes(dex[0x0C:])) & 0xFFFFFFFF)


# ===== Signing =====
def make_key_cert():
    k = rsa.generate_private_key(65537, 2048)
    dn = cx509.Name([cx509.NameAttribute(NameOID.COUNTRY_NAME,"US"),
                    cx509.NameAttribute(NameOID.ORGANIZATION_NAME,"BF"),
                    cx509.NameAttribute(NameOID.COMMON_NAME,"MOD")])
    now = datetime.now(timezone.utc)
    cert = (cx509.CertificateBuilder().subject_name(dn).issuer_name(dn)
            .public_key(k.public_key()).serial_number(cx509.random_serial_number())
            .not_valid_before(now-timedelta(days=1)).not_valid_after(now+timedelta(days=365*10))
            .sign(k, hashes.SHA256()))
    return k, cert.public_bytes(serialization.Encoding.DER)

def b64sha(d): return base64.b64encode(hashlib.sha256(d).digest()).decode('ascii')

def sign_entries(entries, key, cert_der):
    mbuf = "Manifest-Version: 1.0\r\nCreated-By: BF-MOD\r\n\r\n"
    for n in sorted(entries):
        if n.startswith('META-INF/'): continue
        mbuf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(entries[n])}\r\n\r\n"
    mf = mbuf.encode()
    sf = f"Signature-Version: 1.0\r\nCreated-By: BF-MOD\r\nSHA-256-Digest-Manifest: {b64sha(mf)}\r\n\r\n"
    for n in sorted(entries):
        if n.startswith('META-INF/'): continue
        blk = f"Name: {n}\r\nSHA-256-Digest: {b64sha(entries[n])}\r\n\r\n".encode()
        sf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(blk)}\r\n\r\n"
    sf = sf.encode()
    sig = key.sign(sf, padding.PKCS1v15(), hashes.SHA256())
    ca = _x509.Certificate.load(cert_der)
    ias = _cms.IssuerAndSerialNumber({'issuer':ca['tbs_certificate']['issuer'],'serial_number':ca['tbs_certificate']['serial_number']})
    si = _cms.SignerInfo({'version':'v1','sid':('issuer_and_serial_number',ias),'digest_algorithm':{'algorithm':'sha256','parameters':None},'signature_algorithm':{'algorithm':'sha256_rsa','parameters':None},'signature':sig})
    cc = _cms.CertificateChoices(name='certificate',value=ca)
    sd = _cms.SignedData({'version':'v1','digest_algorithms':[{'algorithm':'sha256','parameters':None}],'encap_content_info':{'content_type':'data'},'certificates':_cms.CertificateSet([cc]),'signer_infos':[si]})
    rsa = _cms.ContentInfo({'content_type':'signed_data','content':sd}).dump()
    return mf, sf, rsa


# ===== Zipalign-aware ZIP writer =====
ALIGN = 4
LFH_SIG, CDH_SIG, EOCD_SIG = 0x04034b50, 0x02014b50, 0x06054b50

def lfh(nb, crc, csize, usize, xlen, ctype):
    return struct.pack('<IHHHHHIIIHH', LFH_SIG, 20, 0, ctype, 0, 0, crc, csize, usize, len(nb), xlen) + nb
def cdh(nb, crc, csize, usize, lo, xlen, ctype):
    return struct.pack('<IHHHHHHIIIHHHHHII', CDH_SIG, 20, 20, 0, ctype, 0, 0, crc, csize, usize, len(nb), xlen, 0, 0, 0, 0, lo) + nb
def eocd(n, cds, cdo):
    return struct.pack('<IHHHHIIH', EOCD_SIG, 0, 0, n, n, cds, cdo, 0)

def write_aligned_apk(entries, out_path):
    """Tulis ZIP dengan zipalign 4-byte pada STORED entries. Mengembalikan dict
    entries yang ditulis (sudah termasuk data terkompresi)."""
    STORED_EXACT = {'AndroidManifest.xml','classes.dex','classes2.dex','resources.arsc','META-INF/CERT.RSA'}
    fm = []
    for n in sorted(entries.keys()):
        d = entries[n]
        if n in STORED_EXACT:
            ct=0; cd=d; csize=len(d)
        else:
            ct=8
            co = zlib.compressobj(6, zlib.DEFLATED, -15)
            cd = co.compress(d)+co.flush(); csize=len(cd)
        usize=len(d); crc=zlib.crc32(d)&0xFFFFFFFF
        fm.append((n.encode('utf-8'), cd, ct, csize, usize, crc))
    with open(out_path,'wb') as f:
        w=[]
        for nb, cd, ct, cs, us, crc in fm:
            hl = 30+len(nb); pos=f.tell()
            ex = ((ALIGN-((pos+hl)%ALIGN))%ALIGN) if ct==0 else 0
            f.write(lfh(nb, crc, cs, us, ex, ct)); f.write(b'\x00'*ex)
            lo = f.tell()-hl-ex
            f.write(cd); w.append((nb, crc, cs, us, lo, ct, ex))
        cd_start=f.tell()
        for nb,crc,cs,us,lo,ct,ex in w:
            f.write(cdh(nb, crc, cs, us, lo, ex, ct)+b'\x00'*ex)
        cd_end=f.tell(); f.write(eocd(len(w), cd_end-cd_start, cd_start))

def build(out_name, do_iap=False, do_ads=False):
    apk_in = 'Brave_Fighter.apk'
    if os.path.exists(out_name): os.unlink(out_name)
    print(f"\n=== Build {out_name} (iap={do_iap}, ads={do_ads}) ===")
    with zipfile.ZipFile(apk_in,'r') as z:
        entries = {n: z.read(n) for n in z.namelist() if not n.endswith('/')}
    # Hapus signature original
    for n in list(entries.keys()):
        if n.startswith('META-INF/') and (n.endswith('.SF') or n.endswith('.RSA') or n.endswith('.DSA') or n=='META-INF/MANIFEST.MF'):
            del entries[n]
    # Patch classes2.dex
    if 'classes2.dex' in entries and (do_iap or do_ads):
        d2 = bytearray(entries['classes2.dex'])
        if do_iap: patch_iap(d2); print("  IAB patch applied")
        if do_ads: patch_ads(d2); print("  ADS patch applied")
        recompute_dex_checksum(d2)
        entries['classes2.dex'] = bytes(d2)
    # Pass 1: write unsigned aligned untuk dihashing
    tmp1 = out_name+'.tmp1'
    write_aligned_apk(entries, tmp1)
    with zipfile.ZipFile(tmp1,'r') as z:
        aligned = {n: z.read(n) for n in z.namelist() if not n.endswith('/')}
    key, cert_der = make_key_cert()
    mf, sf, rsa = sign_entries(aligned, key, cert_der)
    entries['META-INF/MANIFEST.MF']=mf; entries['META-INF/CERT.SF']=sf; entries['META-INF/CERT.RSA']=rsa
    write_aligned_apk(entries, out_name)
    os.unlink(tmp1)
    print(f"  -> {out_name} ({os.path.getsize(out_name):,} bytes)")

if __name__ == '__main__':
    build('REPACK_ONLY.apk', False, False)
    build('IAP_ONLY.apk', True, False)
    build('ADS_ONLY.apk', False, True)
    build('MOD_FULL.apk', True, True)
    print("\n=== VERIFIKASI ===")
    from androguard.core.apk import APK
    for fn in ['REPACK_ONLY.apk','IAP_ONLY.apk','ADS_ONLY.apk','MOD_FULL.apk']:
        a = APK(fn)
        d = open(fn,'rb').read()
        pp=0; ok=0; bad=0
        while pp<len(d)-4:
            s=struct.unpack_from('<I',d,pp)[0]
            if s==0x04034b50:
                ct=struct.unpack_from('<H',d,pp+8)[0]; nl=struct.unpack_from('<H',d,pp+26)[0]; xl=struct.unpack_from('<H',d,pp+28)[0]; cs=struct.unpack_from('<I',d,pp+18)[0]
                ds=pp+30+nl+xl
                if ct==0:
                    if ds%4==0: ok+=1
                    else: bad+=1
                pp=ds+cs
            elif s in (0x02014b50,0x06054b50): break
            else: pp+=1
        with zipfile.ZipFile(fn) as z:
            d2 = z.read('classes2.dex')
        isS = d2[0x6de60:0x6de60+4].hex(' ')
        sA  = d2[0x71308:0x71308+2].hex(' ')
        print(f"  {fn:18s} valid={str(a.is_valid_APK()):5s} size={os.path.getsize(fn):>10,} align={ok}/{ok+bad} isS={isS} sA={sA}")
