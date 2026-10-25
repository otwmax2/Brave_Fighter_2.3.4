#!/usr/bin/env python3
"""
extract_and_decrypt.py
Ekstrak asset XML dari APK Brave Fighter v2.3.4 ASLI, lalu dekripsi
lapisan-1 (XOR 9-byte rolling key — otomatis deteksi kunci & fase) dan
lapisan-2 (RC4 key "akidbx" + hex uppercase + GBK→UTF-8) secara otomatis.

Cara pakai:
    python3 extract_and_decrypt.py <file.apk> [output_dir]

Algoritma (terbukti dari reverse engineering libcocos2dcpp.so):
- Lapisan-1: XOR 9-byte rolling key. Dua kunci yang dipakai:
    * "hzkjhstgh" (fase 0) — untuk kebanyakan file (awalan 'TE')
    * "kmshtatsk" (fase 0) — untuk EnemyGroup.xml (awalan 'WR')
  Sejumlah file memiliki 3-byte prefix (0x87 0xC1 0xD4) sebelum ciphertext
  yang di-XOR (equip, skill, drop, achievement, gamelevel); skrip akan
  mendeteksi prefix ini otomatis.
- Lapisan-2: RC4 key "akidbx" di atas nilai atribut string (content, name,
  des, describ, dll). Atribut numerik (id/value/lv/num/type/price/dst)
  di-skip. Hasil dekripsi GBK → UTF-8.
- File dalam folder english/ adalah XML UTF-8 plain (tidak terenkripsi).
"""
import sys, os, zipfile, struct, re

L1_KEYS = [b"hzkjhstgh", b"kmshtatsk"]  # 9-byte key lapisan-1
RC4_KEY = b"akidbx"

def rc4_crypt(data: bytes, key: bytes) -> bytes:
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) & 0xFF
        S[i], S[j] = S[j], S[i]
    out = bytearray(len(data))
    i = j = 0
    for k, b in enumerate(data):
        i = (i + 1) & 0xFF
        j = (j + S[i]) & 0xFF
        S[i], S[j] = S[j], S[i]
        out[k] = b ^ S[(S[i] + S[j]) & 0xFF]
    return bytes(out)

def l1_xor(data: bytes, key: bytes, phase: int = 0) -> bytes:
    return bytes(b ^ key[(i + phase) % len(key)] for i, b in enumerate(data))

def detect_l1(data: bytes) -> tuple:
    """Return (key, phase, prefix_skip, plaintext_bytes_l1).
    Mengembalikan kunci+fase yang cocok dengan '<?xml' di awal, dengan
    toleransi prefix header hingga 3 byte.
    Jika file sudah plain (mis. english/), return (None, 0, 0, data).
    """
    if data[:5] == b"<?xml":
        return None, 0, 0, data
    MAGIC = b"<?xml"
    for key in L1_KEYS:
        for prefix_skip in range(0, 5):  # 0..4 byte header prefix
            for phase in range(len(key)):
                if len(data) <= prefix_skip + len(MAGIC):
                    continue
                ok = True
                for j in range(len(MAGIC)):
                    if data[prefix_skip + j] ^ key[(j + phase) % len(key)] != MAGIC[j]:
                        ok = False
                        break
                if ok:
                    # Berhasil — gabungkan prefix (biarkan apa adanya? Tidak, prefix dibuang)
                    dec = l1_xor(data[prefix_skip:], key, phase)
                    return key, phase, prefix_skip, dec
    return None, 0, 0, data  # fallback: tidak dikenal, kembalikan data apa adanya

ENCRYPTED_ATTRS = {
    b"content", b"name", b"des", b"desc", b"describ", b"title", b"text",
    b"msg", b"skill_name", b"skill_des", b"tips", b"info", b"talk", b"win",
    b"lose", b"musicname",
}
PLAIN_ATTRS = {
    b"id", b"value", b"lv", b"num", b"type", b"price", b"atk", b"def", b"hp",
    b"mp", b"exp", b"lvup", b"icon", b"prob", b"time", b"pos", b"x", b"y",
    b"w", b"h", b"map", b"mapid", b"maptexid", b"scnid", b"nextid", b"drop",
    b"count", b"level", b"quality", b"color", b"group", b"rate", b"star",
    b"cost", b"costgold", b"dmg", b"damage", b"range", b"cd", b"buff", b"job",
    b"sex", b"eq", b"next", b"unlock", b"money", b"gold", b"gem", b"expvol",
    b"expmol", b"goldmol", b"battlevalue", b"dropindex0", b"dropindex1",
    b"dropindex2", b"dropindex3", b"dropindex4", b"random0", b"random1",
    b"random2", b"random3", b"random4", b"getgold", b"delaytime", b"wypointid",
    b"enemyid", b"groupid", b"enemynum", b"characterid", b"heronum",
    b"opengold", b"uplevelgold", b"dropexp", b"dropgold", b"getpercent",
    b"getlevel", b"attackrange", b"defaultscale", b"movespeed", b"attackdelt",
    b"hitsound", b"hiteffectid", b"attacksound", b"texname", b"height",
    b"width", b"cgindex0", b"cgindex1",
}
ATTR_RE = re.compile(rb'(\s+)([A-Za-z_][A-Za-z0-9_]*)\s*=\s*"([^"]*)"')
HEX_RE = re.compile(rb'^[0-9A-F]{2,}$')

def l2_decrypt_xml(xml_bytes: bytes) -> bytes:
    def repl(m):
        ws, aname, aval = m.group(1), m.group(2), m.group(3)
        aname_l = aname.lower()
        if aname_l in PLAIN_ATTRS:
            return m.group(0)
        # Atribut terenkripsi: isinya [0-9A-F] panjang genap
        if HEX_RE.match(aval) and len(aval) % 2 == 0 and len(aval) >= 4:
            try:
                raw = bytes.fromhex(aval.decode('ascii'))
            except ValueError:
                return m.group(0)
            pt = rc4_crypt(raw, RC4_KEY)
            # Hasil dekripsi bisa GBK atau sudah UTF-8
            try:
                t = pt.decode('gbk')
            except (UnicodeDecodeError, LookupError):
                t = pt.decode('utf-8', errors='replace')
            t = t.replace('&','&amp;').replace('<','&lt;').replace('>','&gt;').replace('"','&quot;')
            return ws + aname + b'="' + t.encode('utf-8') + b'"'
        # Atribut non-hex (mis. nama file musik OGG) — biarkan
        return m.group(0)
    return ATTR_RE.sub(repl, xml_bytes)

def is_l1_encrypted(data: bytes) -> bool:
    return len(data) >= 2 and data[0] != ord('<')  # Jika mulai '<' → plain, selain itu terenkripsi

def process_one(data: bytes) -> tuple:
    if data[:5] == b"<?xml":
        return data, data, None, 0, "PLAIN-UTF8"
    key, phase, prefix_skip, l1 = detect_l1(data)
    if key is None:
        return data, data, None, 0, "UNKNOWN"
    # Deteksi apakah ada atribut terenkripsi RC4 di dalamnya:
    # file dengan high_bytes=0 setelah l1 biasanya sudah final (angka/ID saja)
    # → tetapi gamelevel/equip/drop yang baru sudah UTF-8 langsung (berisi karakter multi-byte 0xE5... dari Chinese UTF-8)
    # Periksa: apakah l1 sudah mengandung tag dengan atribut [0-9A-F]+?
    high_bytes = sum(1 for b in l1 if b >= 0x80)
    # Jika 2 byte pertama adalah <?xml dan tidak ada pola hex uppercase panjang
    if high_bytes == 0:
        # Semua ASCII — cek apakah nilai atribut uppercase-hex panjang
        has_long_hex = bool(re.search(rb'="[0-9A-F]{8,}"', l1))
        if has_long_hex:
            l2 = l2_decrypt_xml(l1)
            return l1, l2, (key, phase, prefix_skip), 0, f"L1+L2 key={key.decode()} phase={phase} skip={prefix_skip}"
        return l1, l1, (key, phase, prefix_skip), 0, f"L1-OK key={key.decode()} phase={phase} skip={prefix_skip}"
    else:
        # Sudah ada high-byte (GBK/UTF-8) — atribut string sudah terdecode?
        # Tapi bisa jadi masih ada hex uppercase di atribut lain. Coba jalankan l2.
        l2 = l2_decrypt_xml(l1)
        return l1, l2, (key, phase, prefix_skip), 0, f"L1+L2 key={key.decode()} phase={phase} skip={prefix_skip}"

def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    apk_path = sys.argv[1]
    out_dir = sys.argv[2] if len(sys.argv) > 2 else "apk_decrypted"
    os.makedirs(f"{out_dir}/apk", exist_ok=True)
    os.makedirs(f"{out_dir}/l1", exist_ok=True)
    os.makedirs(f"{out_dir}/l2", exist_ok=True)
    report = []
    total = ok = partial = 0
    with zipfile.ZipFile(apk_path) as zf:
        xml_assets = [n for n in zf.namelist() if n.startswith("assets/") and n.endswith(".xml")]
        print(f"[+] APK: {apk_path}")
        print(f"[+] {len(xml_assets)} file XML di assets/")
        for name in sorted(xml_assets):
            raw = zf.read(name)
            rel = name[len("assets/"):]  # hilangkan prefix assets/
            apath = f"{out_dir}/apk/{rel.replace('/', '_')}"
            os.makedirs(os.path.dirname(apath), exist_ok=True)
            with open(apath, "wb") as f: f.write(raw)
            l1, l2, kinfo, n_dec, note = process_one(raw)
            l1path = f"{out_dir}/l1/{rel.replace('/', '_')}"
            l2path = f"{out_dir}/l2/{rel.replace('/', '_')}"
            with open(l1path, "wb") as f: f.write(l1)
            with open(l2path, "wb") as f: f.write(l2)
            has_fffd = b'\xef\xbf\xbd' in l2
            starts_ok = l2[:5] == b"<?xml"
            status = "OK" if (starts_ok and not has_fffd) else "PARTIAL"
            if status == "OK": ok += 1
            else: partial += 1
            line = f"{status:8s} {rel:40s} {len(raw):6d}B  {note}"
            report.append(line)
            print(line)
            total += 1
    with open(f"{out_dir}/report.txt", "w", encoding="utf-8") as f:
        f.write(f"APK: {apk_path}\n")
        f.write(f"Total XML: {total}  OK: {ok}  PARTIAL: {partial}\n\n")
        f.write("\n".join(report))
    print(f"\n[+] Selesai. Output: {out_dir}/{{apk,l1,l2,report.txt}}")

if __name__ == "__main__":
    main()
