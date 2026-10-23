#!/usr/bin/env python3
"""
decrypt_xml.py — Dekripsi 2-lapis file XML Brave Fighter v2.3.4

Algoritma (final hasil reverse engineering libcocos2dcpp.so):
  Lapisan 1 : XOR 9-byte key berulang di SELURUH file biner.
  Lapisan 2 : (khusus nilai atribut string name/describ/content/title/msg)
              uppercase hex decode  ->  RC4 decrypt dengan key "akidbx" (6 byte)  ->  GBK bytes.

Cara pakai:
    python3 decrypt_xml.py <file_xml_dari_APK> [-o output.xml]

File input HARUS berupa file BINER ASLI dari APK (bukan file di repo ini yang sudah
ter-transcode UTF-8). Output adalah XML dengan nilai atribut Cina yang sudah di-dekripsi
(dalam encoding UTF-8).

Author  : hasil reverse engineering Brave_Fighter_2.3.4 di Arena.ai
Tanggal : 2026-10-24
"""
import sys, os, re, argparse

# ========== KUNCI ==========
KEY1_HZK = b'hzkjhstgh'     # 9 byte — grup 1 dan 3
KEY1_KMS = b'kmshtatsk'     # 9 byte — grup 2 (EnemyGroup.xml)
KEY2     = b'akidbx'        # 6 byte — kunci RC4 lapisan-2

# Atribut yang TIDAK dienkripsi (numerik / referensi file / pengenal)
# (whitelist hasil string pool di 0x50fa80 + "value" yang diperiksa khusus)
PLAIN_ATTRS = {
    b'version', b'encoding', b'id',
    b'mindifficulty', b'maxdifficulty', b'maxWave', b'stateDelt', b'waveDelt',
    b'msgActionid', b'state', b'group', b'posrandom', b'difficulty',
    b'monster', b'num', b'postype', b'boss',
    b'playsound', b'attacksound', b'textid',
    b'costgold', b'attr', b'delt', b'value', b'range',
    b'minlevel', b'maxlevel', b'type', b'getgold', b'getexp', b'gethp',
    b'getcrystal', b'getlifecard', b'getexp', b'indexoffset',
    b'damage', b'hiteffectid', b'showsound', b'hitsound',
    b'srcId', b'changedId',
    # item1..item10, item1random..item10random
}
for i in range(1, 11):
    PLAIN_ATTRS.add(f'item{i}'.encode())
    PLAIN_ATTRS.add(f'item{i}random'.encode())

# Atribut yang DIENKRIPSI (string Cina)
ENCRYPTED_ATTRS = {b'name', b'describ', b'content', b'title', b'msg'}


# ========== Primitive kripto ==========
def xor_bytes(data: bytes, key: bytes, phase: int = 0) -> bytes:
    n = len(key)
    return bytes(b ^ key[(i + phase) % n] for i, b in enumerate(data))


def rc4(data: bytes, key: bytes) -> bytes:
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) & 0xff
        S[i], S[j] = S[j], S[i]
    i = j = 0
    out = bytearray()
    for b in data:
        i = (i + 1) & 0xff
        j = (j + S[i]) & 0xff
        S[i], S[j] = S[j], S[i]
        out.append(b ^ S[(S[i] + S[j]) & 0xff])
    return bytes(out)


_HEX = b'0123456789ABCDEF'

def hex_decode_upper(s: bytes):
    """Decode uppercase hex; return None if invalid."""
    if len(s) % 2 != 0:
        return None
    out = bytearray(len(s) // 2)
    for k in range(0, len(s), 2):
        hi, lo = s[k], s[k+1]
        def nib(c):
            if 0x30 <= c <= 0x39: return c - 0x30
            if 0x41 <= c <= 0x46: return c - 0x37
            return None
        h, l = nib(hi), nib(lo)
        if h is None or l is None:
            return None
        out[k//2] = (h << 4) | l
    return bytes(out)


def decrypt_attr_value(hex_ct: bytes):
    raw = hex_decode_upper(hex_ct.strip())
    if raw is None:
        return None
    gbk = rc4(raw, KEY2)
    try:
        return gbk.decode('gbk')
    except UnicodeDecodeError:
        return None  # biarkan sebagai hex jika gagal


# ========== Deteksi grup file ==========
def detect_group(data: bytes):
    """Tentukan (key, phase, prefix_drop, header_replace) berdasarkan 9 byte awal."""
    if data.startswith(b'<?xml'):
        return None, 0, 0, b''  # sudah plain
    # cek prefix 'T' 'E' (grup 1)
    if len(data) >= 9:
        first9 = data[:9]
        # Verifikasi dengan me-XOR dan memeriksa hasilnya '<?xml ver'
        pth = b'<?xml ver'
        test1 = bytes(first9[i] ^ KEY1_HZK[i] for i in range(9))
        if test1 == pth:
            return KEY1_HZK, 0, 0, b''
        # grup 2 'WR'
        test2 = bytes(first9[i] ^ KEY1_KMS[i] for i in range(9))
        if test2 == pth:
            return KEY1_KMS, 0, 0, b''
    # Cek apakah rusak (U+FFFD x3 di awal)
    if data[:3] == b'\xef\xbf\xbd':
        # asumsikan grup 3: buang 9 byte awal (27 byte EF BF BD), de-XOR dengan phase=3
        return KEY1_HZK, 3, 9, b'<?xml version="1.0" encoding="utf-8" ?>\r\n'
    # fallback: coba cocokkan dengan mencari '<?xml' setelah XOR
    for key, name in [(KEY1_HZK, 'hzk'), (KEY1_KMS, 'kms')]:
        for phase in range(9):
            t = xor_bytes(data[:100], key, phase)
            if b'<?xml' in t:
                return key, phase, 0, b''
    return None, 0, 0, b''


# ========== Dekripsi lapisan-1 ==========
def decrypt_level1(data: bytes) -> bytes:
    key, phase, drop, header = detect_group(data)
    if key is None:
        return data  # sudah plain
    body = xor_bytes(data[drop:], key, phase)
    return header + body


# ========== Dekripsi lapisan-2 (proses XML) ==========
_ATTR_RE = re.compile(rb'([a-zA-Z_][a-zA-Z0-9_]*)="([^"]*)"')

def decrypt_level2(xml_bytes: bytes) -> bytes:
    """Ganti nilai atribut terenkripsi dengan hasil Decrypt; return XML UTF-8."""
    out = bytearray()
    pos = 0
    for m in _ATTR_RE.finditer(xml_bytes):
        attr = m.group(1)
        val  = m.group(2)
        out.extend(xml_bytes[pos:m.start()])
        if attr in ENCRYPTED_ATTRS:
            dec = decrypt_attr_value(val)
            if dec is not None:
                out.extend(attr + b'="' + dec.encode('utf-8') + b'"')
            else:
                # Jika gagal (mis. file rusak), pertahankan nilai asli dengan komentar
                out.extend(attr + b'="__DEC_FAIL__')
                out.extend(val)
                out.extend(b'"')
        else:
            out.extend(m.group(0))
        pos = m.end()
    out.extend(xml_bytes[pos:])
    # tambahkan XML header encoding utf-8
    if b'encoding=' in out[:100]:
        out = out.replace(b'encoding="utf-8"', b'encoding="utf-8"', 1)
    else:
        out = out.replace(b"?>", b' encoding="utf-8"?>', 1)
    return bytes(out)


def main():
    ap = argparse.ArgumentParser(description='Dekripsi XML Brave Fighter 2.3.4 2-lapis')
    ap.add_argument('input', help='Path file XML biner asli dari APK')
    ap.add_argument('-o', '--output', help='Path output (stdout jika tdk ada)')
    args = ap.parse_args()

    with open(args.input, 'rb') as f:
        raw = f.read()

    lvl1 = decrypt_level1(raw)
    lvl2 = decrypt_level2(lvl1)

    if args.output:
        with open(args.output, 'wb') as f:
            f.write(lvl2)
        print(f'[OK] {args.input} -> {args.output}  ({len(raw)} -> {len(lvl2)} byte)')
    else:
        sys.stdout.buffer.write(lvl2)


if __name__ == '__main__':
    main()
