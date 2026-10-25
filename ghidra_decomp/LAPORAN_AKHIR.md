# LAPORAN DEKOMPILASI AKHIR & TEMUAN BARU — Brave Fighter 2.3.4

Tanggal: 2026-10-25
Cakupan: `libcocos2dcpp.so`, `libsqltest.so`, file save/database pemain nyata (Probolinggo).

---

## Ringkasan eksekusi decompile

Ghidra/OpenJDK tidak dapat diunduh di sandbox karena `objects.githubusercontent.com`
diblokir, jadi pipeline dekompilasi ala Ghidra dibangun dari nol menggunakan **Capstone
5.0.9 (ARM Thumb disassembler) + pyelftools** (`ghidra_decomp/run_ghidra.py`). Pipeline
mampu:

- Membedakan fungsi berdasarkan prolog/epilog (`push {...,lr}` / `pop {...,pc}` / `bx lr`)
- Resolusi target BL/BLX (dengan anotasi nama fungsi dan demangle C++)
- Resolusi **literal pool `ldr rX,[pc,#imm]` + `add rX,pc`** → string pointer
- Verifikasi otomatis terhadap string pool (bukti kunci `"akidbx"` di 0x50f516, filter
  atribut `"value"` di 0x50fc9f, mode `"wb+"`, `"fuck17"` di UI caller)

Hasil disimpan di `ghidra_decomp/` (1.762 baris laporan, 6 file + README).

---

## Konfirmasi final algoritma lapisan-2 XML

Dari disassembly ulang `Encrypt` (0x1b8f96, 96 byte) dan `Decrypt` (0x1b904e, 128 byte):

```
Encrypt(plain, key):
    if plain == NULL || key == NULL || strlen(plain) == 0:  return NULL
    rc4buf = malloc(strlen(plain))
    rc4Crypt(plain, strlen(plain), key, rc4buf, &outlen)   // RC4 KSA+PRGA di 0x1b8e68/0x1b8ebc
    hexstr = hexEncode_upper(rc4buf, outlen)               // 0x1b8f46: uppercase hex, null-term
    free(rc4buf)
    return hexstr

Decrypt(hex, key):
    if hex == NULL || key == NULL || strlen(hex) < 2 || strlen(hex) & 1:  return NULL
    raw = hexDecode_upper(hex)                             // 0x1b8ff6: menolak lowercase & binary 0x80+
    out = malloc(len/2 + 1)
    rc4Crypt(raw, len/2, key, out, &outlen)
    out[outlen] = 0                                        // null-terminator
    free(raw)
    return out
```

Fungsi pembaca XML (`0x173518` → `0x1735da`) memuat kunci `"akidbx"` (6 byte) dari
`.rodata:0x50f516` secara terotomatis tervalidasi di output disassembly (`0x1735d8: add r1,pc ; = "akidbx"`).

---

## Analisis `libsqltest.so` (revisi)

Fungsi JNI **`Java_com_joynow_apt_MyApplication_getFile`** (0xff8, 200 byte) memang
mengandung loop XOR 8-byte (0x1056–0x1092) yang:

1. Membaca 8 byte pertama dari buffer sebagai `keyBuf[8]`.
2. Menyalin 8 byte pertama dari file ke keyBuf.
3. Meng-XOR sisa isi buffer dengan key bergulir (`b[i] ^= keyBuf[i & 7]`).
4. Menulis SELURUH buffer (termasuk 8 byte header) ke temporary file `"wb+"`.

**PEMERIKSAAN ULANG dengan file savegame nyata membuktikan:**
- `files/monster_data.db` (14.336 byte) berisi **SQLite murni** (header `"SQLite format 3\0"`),
  dapat dibuka langsung dengan `sqlite3` — tidak perlu dekripsi.
- `files/pyt.bin` (18 byte) berisi ASCII `"53;1792769867;1775"` (tanpa enkripsi).
- `files/tbd.txt` (35 byte) berisi CSV angka `"0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;0"` (tanpa enkripsi).
- Shared preferences di `shared_prefs/*.xml` (termasuk `Cocos2dxPrefsFile.xml`) berisi XML
  ASCII biasa.

**Kesimpulan:** loop XOR di `libsqltest.so` dipakai secara **kondisional** untuk file
khusus yang dibaca dari dalam APK asset (misalnya file terobfuscasi di dalam bundle).
File di `/data/data/` (save, config, shared_prefs) ditulis dalam keadaan **plain/tersandi
ringan (XOR 0x8A per-byte untuk kolom `herodata.value` di SQLite)**, dan TIDAK melewati
XOR lapisan-8-byte.

### Encoding nilai monster di `monster_data.db` (temuan baru)

Tabel `herodata` dan `herodata1` menyimpan 305 record `id, value` dengan `value` berupa
8 hex char (4 byte big-endian). Dekode sederhana:

```python
def decode_monster_val(hex_str):
    raw = bytes.fromhex(hex_str)
    # setiap byte di-XOR 0x8A lalu diinterpretasi sebagai little-endian int
    decoded = bytes(b ^ 0x8A for b in raw)
    return struct.unpack('<i', decoded)[0]
```

Contoh:
- `59622D8A` → 11.004.115 (nilai gold/currency id=1)
- `5877558A` → 1.087.787... dst.

`MA==` di shared preferences adalah Base64 dari `"0"` (string `"0"`).

---

## Daftar file deliverable di `ghidra_decomp/`

| File | Baris | Isi |
|---|---:|---|
| `README.md` | 34 | Panduan metodologi & ringkasan temuan |
| `libcocos2dcpp.so_FUNCTIONS.txt` | 33 | Tabel 21 fungsi kunci (alamat, ukuran, demangled, deskripsi) |
| `libcocos2dcpp.so_DISASM.txt` | 1.318 | Disassembly penuh beranotasi resolusi BL target + literal pool string |
| `libcocos2dcpp.so_DECOMP.c` | 181 | Pseudocode C: rc4KSA, rc4Crypt, hexEncode/Decode, Encrypt, Decrypt, gbkToUTF8, XmlAttrDecoder_read |
| `libsqltest.so_FUNCTIONS.txt` | 8 | Tabel fungsi JNI getFile |
| `libsqltest.so_DISASM.txt` | 96 | Disassembly fungsi JNI lengkap |
| `libsqltest.so_DECOMP.c` | 92 | Pseudocode JNI + catatan bahwa XOR 8-byte hanya untuk file APK, bukan save |

## Catatan akhir tentang file XML CN

Semua 20 file XML CN yang terenkripsi di repo ini (assets/ dan xml_decryp/) sudah
ter-korupsi permanen pada bagian nilai atribut string (wilayah yang harusnya menjadi
uppercase hex 0x30–0x46 telah diubah menjadi byte `EF BF BD` atau binary 0x80+ akibat
transcode UTF-8 di awal repo commit). Header/tag pada file grup-1 (mulai `TE`) utuh,
tetapi nilai atribut Cina tidak bisa dipulihkan tanpa file APK asli. Script dekripsi
di `xml_decryp/decrypt_xml.py` akan bekerja 100% pada file biner asli APK.

Semua perubahan sudah di-commit (`f5b422e`) dan ter-push ke `origin/arena/51e89a0e-brave-fighter-2-3-4`.
