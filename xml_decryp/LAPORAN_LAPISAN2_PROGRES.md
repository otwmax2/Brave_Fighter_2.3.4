# 🔓 LAPORAN DEKRIPSI LAPISAN-2 (RC4 XML) — PROGRES SEMENTARA

> Tanggal analisis: 2026-10-23
> Target: 22 file XML di `xml_decryp/` + `english/`
> Status: **Algoritma berhasil diidentifikasi (RC4), 3 family key di-rodata teridentifikasi, dekripsi penuh memerlukan analisis lanjutan mapping kunci-per-atribut**

---

## 🎯 Ringkasan Temuan dari Reverse Engineering `libcocos2dcpp.so`

### 1. Algoritma: **RC4 (ARCFOUR) murni**

Dari pembongkaran fungsi di `lib/armeabi/libcocos2dcpp.so` (ARM Thumb-2):

| Fungsi | Alamat (Thumb) | Keterangan |
|---|---|---|
| `Encrypt(const char* str, const char* key)` | `0x1b8f97` | RC4 encrypt buffer, lalu **binary → uppercase HEX** |
| `Decrypt(const char* hex, const char* key)` | `0x1b904f` | **uppercase HEX → binary**, lalu RC4 decrypt |
| RC4 KSA (Key Scheduling) | `0x1b8e68` | Inisialisasi S-box 256 byte dengan kunci |
| RC4 PRGA (keystream + XOR) | `0x1b8ebc` | Generate keystream dan XOR-kan dengan data |
| Hex encode (biner → hex uppercase) | `0x1b8f46` | Dua karakter hex per byte (0-9, A-F) |
| Hex decode (hex uppercase → biner) | `0x1b8ff6` | Mengembalikan NULL jika hex invalid |
| `gbkToUTF8(const char*)` | `0x1b9b5d` | Konversi GBK → UTF-8 setelah dekripsi |
| `getWeaponDescrib(i,i,i,std::string&)` | `0x16d51d` | Helper menyusun deskripsi senjata |
| `getClothesDescrib(i,i,i,std::string&)` | `0x16d59d` | Helper menyusun deskripsi armor |
| `getShipingDescrib(i,i,i,std::string&)` | `0x16d625` | Helper menyusun deskripsi consumable |
| `getMonsterSkillDescrib(i,i,std::string&)` | `0x16d719` | Helper menyusun deskripsi skill monster |
| `AES::AES(unsigned char* key)` | `0x1b7231` | Class AES custom (hexToUChar/strToUChar/ascillToValue [sic]) |

> **Catatan:** Class `AES` di namespace `3AES` ada di dalam binary, namun **tidak dipakai untuk enkripsi XML** — dia hanya dipakai oleh fungsi utilitas lain (fungsi Encrypt/Decrypt yang menjadi entry point XML TIDAK memanggil `AES::Cipher`/`AES::InvCipher`). XML lapisan-2 murni RC4 + hex.

### 2. Key-key yang Terdapat di `.rodata` (0x50f4f0–0x50f560)

```
0x50f4f0: "size:%d"
0x50f4f8: "fuck1"
0x50f4fe: "fuck2"
0x50f504: "fuck3"
0x50f50a: "fuck4"
0x50f510: "fuck5"
0x50f516: "akidbx"
0x50f51d: "fuck6"
0x50f523: "fuck7"
0x50f529: "fuck10"
0x50f532: "fuck11"
0x50f53b: "fuck12"
0x50f544: "fuck13"
0x50f54d: "fuck14"
0x50f556: "fuck15"
0x50f55f: "fuck16"
0x50f568: "fuck17"
...
```

Dari 5 lokasi pemanggilan `Encrypt()` dan 4 lokasi pemanggilan `Decrypt()` yang ditemukan (scan BL thumb di seluruh .text), **semuanya memuat key dari literal pool yang berujung ke `"akidbx" (0x50f516)`.**

Namun demikian, uji dekripsi langsung dengan RC4 key `"akidbx"` pada ciphertext atribut `name="..."` id=11 (Pray, 15 byte yang PASTI bukan terpotong kutip) menghasilkan byte yang tidak ter-decode sebagai GBK yang valid. Dari pengamatan kode assembly, terlihat bahwa:

1. Argumen `r0` (string yang akan dienkripsi) bukan selalu atribut mentah dari XML — beberapa caller membuat string hasil penggabungan (dengan fungsi di 0x1b9bc8, yaitu `std::string` constructor yang dipakai berulang).
2. Ada helper di `0x1b9bc8` dan `0x1b9b94` (fungsi `gbkToUTF8`-related) yang tampaknya memproses hasil dekripsi.
3. String ASCII seperti `"%a%"` tampil APA ADANYA di ciphertext (contoh: `describ="%a%\x88\xd7..."` di record id=11), menunjukkan ada mekanisme enkripsi HANYA diterapkan pada rentang byte tertentu (bukan seluruh string).

### 3. Pengamatian Penting terhadap Ciphertext

- Byte ciphertext yang paling sering muncul: **0xd7 (9,9%)**, 0xd5 (9,4%), 0x87 (7,3%) — sangat khas pola XOR dengan keystream yang tak berimbang (RC4 dengan key pendek tertentu).
- Banyak pola 9-byte yang berulang di berbagai atribut/record:
  - `0x87 0xd7 0xc7 0x84 0xd5 0xd5 0x9c 0xcb 0xda`
  - `0x85 0xd7 0xce 0x9b 0xd8 0xd5 0x87 0xc5 0xd6`
  - `0x88 0xd7 0xd5 0x95 0xd4 0xd7 0x87 0xcc 0xc9`
- Pencocokan record CN ↔ EN berdasarkan `textid+costgold+attr+delt+value+range` berhasil untuk 2 record:
  - CN id=0 → EN id=4 (`textid=sk_6.png`, Flame chop, `"Cause %a%damage"`)
  - CN id=11 → EN id=11 (`textid=sk_13.png`, Pray, `"%a% offset abnormal state"`)
- Nama CN `id=11` (Pray) panjang teramati 15 byte ciphertext dengan pola berulang 5×3-byte (`87c5d6, 85d7ce, 9bd8d5, 87c5d6, 85d7ce`).

### 4. Status File

- File di `/tmp/xml_orig/` berisi 20 XML CN hasil dekripsi lapisan-1 yang BERSIH (diambil dari commit `4f793b3`) + 8 XML EN di `/tmp/xml_orig/english/` dari commit `18c5b6c`.
- File yang saat ini ada di workspace `xml_decryp/` terindikasi sebagian mengalami penulisan ulang yang merusak (menambahkan byte U+FFFD/EF BF BD pada beberapa file seperti `title.xml`, `task.xml` akibat pembacaan sebagai text UTF-8). Rekomendasi: **restore dari git sebelum melanjutkan**.

---

## 🛠️ Langkah Selanjutnya untuk Menyelesaikan Dekripsi 100%

1. **Lacak register r0 (string input) pada tiap caller Encrypt/Decrypt** — perlu disassembly mundur 20–50 instruksi dari setiap BL site untuk melihat string kunci dan format data yang sesungguhnya (apakah key yang dipakai adalah `"akidbx"` langsung, atau `"fuck5"`/`"fuckN"` yang berdekatan di rodata, atau key yang diturunkan dari nama atribut).
2. **Cari caller Decrypt yang mendedikasikan kepada pembacaan XML** — 4 site di (`0x16ccb2`, `0x1735da`, `0x1a7ea2`, `0x1a8052`). Site `0x1a7ea2` dan `0x1a8052` tampaknya berada di jalur `getWeaponDescrib`/deskripsi peralatan, sedangkan `0x1735da` tampak berada di pembaca XML dokumen (dekat referensi `tinyxml2::XMLAttribute`).
3. **Verifikasi dugaan selective-encryption**: apakah byte ASCII (< 0x80) di dalam nilai atribut benar-benar dilewati oleh proses enkripsi, atau ikut terenkripsi (yang berarti di posisi itu keystream RC4 kebetulan menghasilkan byte ASCII yang bisa dibaca).
4. **Verifikasi dugaan hex-encode**: enkripsi RC4 ke hex akan menghasilkan ciphertext uppercase 0-9A-F. Karena di xml_decryp byte yang tampil adalah 0x87, 0xd7, dll (bukan hex ASCII), perlu dipastikan apakah lapisan-2 adalah (i) RC4 yang outputnya di-XOR lagi dengan key lapisan-1, (ii) dekripsi lapisan-1 kita yang terlalu dini (XOR lapisan-1 harus didekripsi SETELAH hex-decode lapisan-2), atau (iii) file assets asli mengandung hex yang kemudian bercampur dengan biner saat XOR lapisan-1.

---

## 📚 Referensi Alamat untuk Pekerjaan Lanjutan

```
.text  : 0x0016aab8 – 0x004d60a8  (file offset == vaddr)
.rodata: 0x0050f498 – 0x005a3a7c
Encrypt : 0x1b8f97 (Thumb, 5 caller sites)
Decrypt : 0x1b904f (Thumb, 4 caller sites)
RC4 KSA : 0x1b8e68
RC4 PRGA: 0x1b8ebc
Key-strings pool: 0x50f4f0–0x50f580
Caller site Encrypt:
  - 0x16c8a8
  - 0x16c910
  - 0x16cc02
  - 0x172c22
  - 0x172cee
Caller site Decrypt:
  - 0x16ccb2
  - 0x1735da
  - 0x1a7ea2
  - 0x1a8052
```

Untuk melanjutkan reverse engineering, buka `lib/armeabi/libcocos2dcpp.so` di Ghidra/IDA dan navigasi ke alamat-alamat di atas. Fungsi `0x1735da` (dalam konteks pemuatan atribut XML) adalah kandidat terkuat untuk menemukan parameter key aktual yang dipakai bagi nilai `name`/`describ`/`title`/`msg`/`content`.
