# GHIDRA-STYLE DECOMPILE — Brave Fighter 2.3.4 Native Libraries

> **Tanggal:** 2026-10-25
> **Metode:** Ghidra-style headless analysis menggunakan Capstone disassembler + pyelftools
>           (Ghidra/OpenJDK tidak bisa diunduh di sandbox karena pembatasan jaringan ke
>           `objects.githubusercontent.com`, jadi pipeline analisis dibuat dari nol
>           dengan resolusi string pool + annotasi target call yang akurat.)

## Isi folder

| File | Isi |
|---|---|
| `libcocos2dcpp.so_FUNCTIONS.txt` | Tabel 21 fungsi kunci (alamat, ukuran, demangled symbol, deskripsi) |
| `libcocos2dcpp.so_DISASM.txt` | Disassembly lengkap 21 fungsi kunci dengan anotasi target BL/BLX dan resolusi string pool (termasuk bukti literal `"akidbx"`, `"value"`, `"fuck17"` dll.) |
| `libcocos2dcpp.so_DECOMP.c` | Pseudocode C-style hasil dekompilasi: RC4 KSA/PRGA, hex en/decode, Encrypt/Decrypt, gbkToUTF8, XmlAttrDecoder_read, writer, getWeapon/Clothes/Shiping/MonsterSkillDescrib |
| `libsqltest.so_FUNCTIONS.txt` | Fungsi kunci `Java_com_joynow_apt_MyApplication_getFile` |
| `libsqltest.so_DISASM.txt` | Disassembly lengkap fungsi JNI dengan pool resolution `"wb+"` |
| `libsqltest.so_DECOMP.c` | Pseudocode fungsi JNI + TEMUAN BARU: XOR 8-byte key (di-ambil dari 8-byte header file sendiri) yang mendekripsi isi file binary (save/database/config). |

## Temuan baru di sesi ini

1. **Konfirmasi literal pool "akidbx"** di `0x1735d6` + `add r1, pc @ 0x1735d8` secara terotomatisasi di disassembly — kunci RC4 benar-benar `"akidbx"`.
2. **Filter atribut "value"** di `0x1735c4` dengan literal `0x50fc9f` dan `strcmp @ 0x169bb8` terverifikasi; semua atribut lain dengan string non-whitelist di-dekripsi.
3. **`libsqltest.so` ternyata melakukan dekripsi XOR 8-byte key** yang disematkan di 8-byte AWAL setiap file yang dibacanya (bukan sekadar membaca mentah). Key diambil dari header file sendiri, lalu body di-XOR berulang 8-byte. Output ditulis ke temporary file dengan mode `"wb+"` sebelum dikembalikan ke Java sebagai InputStream. Ini menjelaskan lapisan obfuscasi tambahan untuk file save/database (.db).
4. **String `"fuck17"` dst.** di pool `0x50f516` sekitarnya digunakan sebagai key debug/internal di bagian UI (caller `0x1a80d8` untuk `UIMsg_decrypt_b`), dan BUKAN dipakai untuk XML production. Key production XML tetap `"akidbx"`.

## Cara membaca pseudocode

Pseudocode di `*_DECOMP.c` ditulis mengikuti konvensi Ghidra:
- Nama fungsi C yang sesuai dengan alamat
- Alamat penting ditandai dalam komentar
- Pemanggilan external (`malloc`, `free`, `AAsset_*`, `strcmp`, `iconv`) dipertahankan
- Logika kontrol (if/for/while) disimpulkan dari branch `bne/beq/blt` di disassembly
- Tipe pointer ARM (`r0=return/this`, `r1=param2`, dst.) mengikuti AAPCS
