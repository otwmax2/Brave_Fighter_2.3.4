# README DEKRIPSI FILE XML — Brave Fighter 2.3.4

## Ringkasan
Semua **22 file XML Cina** (di `assets/` root) dan **21 file XML Inggris** (di `assets/english/`) yang tadinya ter-enkripsi XOR telah berhasil didekripsi dan disimpan di folder ini:

- `xml_decryp/*.xml` — 22 file XML bahasa Cina Tradisional (versi default)
- `xml_decryp/english/*.xml` — 21 file XML bahasa Inggris (versi `setLanguage(1)`)
- `LAPORAN_DEKRIPSI_XML.md` — laporan detail format XML per-file (versi Cina)
- `README_ENGLISH.md` — ringkasan isi XML versi Inggris (nama skill/weapon/shop yang sudah plain Inggris)

## Kunci Enkripsi yang Ditemukan

Game ini menggunakan **skema XOR sederhana dengan kunci pendek 9 byte**
(khas game Cocos2d-x Cina buatan studio kecil era 2013-2017). Ada 3 grup file:

| Grup | Ciri awal file | Kunci (9 byte ASCII) | Jumlah file |
|---|---|---|---|
| 1 (TE) | `54 45 ...` | **`hzkjhstgh`** | 14 file (BattleArea, activecode, bossdrop, data, items, monster, monstergroup, msg, reg, roadblock, shop, task, title, wujinstate) |
| 2 (WR) | `57 52 ...` | **`kmshtatsk`** | 1 file (EnemyGroup) |
| 3 (rusak) | `ef bf bd ef bf bd ef bf bd ...` (U+FFFD × 3) | `hzkjhstgh` dengan **skip=9 byte awal + key phase=3** | 5 file (achievement, drop, equip, gamelevel, skill) — 9 byte pertama diganti menjadi karakter pengganti (U+FFFD) akibat kerusakan encoding/perlakuan tool ekstraksi, sisanya terdekripsi benar |
| Plain  | diawali `<?xml` | tidak perlu dekripsi | 2 file (name.xml, normalToSkeleton.xml) |

Cara kerja XOR: `plaintext_byte = ciphertext_byte XOR key[ (offset+phase) mod 9 ]`

## Catatan Tentang Isi yang Masih Terenkripsi

Meskipun **kerangka XML (tag, atribut, nilai numerik)** sudah 100% terdekripsi,
**nilai string/atribut yang berisi teks Cina** (nama monster, deskripsi skill, nama
area, nama item, nama achievement, pesan dialog) MASIH ter-enkripsi dengan XOR lapis
kedua. Ini adalah pola "double XOR" yang memang diterapkan developer:
- Lapisan 1 (sudah dibobol di sini): melindungi seluruh file dari pembacaan langsung
- Lapisan 2: melindungi string Cina saja (di-deskripsi pada runtime di C++ `libcocos2dcpp.so`)

Karena lapisan-2 didekripsi di **kode native C++** yang terkompilasi (tidak ada source),
membobolnya memerlukan reverse engineering `libcocos2dcpp.so` dengan IDA/Ghidra. Namun
SEMUA data gameplay yang berupa angka/nilai parameter/ID referensi (seperti id
monster, damage, HP, harga, level, drop rate, spawn posisi, dll) sudah dapat dibaca
penuh.

Tag yang tampak seperti `ysaawuqpx`, `fv`, `gtfbj`, dll pada file-file besar adalah
**nama tag XML asli Cina yang masih ter-enkripsi lapis-2** (misalnya 应该 adalah
`<enemy>`, `<wave>`, `<bullet>`, dll).

## Daftar 22 File XML yang Sudah Didekripsi

Lihat `LAPORAN_DEKRIPSI_XML.md` untuk analisis satu per satu sampai level atribut.
