#!/usr/bin/env python3
"""Build APK dengan COPY BYTE-FOR-BYTE dari APK ASLI — TIDAK PERNAH re-compress.
Hanya mengganti classes2.dex (jika di-patch) dan META-INF/* signature.
Zipalign hanya diterapkan pada file yang memang sudah STORED di APK asli,
dengan menambahkan padding di extra field.
"""
import sys, os, zipfile, struct, hashlib, zlib, base64, io, shutil
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import rsa, padding
from cryptography import x509 as cx509
from cryptography.x509.oid import NameOID
from datetime import datetime, timedelta, timezone
from asn1crypto import cms as _cms, x509 as _x509


OFF_IABRESULT_ISFAILURE  = 0x6de2c
OFF_IABRESULT_ISSUCCESS  = 0x6de50
OFF_MONSTERHUNTER_SHOWADS = 0x712f8

def patch_iap(dex):
    off = OFF_IABRESULT_ISSUCCESS; sz = struct.unpack_from('<I', dex, off+12)[0]
    assert sz == 8
    dex[off+16:off+16+2*sz] = bytes.fromhex('12100f00') + b'\x00\x00'*(sz-2)
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

def build(out_name, do_iap=False, do_ads=False, target_align=4):
    apk_in = 'Brave_Fighter.apk'
    if os.path.exists(out_name): os.unlink(out_name)
    print(f"\n=== Build {out_name} (iap={do_iap}, ads={do_ads}) ===")

    with open(apk_in,'rb') as f: apk = bytearray(f.read())

    # ---- 1) Parse central directory dari APK asli untuk dapat lokasi local header tiap entry ----
    eocd_sig = b'PK\x05\x06'
    eocd_pos = apk.rfind(eocd_sig)
    assert eocd_pos >= 0
    cd_size = struct.unpack_from('<I', apk, eocd_pos+12)[0]
    cd_off  = struct.unpack_from('<I', apk, eocd_pos+16)[0]
    nent    = struct.unpack_from('<H', apk, eocd_pos+10)[0]

    # Parse central directory untuk mendapatkan (filename, local_header_offset, compress_type, CRC, csize, usize, extra_len_at_cd, comment_len)
    entries = []  # list of dict
    p = cd_off
    for i in range(nent):
        sig = struct.unpack_from('<I', apk, p)[0]
        assert sig == 0x02014b50, f"bad CDH signature at 0x{p:x}: {sig:#x}"
        # Central directory header: 46 bytes fixed
        ver_need = struct.unpack_from('<H', apk, p+6)[0]
        ctype = struct.unpack_from('<H', apk, p+10)[0]
        crc   = struct.unpack_from('<I', apk, p+16)[0]
        csize = struct.unpack_from('<I', apk, p+20)[0]
        usize = struct.unpack_from('<I', apk, p+24)[0]
        nlen  = struct.unpack_from('<H', apk, p+28)[0]
        xlen  = struct.unpack_from('<H', apk, p+30)[0]
        clen  = struct.unpack_from('<H', apk, p+32)[0]
        lhoff = struct.unpack_from('<I', apk, p+42)[0]
        name = bytes(apk[p+46:p+46+nlen]).decode('utf-8','replace')
        entries.append({'name':name, 'lhoff':lhoff, 'ctype':ctype, 'crc':crc,
                        'csize':csize, 'usize':usize, 'xlen_cd':xlen, 'clen':clen,
                        'do_replace':False, 'new_data':None, 'new_ct':None})
        p += 46+nlen+xlen+clen

    # ---- 2) Siapkan classes2.dex baru jika di-patch ----
    d2_entry = None
    for e in entries:
        if e['name'] == 'classes2.dex': d2_entry = e; break
    if (do_iap or do_ads) and d2_entry is not None:
        lhoff = d2_entry['lhoff']
        # Parse local header
        assert struct.unpack_from('<I', apk, lhoff)[0] == 0x04034b50
        nlen = struct.unpack_from('<H', apk, lhoff+26)[0]
        xlen = struct.unpack_from('<H', apk, lhoff+28)[0]
        data_start = lhoff+30+nlen+xlen
        old_ct = d2_entry['ctype']
        if old_ct == 0:
            d2 = bytearray(apk[data_start:data_start+d2_entry['csize']])
        else:
            raw = bytes(apk[data_start:data_start+d2_entry['csize']])
            d2 = bytearray(zlib.decompress(raw, -15))
        if do_iap: patch_iap(d2)
        if do_ads: patch_ads(d2)
        recompute_dex_checksum(d2)
        d2_entry['do_replace']=True
        d2_entry['new_data']=bytes(d2)
        d2_entry['new_ct']=0  # STORE (untuk keamanan, tapi boleh coba DEFLATED juga)
        d2_entry['new_crc']=zlib.crc32(d2_entry['new_data'])&0xFFFFFFFF
        print(f"  classes2.dex patched ({len(d2)} bytes)")

    # ---- 3) Hapus META-INF signature original ----
    sig_files = set()
    for e in entries:
        if e['name'].startswith('META-INF/') and (e['name'].endswith('.SF') or e['name'].endswith('.RSA') or e['name'].endswith('.DSA') or e['name']=='META-INF/MANIFEST.MF'):
            sig_files.add(e['name'])
    entries = [e for e in entries if e['name'] not in sig_files]

    # ---- 4) Generate signature baru ----
    # Untuk bangun manifest, kita perlu UNCOMPRESSED content dari SETIAP entry
    # (kita bisa baca dari APK asli, karena content yang tidak diganti sama persis).
    # Untuk classes2.dex yang diganti, pakai new_data.
    # Kita simpan (filename, uncompressed_content) untuk sign lalu buang.
    contents = {}
    for e in entries:
        if e['do_replace']:
            contents[e['name']] = e['new_data']
        else:
            lhoff = e['lhoff']
            nlen = struct.unpack_from('<H', apk, lhoff+26)[0]
            xlen = struct.unpack_from('<H', apk, lhoff+28)[0]
            ds = lhoff+30+nlen+xlen
            raw = bytes(apk[ds:ds+e['csize']])
            if e['ctype']==0:
                contents[e['name']] = raw
            else:
                contents[e['name']] = zlib.decompress(raw, -15)
    # Build manifest
    mbuf = "Manifest-Version: 1.0\r\nCreated-By: BF-MOD-safe\r\n\r\n"
    for n in sorted(contents):
        mbuf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(contents[n])}\r\n\r\n"
    mf = mbuf.encode()
    sf = f"Signature-Version: 1.0\r\nCreated-By: BF-MOD-safe\r\nSHA-256-Digest-Manifest: {b64sha(mf)}\r\n\r\n"
    for n in sorted(contents):
        blk = f"Name: {n}\r\nSHA-256-Digest: {b64sha(contents[n])}\r\n\r\n".encode()
        sf += f"Name: {n}\r\nSHA-256-Digest: {b64sha(blk)}\r\n\r\n"
    sf = sf.encode()
    key, cert_der = make_key_cert()
    sig = key.sign(sf, padding.PKCS1v15(), hashes.SHA256())
    ca = _x509.Certificate.load(cert_der)
    ias = _cms.IssuerAndSerialNumber({'issuer':ca['tbs_certificate']['issuer'],'serial_number':ca['tbs_certificate']['serial_number']})
    si = _cms.SignerInfo({'version':'v1','sid':('issuer_and_serial_number',ias),'digest_algorithm':{'algorithm':'sha256','parameters':None},'signature_algorithm':{'algorithm':'sha256_rsa','parameters':None},'signature':sig})
    cc = _cms.CertificateChoices(name='certificate',value=ca)
    sd = _cms.SignedData({'version':'v1','digest_algorithms':[{'algorithm':'sha256','parameters':None}],'encap_content_info':{'content_type':'data'},'certificates':_cms.CertificateSet([cc]),'signer_infos':[si]})
    rsa = _cms.ContentInfo({'content_type':'signed_data','content':sd}).dump()

    # Tambahkan 3 entry META-INF baru
    meta_entries = [
        ('META-INF/MANIFEST.MF', mf, 8),
        ('META-INF/CERT.SF', sf, 8),
        ('META-INF/CERT.RSA', rsa, 0),
    ]
    del contents  # free memory

    # ---- 5) Tulis APK baru: copy local entries asli (tidak diubah), ganti classes2.dex, ----
    # tambah padding zipalign untuk STORED entries, dan tambahkan meta entries.
    out = bytearray()

    # Kita proses entri dalam urutan asli (urutan di local file), tambahkan padding agar STORED data_start kelipatan align.
    # Pertama, urutkan entries berdasarkan local header offset asli.
    entries_sorted = sorted(entries, key=lambda e: e['lhoff'])

    written = []  # (name_b, crc, csize, usize, local_off, ctype, extra_padding)

    # Tulis semua entri dari APK asli
    # Kita TIDAK memodifikasi file selain classes2.dex — SEMUA byte local header (termasuk extra field asli) disalin apa adanya.
    # Untuk STORED entries, cek apakah data_start asli kelipatan align. Jika tidak, kita tambahkan padding di
    # extra field local header (copy extra asli + tambahkan N x 0x00), lalu update xlen di local header.
    # Untuk entries yang diganti (classes2.dex): kita tulis local header BARU dengan STORED.

    for e in entries_sorted:
        lhoff = e['lhoff']
        # Parse local header asli
        assert struct.unpack_from('<I', apk, lhoff)[0] == 0x04034b50
        ver_fl = struct.unpack_from('<H', apk, lhoff+4)[0]
        ctype_o = struct.unpack_from('<H', apk, lhoff+8)[0]
        mtime = struct.unpack_from('<H', apk, lhoff+10)[0]
        mdate = struct.unpack_from('<H', apk, lhoff+12)[0]
        crc_o = struct.unpack_from('<I', apk, lhoff+14)[0]
        csize_o = struct.unpack_from('<I', apk, lhoff+18)[0]
        usize_o = struct.unpack_from('<I', apk, lhoff+22)[0]
        nlen = struct.unpack_from('<H', apk, lhoff+26)[0]
        xlen_o = struct.unpack_from('<H', apk, lhoff+28)[0]
        name_b = bytes(apk[lhoff+30:lhoff+30+nlen])
        extra_o = bytes(apk[lhoff+30+nlen:lhoff+30+nlen+xlen_o])
        data_o_start = lhoff+30+nlen+xlen_o

        if e['do_replace']:
            # Tulis local header baru untuk classes2.dex dengan STORED
            ctype = e['new_ct']
            new_data = e['new_data']
            usize = len(new_data); csize = len(new_data)
            crc = e['new_crc']
            # Tulis header dulu tanpa extra, cek alignment data_start
            cur_pos = len(out)
            hdr_no_extra = struct.pack('<IHHHHHIIIHH', 0x04034b50, 20, 0, ctype, mtime, mdate, crc, csize, usize, len(name_b), 0) + name_b
            data_start_nopad = cur_pos + len(hdr_no_extra)
            pad = (target_align - (data_start_nopad % target_align)) % target_align if ctype == 0 else 0
            extra = b'\x00'*pad
            xlen = pad
            hdr = struct.pack('<IHHHHHIIIHH', 0x04034b50, 20, 0, ctype, mtime, mdate, crc, csize, usize, len(name_b), xlen) + name_b + extra
            local_off = len(out)
            out.extend(hdr)
            out.extend(new_data)
            written.append((name_b, crc, csize, usize, local_off, ctype, xlen))
        else:
            # Salin local header asli dan data asli apa adanya
            # Untuk alignment STORED: cek apakah data_start setelah penambahan offset (out vs asli) aligned.
            # Karena kita mulai menulis dari offset 0 dengan urutan sama, data_start di output == data_start di asli - lhoff_of_first_entry.
            # Namun lebih mudah: hitung target offset output, lalu cek alignment.
            cur_pos = len(out)
            if ctype_o == 0:
                data_start_if_copy = cur_pos + 30 + nlen + xlen_o
                pad = (target_align - (data_start_if_copy % target_align)) % target_align
                if pad > 0:
                    # Tambahkan padding ke extra field
                    new_extra = extra_o + b'\x00'*pad
                    xlen = xlen_o + pad
                    hdr = struct.pack('<IHHHHHIIIHH', 0x04034b50, 20, 0, ctype_o, mtime, mdate, crc_o, csize_o, usize_o, nlen, xlen) + name_b + new_extra
                    local_off = len(out)
                    out.extend(hdr)
                    out.extend(bytes(apk[data_o_start:data_o_start+csize_o]))
                    written.append((name_b, crc_o, csize_o, usize_o, local_off, ctype_o, xlen))
                    continue
            # Tanpa modifikasi: salin header + extra + data mentah
            local_off = len(out)
            hdr_len = 30+nlen+xlen_o
            out.extend(bytes(apk[lhoff:lhoff+hdr_len]))
            out.extend(bytes(apk[data_o_start:data_o_start+csize_o]))
            written.append((name_b, crc_o, csize_o, usize_o, local_off, ctype_o, xlen_o))

    # Tulis META-INF entries
    for name, data, ctype in meta_entries:
        nb = name.encode('utf-8')
        usize = len(data)
        if ctype == 0:
            cd = data; csize = usize; crc = zlib.crc32(data)&0xFFFFFFFF
        else:
            co = zlib.compressobj(6, zlib.DEFLATED, -15); cd = co.compress(data)+co.flush(); csize = len(cd); crc = zlib.crc32(data)&0xFFFFFFFF
        cur_pos = len(out)
        hdr_no_extra = struct.pack('<IHHHHHIIIHH',0x04034b50,20,0,ctype,0,0,crc,csize,usize,len(nb),0)+nb
        data_start_nopad = cur_pos + len(hdr_no_extra)
        pad = (target_align-(data_start_nopad%target_align))%target_align if ctype==0 else 0
        extra = b'\x00'*pad; xlen=pad
        hdr = struct.pack('<IHHHHHIIIHH',0x04034b50,20,0,ctype,0,0,crc,csize,usize,len(nb),xlen)+nb+extra
        local_off = len(out)
        out.extend(hdr); out.extend(cd)
        written.append((nb,crc,csize,usize,local_off,ctype,xlen))

    # ---- 6) Tulis Central Directory dan EOCD ----
    cd_start = len(out)
    for nb,crc,csize,usize,lo,ct,xl in written:
        cd_rec = struct.pack('<IHHHHHHIIIHHHHHII',0x02014b50,20,20,0,ct,0,0,crc,csize,usize,len(nb),xl,0,0,0,0,lo)+nb+b'\x00'*xl
        out.extend(cd_rec)
    cd_end = len(out)
    out.extend(struct.pack('<IHHHHIIH',0x06054b50,0,0,len(written),len(written),cd_end-cd_start,cd_start,0))

    with open(out_name,'wb') as f: f.write(out)
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
        pp=0; ok=0; bad=0; ct0=0; ct8=0
        while pp<len(d)-4:
            s=struct.unpack_from('<I',d,pp)[0]
            if s==0x04034b50:
                ct=struct.unpack_from('<H',d,pp+8)[0]; nl=struct.unpack_from('<H',d,pp+26)[0]; xl=struct.unpack_from('<H',d,pp+28)[0]; cs=struct.unpack_from('<I',d,pp+18)[0]
                ds=pp+30+nl+xl
                if ct==0:
                    ct0+=1
                    if ds%4==0: ok+=1
                    else: bad+=1
                else:
                    ct8+=1
                pp=ds+cs
            elif s in (0x02014b50,0x06054b50): break
            else: pp+=1
        # Bandingkan ct profile dengan asli untuk file kunci
        with zipfile.ZipFile(fn) as z:
            ztest = z.testzip()
        print(f"  {fn:18s} valid={str(a.is_valid_APK()):5s} STORED={ct0} DEFLATED={ct8} align={ok}/{ok+bad} testzip={ztest} size={os.path.getsize(fn):,}")
