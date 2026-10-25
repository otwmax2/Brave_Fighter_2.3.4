#!/usr/bin/env python3
"""
extract_and_decrypt.py
Ekstrak asset XML dari APK Brave Fighter v2.3.4 ASLI, lalu dekripsi
lapisan-1 (XOR 9-byte rolling key "hzkjhstgh" fase-0 default) dan
lapisan-2 (RC4 key "akidbx" + hex uppercase + GBK→UTF-8) secara otomatis.

Cara pakai:
    python3 extract_and_decrypt.py <file.apk> [output_dir]

Output:
    <output_dir>/apk/         — ekstrak mentah assets/*.xml dari APK
    <output_dir>/l1/          — hasil lapisan-1 XOR (masih berisi hex-encoded RC4 pada atribut CN)
    <output_dir>/l2/          — hasil lapisan-2 RC4-decrypt (XML UTF-8 bersih)
    <output_dir>/report.txt   — ringkasan per file (ciphertext/ukuran/status)
"""
import sys, os, zipfile, struct, zlib

# =========================================================
#  KUNCI (dari hasil reverse engineering libcocos2dcpp.so)
# =========================================================
L1_KEY = b"hzkjhstgh"      # 9-byte XOR key lapisan-1 XML
RC4_KEY = b"akidbx"        # 6-byte RC4 key lapisan-2 atribut

# =========================================================
#  RC4 implementation
# =========================================================
def rc4_crypt(data: bytes, key: bytes) -> bytes:
    """Standard ARC4 / RC4 (KSA + PRGA), inisialisasi ulang tiap panggilan."""
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


# =========================================================
#  Lapisan-1: XOR rolling key dengan "fase" otomatis
#  Cari awal header yang cocok "<?xml" untuk memulihkan fase.
# =========================================================
def l1_xor(data: bytes, key: bytes, phase: int = 0) -> bytes:
    out = bytearray(len(data))
    klen = len(key)
    for i, b in enumerate(data):
        out[i] = b ^ key[(i + phase) % klen]
    return bytes(out)


def detect_l1_phase(data: bytes, key: bytes, magic: bytes = b"<?xml") -> int:
    """Coba semua fase (0..klen-1), pilih yang menghasilkan magic di awal."""
    for phase in range(len(key)):
        dec = l1_xor(data[:len(magic)], key, phase)
        if dec == magic:
            return phase
    return 0


# =========================================================
#  Lapisan-2: Dekripsi atribut XML
#  Atribut yang dienkripsi RC4-hex adalah atribut NON-numerik bernama
#  "content", "name", "des", "title" dll. Atribut "value" / "id" / "num"
#  yang isinya murni angka ditulis plain.
#
#  Kami menerapkan heuristik: mencari pola `attr="HEX..."` dimana HEX adalah
#  rangkaian karakter [0-9A-F] panjang genap yang muncul di dalam kutip ganda.
# =========================================================
import re

# Tag/atribut yang isinya dienkripsi RC4-hex (dari caller Encrypt/Decrypt di .text)
ENCRYPTED_ATTRS = {
    b"content", b"name", b"des", b"desc", b"title", b"text", b"msg",
    b"skill_name", b"skill_des", b"tips", b"info", b"talk", b"win", b"lose",
}
# Atribut yang isinya plain angka / id (tidak di-RC4)
PLAIN_ATTRS = {
    b"id", b"value", b"lv", b"num", b"type", b"price", b"atk", b"def", b"hp",
    b"mp", b"exp", b"lvup", b"icon", b"prob", b"time", b"pos", b"x", b"y",
    b"w", b"h", b"map", b"drop", b"count", b"level", b"quality", b"color",
    b"group", b"rate", b"star", b"cost", b"dmg", b"range", b"cd", b"buff",
    b"job", b"sex", b"eq", b"next", b"unlock", b"money", b"gold", b"gem",
}

# Regex untuk mencari atribut="nilai"
ATTR_RE = re.compile(rb'(\s+)([A-Za-z_][A-Za-z0-9_]*)\s*=\s*"([^"]*)"')
HEX_RE = re.compile(rb'^[0-9A-F]{2,}$')


def l2_decrypt_xml(xml_bytes: bytes) -> bytes:
    """Dekripsi atribut yang terenkripsi RC4-hex uppercase di dokumen XML."""
    def repl(m):
        ws, aname, aval = m.group(1), m.group(2), m.group(3)
        aname_l = aname.lower()
        # Skip atribut yang diketahui plain
        if aname_l in PLAIN_ATTRS:
            return m.group(0)
        # Jika nilai terdiri dari karakter 0-9A-F panjang genap minimal 2 → RC4 hex
        if HEX_RE.match(aval) and (len(aval) % 2 == 0):
            try:
                raw = bytes.fromhex(aval.decode('ascii'))
            except ValueError:
                return m.group(0)
            pt = rc4_crypt(raw, RC4_KEY)
            # Filter byte tak-terkontrol (pertahankan printable + GBK multibyte)
            try:
                # Coba decode sebagai GBK, fallback ke latin-1
                t = pt.decode('gbk', errors='replace')
                t = t.encode('utf-8', errors='replace')
            except Exception:
                t = pt
            # Escape tanda kutip ganda di dalam nilai
            t = t.replace(b'&', b'&amp;').replace(b'<', b'&lt;').replace(b'>', b'&gt;').replace(b'"', b'&quot;')
            return ws + aname + b'="' + t + b'"'
        return m.group(0)
    return ATTR_RE.sub(repl, xml_bytes)


# =========================================================
#  Pipeline utama
# =========================================================
def is_encrypted_xml(data: bytes) -> bool:
    """Deteksi file XML terenkripsi lapisan-1: 2 byte awal adalah 'TE' (ciri khas)."""
    return len(data) >= 2 and data[0:2] == b"TE"


def process_one(data: bytes) -> tuple:
    """Proses satu file XML, return (l1_bytes, l2_bytes, phase, n_attr_decrypted, note)."""
    if not is_encrypted_xml(data):
        return data, data, -1, 0, "PLAIN"
    phase = detect_l1_phase(data, L1_KEY)
    l1 = l1_xor(data, L1_KEY, phase)
    # Pada file dengan high_bytes=0 (data.xml, bossdrop.xml dll.) l1 sudah final (UTF-8)
    if b'<?xml' in l1[:30] and all(b < 0x80 for b in l1[:500]):
        return l1, l1, phase, 0, f"L1-OK phase={phase}"
    l2 = l2_decrypt_xml(l1)
    # Hitung jumlah atribut yang berhasil didekripsi
    return l1, l2, phase, 0, f"L1+L2 phase={phase}"


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
    total_l2 = 0
    total_plain = 0
    with zipfile.ZipFile(apk_path) as zf:
        xml_assets = [n for n in zf.namelist() if n.startswith("assets/") and n.endswith(".xml")]
        print(f"[+] APK: {apk_path}")
        print(f"[+] {len(xml_assets)} file XML di assets/")
        for name in sorted(xml_assets):
            raw = zf.read(name)
            base = os.path.basename(name)
            with open(f"{out_dir}/apk/{base}", "wb") as f: f.write(raw)
            l1, l2, phase, n_dec, note = process_one(raw)
            with open(f"{out_dir}/l1/{base}", "wb") as f: f.write(l1)
            with open(f"{out_dir}/l2/{base}", "wb") as f: f.write(l2)
            ok = b"<?xml" in l2[:30]
            status = "OK" if ok else "PARTIAL"
            if "L1-OK" in note:
                total_plain += 1
            else:
                total_l2 += 1
            line = f"{status:8s} {base:30s} {len(raw):6d}B  phase={phase:2d}  {note}"
            report.append(line)
            print(line)

    with open(f"{out_dir}/report.txt", "w", encoding="utf-8") as f:
        f.write(f"APK: {apk_path}\n")
        f.write(f"Total XML: {len(report)}  plain-ascii: {total_plain}  RC4-decrypted: {total_l2}\n\n")
        f.write("\n".join(report))
    print(f"\n[+] Selesai. Output: {out_dir}/{{apk,l1,l2,report.txt}}")

if __name__ == "__main__":
    main()
