# LAPORAN DECODE TOTAL 100% — Brave Fighter v2.3.4

Tanggal: 2026-10-25
Sumber APK asli: `Brave_Fighter.apk` (27.548.868 bytes, package `com.joynow.monster.gp`, v2.3.4, versionCode=234)

## Ringkasan status decode

| # | Kategori file | Jumlah | Status |
|---|---|---:|---|
| 1 | **assets/*.xml** (data game CN) | 21 | ✅ Sudah didekripsi → `assets_decrypted/` (XOR 9-byte + RC4 key `akidbx` + GBK→UTF-8) |
| 2 | **assets/english/*.xml** (versi EN) | 15 | ✅ Sudah didekripsi → `assets_decrypted/english_*` |
| 3 | **assets/english/name.xml, normalToSkeleton.xml** | 2 | ✅ Plain UTF-8 (tidak dienkripsi) |
| 4 | **assets/english/activecode, bossdrop, data, reg, roadblock, wujinstate** | 6 | ✅ Sama dengan versi CN (plain ASCII/hanya XOR lapisan-1) |
| 5 | **assets/*.bin** (388 file) | 388 | ✅ Cocos2d binary format (383 anim/addi/map/header `00 01`), 5 dialog/cutscene (ctext/cinema/str) → diekstrak ke `apk_decoded/bin_unknown/*.txt` (254+260 string dialog CN+EN) |
| 6 | **assets/*.json** (UI layout, ad config) | 154 | ✅ Plain UTF-8 JSON, tersimpan di `apk_decoded/json/` (pretty-print) |
| 7 | **assets/*.plist** (particle config) | 8 | ✅ XML UTF-8 (6 biasa + 2 dengan BOM), tersimpan di `apk_decoded/plist/` |
| 8 | **assets/*.png, *.jpg** | 2267 | ⏩ Gambar binary (tidak perlu decode, siap dibuka image viewer) |
| 9 | **assets/*.ogg** (soundtrack/SFX) | 48 | ⏩ Audio Vorbis (siap diputar) |
| 10 | **AndroidManifest.xml** (binary) | 1 | ✅ Didekode ke teks di `apk_decoded/AndroidManifest.xml` |
| 11 | **res/*.xml** (layout/anim/drawable/menu Android) | 151 | ✅ Didekode ke XML teks di `apk_decoded/res/` (12 subfolder: anim, color, drawable, layout, menu, values, xml, dll.) |
| 12 | **resources.arsc** (resource table) | 1 | ✅ Publik ID listing di `apk_decoded/resources_public.xml`, string resources di `apk_decoded/res_values_strings.xml` |
| 13 | **classes.dex** (Java bytecode) | 8.262.412 B | ✅ Sudah di-decompile ke smali di `classes.dex/smali/` (sudah ada dari commit awal repo; verifikasi hash sama dengan APK asli: ✅ MD5 cocok) |
| 14 | **classes2.dex** (Java bytecode tambahan) | 1.700.452 B | ✅ Analisis struktur: 1.819 class, ringkasan di `apk_decoded/classes2_summary.txt` (com/ikul/comscore/InMobi/UnityAds SDK iklan) |
| 15 | **lib/armeabi/libcocos2dcpp.so** | 6.183.816 B | ✅ Reverse engineering lengkap: RC4, XOR lapisan-1, gbkToUTF8, semua fungsi kritis di `ghidra_decomp/` (MD5 sama dengan APK) |
| 16 | **lib/armeabi/libsqltest.so** | 37.888 B | ✅ Decompile di `ghidra_decomp/` (MD5 sama dengan APK) |
| 17 | **META-INF/\*** (tanda tangan APK) | 4 | ⏩ File tanda tangan (CERT.RSA/SF/MANIFEST.MF) — bukan code/data |
| 18 | **build-data.properties, jsr305_annotations/** | 2 | ⏩ File metadata Google/annotations |
| 19 | **savegame pemain (Probolinggo)** | — | ✅ SQLite `monster_data.db` (305 record, XOR 0x8A per-byte) + `Cocos2dxPrefsFile.xml` (22 key `fuck1..fuck24`) sudah dianalisis di `savegame_data/` |
| **TOTAL** | | **3072 entries** | **✅ 100% selesai (semua yang dapat didekode sudah didekode; binary asset gambar/audio tidak butuh decoding)** |

## Algoritma lapisan-1 (revisi final)

Setelah APK asli tersedia, ditemukan **3 variasi XOR lapisan-1** yang digunakan untuk aset XML:

| Var | Kunci | Fase | Prefix | File |
|---|---|---|---|---|
| A | `hzkjhstgh` | 0 | tidak ada | Mayoritas (title, msg, shop, items, task, BattleArea, monster, monstergroup, serta semua english/) |
| B | `kmshtatsk` | 0 | tidak ada | EnemyGroup.xml |
| C | `hzkjhstgh` | 3 | 3 byte `87 C1 D4` | equip.xml, skill.xml, drop.xml, achievement.xml, gamelevel.xml |

Deteksi dilakukan otomatis oleh `decrypt/extract_and_decrypt.py` dengan brute-force (2 kunci) × (9 fase) × (0..4 byte prefix) yang mencari magic `<?xml` pada 5 byte awal.

## Lapisan-2 RC4

- Kunci: `"akidbx"` (6 byte)
- Diberlakukan hanya pada atribut string (content, name, des, describ, title, text, tips, musicname)
- Atribut numerik (id, value, hp, damage, price, quality, cgindex0/1, dropindex0-4, random0-4, getgold, opengold, battleValue, movespeed, attackDelt, uplevelgold, dropexp, dropgold, attackrange, getpercent, getlevel, hitsound, hiteffectid, attacksound, texName, Height, Width, defaultscale) di-skip agar tidak salah-decode.

## Credensial yang terungkap

- **Google Play Billing public key** (RSA 2048): di `.rodata` libcocos2dcpp.so (MIIBIjANBgkqhki…),
- **Facebook App ID**: `223699000400` (dari `res_values_strings.xml`),
- **25 kode redeem / gift code**: `77F574bB`, `t42nyp0F`, `b5gJ3HS2`, `H1Owjk0k`, `1O2be00n`, dll. (dari `activecode.xml`),
- **254 kalimat dialog cutscene CN + 260 EN** di `ctext.bin` (format: `[uint16 BE count] [count × uint16 BE offset relatif] [teks null-terminated UTF-8/GBK]`).

## Cara membuktikan 100% selesai

Jalankan:
```bash
python3 decrypt/extract_and_decrypt.py Brave_Fighter.apk apk_decrypted
```
akan menghasilkan 43 file XML UTF-8 bersih tanpa ada byte `EF BF BD` (U+FFFD) satupun.

Jalankan:
```bash
ls apk_decoded/
```
untuk melihat semua hasil decode lain (res XML, JSON, plist, bin strings, class listing).

## Struktur folder deliverable

```
Brave_Fighter_2.3.4/
├── Brave_Fighter.apk                # APK asli (di-.gitignore karena 27 MB)
├── assets_decrypted/                # 43 XML game UTF-8 bersih (CN + EN)
│   ├── monster.xml, title.xml, msg.xml, shop.xml, equip.xml, ...
│   ├── english_monster.xml, english_title.xml, ...
│   └── README.md
├── apk_decoded/                     # Hasil decode Android-side
│   ├── AndroidManifest.xml          # Manifest plain
│   ├── res/                         # 151 XML resource didekode
│   ├── res_values_strings.xml       # String resource
│   ├── resources_public.xml         # Tabel ID resource
│   ├── json/                        # 154 JSON layout/ad/UI di-pretty-print
│   ├── plist/                       # 8 file partikel (sudah text XML)
│   ├── bin_unknown/                 # Hasil ekstraksi ctext/cinema/str (dialog cutscene)
│   ├── classes2_summary.txt         # 1.819 class di classes2.dex (SDK iklan)
│   └── all_classes.txt              # 10.065 class Java dari kedua DEX
├── ghidra_decomp/                   # Decompilasi native .so (1.881 baris)
├── decrypt/                         # Pipeline dekripsi otomatis
├── savegame_data/                   # Analisis save pemain (monster_data.db, shared_prefs)
└── INDEX_LAPORAN.md                 # Indeks seluruh laporan
```
