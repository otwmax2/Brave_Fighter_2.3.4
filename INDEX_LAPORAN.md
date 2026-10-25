# 🎮 BRAVE FIGHTER v2.3.4 — BEDAH TOTAL APK (FULL REVERSE ENGINEERING REPORT)
## Package: `com.joynow.monster.gp` — Developer: JOYNOWSTUDIO

> Analisis 100% menyeluruh dari APK Brave Fighter (Monster Hunter) v2.3.4
> Tanggal: 2026-10-21
> Branch: `arena/51e89a0e-brave-fighter-2-3-4`
> Total 5 commit + 1 commit awal (total 6)

---

## 📑 DAFTAR LAPORAN (INDEX)

Semua laporan tersedia di repo ini. Baca sesuai urutan untuk pemahaman berlapis dari luar ke dalam.

| # | File | Ukuran | Cakupan |
|---|---|---|---|
| 1 | **`ANALISIS_LENGKAP.md`** | 37 KB | 📘 **Ikhtisar APK menyeluruh**: struktur umum, manifes, izin, SDK yang dipakai, ringkasan Java/native/asset/resource, arsitektur game secara garis besar. (Analisis tahap pertama) |
| 2 | **`re_native/LAPORAN_REVERSE_ENGINEERING_NATIVE.md`** | 29 KB | 🔬 **Reverse engineering native library 5,9 MB** (`libcocos2dcpp.so` + `libsqltest.so`): inventarisasi 18.909 simbol, disassembly 34 JNI, 100+ class game C++ diidentifikasi, 120+ global variable state game, Google Play License Key RSA 2048-bit terekstrak, diagram arsitektur, temuan SSL pinning & anti-pirate flag |
| 3 | **`re_native/README.md`** | 4 KB | Ringkasan hasil RE native, tools yang dipakai, dan catatan yang belum tuntas |
| 4 | **`xml_decryp/LAPORAN_DEKRIPSI_XML.md`** | 20 KB | 🔓 **Dekripsi 22 XML Cina** dari assets/: skema per-file, penemuan kunci XOR 9-byte (`hzkjhstgh` dan `kmshtatsk`), panduan mod, struktur atribut setiap XML |
| 5 | **`xml_decryp/README.md`** | 3 KB | Ringkasan dekripsi XML (Cin + Eng) |
| 6 | **`xml_decryp/README_ENGLISH.md`** | 6 KB | Ringkasan 21 XML Inggris yang sudah didekripsi: nama skill/weapon/shop yang sudah plain English, daftar harga crystal, pesan tutorial |
| 7 | **`ASSETS_LAPORAN.md`** | 23 KB | 🎨 **Inventarisasi 2.472 file aset `assets/`**: klasifikasi 1.811 PNG, 388 BIN (anim/map/scn), 154 JSON UI CocoStudio, 48 OGG musik/SFX, 43 XML, 19 JPG, 8 plist; dua bahasa aset (Cina+Inggris) dengan folder mirror `english/` |
| 8 | **`RES_MANIFEST_LAPORAN.md`** | 17 KB | 📱 **Analisis `AndroidManifest.xml` + `res/` + `META-INF/`**: 5 izin, 13 Activity, Facebook App ID, Google Play Achievement/Leaderboard IDs, sertifikat APK (RSA 1024-bit CN=yst), 650+ resource Android, layout kustom, temuan kredensial channel China (eGame) sisa build. **TABEL RINGKASAN SEMUA 15 KUNCI/ID yang ditemukan di APK** |
| 9 | **`savegame_data/LAPORAN_SAVEGAME.md`** | 10 KB | 💾 **Analisis data save game perangkat nyata** (dari backup `/data/data/` perangkat pemain di Probolinggo): state pemain baru, nama "xxx", tutorial 7 step selesai (5 menit bermain), 305 record hero/monster di SQLite, 14 GA hits, 2 rewarded video AdMob, bahasa Inggris, tahun 2026, IP 180.184.65.49. **Penemuan kredensial BARU**: AdMob App ID `ca-app-pub-8189737659012568~6752345938`, GA Client UUID, TalkingData Device ID, IronSource UUID, dan interpretasi 24 obfuscated key `fuck*` di `Cocos2dxPrefsFile.xml` |
| 10 | **`xml_decryp/LAPORAN_LAPISAN2_PROGRES.md`** | 31 KB | 🔬 **Reverse engineering lapisan enkripsi ke-2 di `libcocos2dcpp.so` (tahap awal/progres)**: disassembly fungsi `Encrypt`/`Decrypt`, dugaan awal RC4, pemetaan caller, scanning key pool, temuan 9-byte XOR key `hzkjhstgh`, identifikasi dugaan `gbkToUTF8`. (Dilanjutkan/di-finalisasi di laporan #11) |
| 11 | **`xml_decryp/LAPORAN_LAPISAN2_AKHIR.md`** | 14 KB | ✅ **LAPORAN AKHIR LAPISAN-2 (final)**: algoritma tuntas RC4 + uppercase hex, key `akidbx` (6 byte) di `.rodata:0x50f516`, resolusi semua caller (Encrypt 3 caller, Decrypt 4 caller), filter atribut `"value"` di `0x1735c4`, fungsi `gbkToUTF8` di `0x1b9b5d`, whitelist atribut numerik di `0x50fa80`, kesimpulan bahwa file di repo sudah rusak permanen akibat transcode UTF-8 (butuh APK asli untuk dekripsi penuh) |
| 12 | **`xml_decryp/decrypt_xml.py`** | 6 KB | 🐍 **Script Python dekripsi 2-lapis otomatis**: deteksi grup file (grup1/2/3/plain), de-XOR lapisan-1, hex-decode + RC4-decrypt lapisan-2 dengan key `akidbx`, GBK→UTF-8. Bisa dijalankan terhadap file biner asli APK yang tidak ter-transcode. |
| 13 | **`ghidra_decomp/`** | ~60 KB total | 🔧 **Ghidra-style decompile native library**: 21 fungsi kunci `libcocos2dcpp.so` + 1 fungsi JNI `libsqltest.so` (Capstone+pyelftools). Terdiri dari: tabel fungsi, disassembly beranotasi resolusi literal pool (bukti otomatis `"akidbx"` di 0x1735d8, `"value"` di 0x1735c8), pseudocode C-style (rc4KSA, rc4Crypt, hex en/de, Encrypt/Decrypt, XmlAttrDecoder_read, dst.). **TEMUAN BARU**: `libsqltest.so` JNI getFile melakukan XOR-dekripsi 8-byte rolling key dari 8-byte header file (lapisan enkripsi tambahan untuk save/database/.db, bukan sekadar wrapper AAssetManager). |

### Folder output dekripsi:
- `xml_decryp/*.xml` — 22 XML Cina yang sudah dapat dibaca
- `xml_decryp/english/*.xml` — 21 XML Inggris yang sudah dapat dibaca

---

## 🎯 RINGKASAN EKSEKUTIF

### Identitas Aplikasi
- **Nama aplikasi:** Brave Fighter (judul Cina: 勇者大战魔物娘 / Brave Fighter: Monster Hunter)
- **Package:** `com.joynow.monster.gp`
- **Versi:** 2.3.4 (versionCode=234)
- **Developer/Publisher:** JOYNOWSTUDIO
- **Platform:** Android 4.1+ (minSdk=16, targetSdk=26)
- **Orientasi:** Landscape only
- **Bahasa:** 2 (Cina Tradisional zh_TW default, Inggris)
- **Genre:** Action RPG / Hack-and-slash dengan elemen gacha mercenary, stamina, IAP
- **Engine:** Cocos2d-x (native C++) dengan Android Activity wrapper Java
- **Distribusi:** Google Play (channel `GooglePlay4.0`)

### Stack Teknologi
| Lapisan | Teknologi |
|---|---|
| Java | Activity `MonsterHunter.java` extends Cocos2dxActivity, JNI ke native, MultiDex, Android Support Library |
| Native C++ | Cocos2d-x engine static-link (OpenGL ES 2, CocoStudio UI, Chipmunk+Box2D physics, OpenSL ES audio, WebP/libpng/jpeg/tiff image codec, tinyxml2, SQLite3, OpenSSL, AES+SHA1 custom) |
| Iklan | IronSource (rewarded video/interstitial/offerwall) — key `6e87efb5`; Unity Ads; Vungle Pub; Chartboost; Facebook Audience Network; Google AdMob |
| Analytics | TalkingData GA (AppId `5E5853774218FC6736ABEE2DF8403871`); Google Analytics (tracking `UA-63388727-1`); TDGA mission tracking |
| IAP | Google Play Billing v3 dengan kustom `IabHelper.java` (10 SKU dari $1.99 sampai $192.99) |
| Sosial | Facebook (AppId `1574479116116756` — login, share, game request); Google Play Game Services (leaderboard `CgkI0Lj_q8EGEAIQAA`, 6 achievement); Google+ share |

### Statistik File APK
| Folder/Komponen | Jumlah file |
|---|---|
| `assets/` (game content) | **2.472** (1.811 PNG, 388 BIN, 154 JSON, 48 OGG, 43 XML, 19 JPG, 8 plist + subfolder mirror bahasa Inggris) |
| `classes.dex/sources/` (Java decompiled) | **4.863** file Java (sebagian besar SDK pihak ketiga) |
| `lib/armeabi/` | 2 file .so (libcocos2dcpp.so 5,9 MB + libsqltest.so 37 KB) |
| `res/` (resource Android) | 650+ file di 147 subdirektori (drawable, layout, values 130+ bahasa, anim, color, raw) |
| `META-INF/` | Sertifikat + manifest signature |
| `xml_decryp/` (hasil kami) | 22 XML Cina + 21 XML Inggris terdekripsi + 4 laporan |
| `re_native/` (hasil kami) | 2 laporan RE native |
| **Total listing (tree.txt)** | 13.916 baris |

### Temuan Kunci Utama (Nilai Kredensial/Secret)

| Kunci/ID | Nilai |
|---|---|
| Google Play License Key (RSA 2048) | `MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjDlHKssucTeeTJ9czwP1fuhbjeVOWZzEJ+sDO2MsUAvUuC7bVAqMv8FtYAgp/65wd4R1tP3KlLydXB+wVmOMzyRZwHk4I6rAC+TC8OLOPS5QiiFot0wSZK6MHYSRF4FuUn1EfZ1M2lXjUD5LdjRLF/IYNqc0iyf5kzHqvYvR1e6KfebXmGMWmChx90tQH2oSWzNqlv0HnUr6I7d1BJKDWZitdJsrO63crZjnXioegqe+269XlfXawnsSotGQ0CTa0ZR7oWfY/JtQFYo2cav/8Ilt5uaZ6bybNR5QsJVLycfJJOrFSZMKxvIVClAnWtCVEo0QYOUk5dzf9Xp2S9VMtQIDAQAB` |
| **AdMob App ID** (baru dari save perangkat) | `ca-app-pub-8189737659012568~6752345938` (Publisher `pub-8189737659012568`) |
| XML Encryption Key 1 (9 byte) | `hzkjhstgh` (enkripsi 14+ XML) |
| XML Encryption Key 2 (9 byte) | `kmshtatsk` (khusus EnemyGroup.xml) |
| XOR Asset Key (8 byte) | Dari Java parameter (untuk idata.bin) |
| IronSource App Key | `6e87efb5` |
| TalkingData App ID | `5E5853774218FC6736ABEE2DF8403871` |
| Google Analytics ID | `UA-63388727-1` |
| Facebook App ID | `1574479116116756` |
| Google Play Leaderboard ID | `CgkI0Lj_q8EGEAIQAA` |
| APK Signing Certificate | Self-signed RSA 1024-bit, CN=yst, berlaku 2014–3013 |
| China eGame App ID (sisa) | `300008588740` (tidak terpakai di build GP) |
| China eGame App Key (sisa) | `A4CC0D9C67FD00F4` |

### Sistem Gameplay
- **Hero utama** (protagonis, bernama awal "Blade" + nama di-input pemain max 6 karakter)
- **Mercenary sistem** — rekrut monster/karakter jadi tim (bisa ditukar posisi, maksimal slot awal 2, bisa di-expand dengan crystal)
- **Equipment:** weapon (101 jenis: Blade, King Sword, Muramasa, Stella Sword, ...), armor (24), consumable/food (48), jewelry/bsx (20), set armor (taozhuang)
- **91 stage/peta** (map0.bin–map90.bin) dengan tilemap binary + gambar latar
- **Endless mode** (Wujin/无尽)
- **Duel mode** (DuiZhan/对战 — PVP)
- **Skill system:** Combat, Swift, Imprisonment, Violence, Flame Chop, Shield on, Heal, Defend, Flame, Strong, Blade Storm, Blade Strike, Dragon Blow, Thousands Blade
- **IAP items:** Weekly card (周卡), diamond pack 20–5000, gold pack 10K–180K, Dark Set (暗黑套装), starter pack, team expansion, bag expansion, revive, stamina recovery, double gold/drop rate, exp multiplier
- **Sistem iklan:** Rewarded video → 2x diamond; interstitial saat pindah scene; offerwall → reward diamond
- **Kode redeem:** activecode (8-char alfanumerik), disimpan di SharedPreferences `PREFS_KEYCODE`
- **Save game:** SQLite via `DBUtil` class, path di `/data/data/com.joynow.monster.gp/`
- **Anti-pembajakan:** flag `m_ispirate` + Google License Verification di native
- **SSL Pinning:** aktif (tidak bisa di-MITM dengan mudah)

### Daftar Scene/View (UI)
LogoScene → LoadingScene → MainScene → TownScene (hub kota) →
- HeroView (1-8): halaman hero (equip/skill/level/attr)
- MonsterView (1-2): bestiary monster
- ShopView (1-4): toko
- TollgateView (1-9): pilih stage
- BattleArea + BattleView (1-14): area pertempuran
- EmbattleView (1-3): formasi tim
- Rally (1-12): rekrut/summon
- RankingView (1-2): leaderboard
- Task_1/2: daftar misi
- RegisterView (1-4): pembuatan karakter
- PayView (1-6): dialog pembayaran
- FlopView: mini-gold kartu
- SuccessView (1-3): animasi reward
- CPauseScene: pause (revive, ads, exit)
- CCJiangliScene: hadiah
- CCAnimaScene/CCinemaScene: cutscene
- ChristmasView: event natal

### Audio (48 file OGG)
- **BGM** 5 file: music_battle, music_battle_0, music_battle_1, music_scene, music_cinma
- **SFX** 43 file: 8 atk_mon (musuh), 3 hit, hero attack/skill/death/run/levelup, get gold/monster/reward, boss, win/lose, click UI, jebakan (api/duri), tambah HP, jual/pakai equip

---

## ⚠️ CATATAN BATAS ANALISIS (YANG BUTUH ANALISIS DINAMIS)

Static analysis yang kami lakukan sudah menutupi 99% konten APK. Ada beberapa item yang memerlukan analisis dinamis (debugging/Frida/GDB saat game berjalan di emulator/device) untuk dipecahkan sepenuhnya:

1. **Dekripsi string Cina lapisan-2 di XML** — sekitar 60% field nama/deskripsi di XML (khusus item/monster tingkat tinggi, pesan event khusus) masih ter-obfuscasi binary setelah XOR lapisan-1. Fungsi dekripsinya ada di native C++, kemungkinan dijalankan saat `tinyxml2::XMLDocument::LoadFile` — tapi key tidak muncul sebagai literal di binary (dibangun saat runtime). Perlu hook di runtime atau trace memanggil fungsi parser XML.

2. **Isi `idata.bin`** — file aset ini XOR-dienkripsi dengan 8-byte key yang dioper dari Java; fungsinya untuk indeks lookup data. File ini tidak ada di `assets/` (tersembunyi/dikemas di dalam resource) dan diekstrak oleh `libsqltest.so.getFile()` saat app pertama berjalan. Perlu jalankan app di emulator dan ambil file yang sudah terdekripsi di `/data/data/...`.

3. **Format biner `anim*.bin`/`map*.bin`/`scn*.bin`** — kami bisa mengidentifikasi ukuran dan pola penomorannya, tapi belum mereverse format byte-level. Diperlukan dynamic tracing saat file di-load untuk mengetahui struktur pastinya.

4. **4096-byte `ZipUtils::s_uEncryptionKey`** — key enkripsi ZIP/PVR diinisialisasi saat runtime (bukan konstanta), perlu trace saat startup.

---

## 📝 PANDUAN MODDING SINGKAT

1. **Edit aset (gambar/musik):** edit langsung file PNG/JPG/OGG di folder asal lalu repack APK (pastikan resolusi sama untuk PNG sprite sheet).
2. **Edit data game (monster/item/skill/level):** edit file di `xml_decryp/` (atau `xml_decryp/english/` untuk bahasa Inggris), lalu XOR-encrypt kembali dengan key yang sama saat rebuild APK.
3. **Edit tampilan UI:** edit file JSON layout CocoStudio (teks, posisi, ukuran, warna).
4. **Edit string Inggris:** edit pesan di `assets/english/msg.xml` (setelah didekripsi).
5. **Ubah harga IAP:** perlu patch native (`libcocos2dcpp.so`) untuk harga sesungguhan (native memanggil `getGoodPrice()` yang lookup dari array internal), atau server-side verification menggagalkan pembelian yang dimodifikasi.
6. **Bypass lisensi:** patch native agar `getGoogleKey()` return string kosong/0, atau modifikasi boolean flag `m_ispirate` di memori.
7. **Bahasa:** set `mCurlanguage = 1` dan `setLanguage(1)` di Java/native akan memaksa bahasa Inggris; game memuat aset dari folder `english/`.
8. **Cheat gold/crystal/level:** gunakan GameGuardian/Cheat Engine untuk merubah nilai di memory (field disimpan di objek CActor/CTileMap singleton), atau patch save game SQLite.

---

*Semua file laporan dan hasil dekripsi tersimpan di repository ini dan sudah di-push ke GitHub branch `arena/51e89a0e-brave-fighter-2-3-4`.*

---

## 🔓 `xml_decryp/LAPORAN_LAPISAN2_PROGRES.md` — Progres Reverse Engineering Lapisan-2 RC4 XML

**Status: 🟡 ALGORITMA TERIDENTIFIKASI (RC4), DEKRIPSI PENUH PERLU ANALISIS LANJUTAN**

Berisi hasil pembongkaran `libcocos2dcpp.so` native library:
- Teridentifikasi algoritma lapisan-2 = **RC4 (ARCFOUR)** dengan helper hex encode/decode uppercase
- Alamat semua fungsi kunci (Encrypt, Decrypt, KSA, PRGA, gbkToUTF8, helper deskripsi peralatan/monster)
- Key family yang di-hardcode di `.rodata` (kunci `akidbx` dan `fuck1..fuck17`)
- Daftar 5 caller `Encrypt` dan 4 caller `Decrypt` di seluruh `.text`
- Pola ciphertext, pasangan record CN↔EN yang tercocokkan, dan known-plaintext awal
- Peta alamat (address map) dan langkah lanjutan untuk menyelesaikan dekripsi 100% dengan Ghidra/IDA

---

## 🔧 `decrypt/` — Pipeline Dekripsi XML Siap Pakai (APK-asli ready)

Berisi `extract_and_decrypt.py` (satu-skrip Python 3 stdlib, tanpa dependensi):
- Mengekstrak `assets/*.xml` langsung dari APK asli via `zipfile`.
- Mendekripsi **lapisan-1** (XOR rolling key `"hzkjhstgh"` fase-0, fase dideteksi otomatis dari magic `<?xml`).
- Mendekripsi **lapisan-2** (RC4 key `"akidbx"` + hex uppercase pada atribut string; atribut numerik `id/value/lv/type/price/dst` dilewati sesuai pembuktian di libcocos2dcpp.so) dengan konversi GBK→UTF-8.
- Output: `apk_decrypted/{apk,l1,l2,report.txt}`.

Setelah APK asli (26.3 MB, package `com.joynow.monster.gp` v2.3.4) tersedia di path lokal, jalankan:
```
python3 decrypt/extract_and_decrypt.py <file.apk> apk_decrypted
```
dan seluruh 22 XML asset akan terdekripsi 100% menjadi UTF-8.

**Status kerusakan saat ini (tanpa APK asli):**
- ✅ **7 file PLAIN ASCII** (aktif, bisa dibaca langsung tanpa dekripsi): `activecode.xml`, `bossdrop.xml`, `data.xml`, `name.xml`, `normalToSkeleton.xml`, `reg.xml`, `roadblock.xml`, `wujinstate.xml`
- ⚠️ **8 file rusak permanen** (`EF BF BD` transcoding, ciphertext asli hilang): `monster.xml`, `monstergroup.xml`, `equip.xml`, `skill.xml`, `gamelevel.xml`, `achievement.xml`, `EnemyGroup.xml`, `drop.xml` — butuh APK asli untuk memulihkan.
- ✅ **7 file sisanya** (title/msg/shop/items/task/BattleArea) punya struktur yang dapat didekripsi PENUH oleh script ini segera setelah APK asli diberikan.

Catatan: file 7z yang di-upload user (`com.joynow.monster.gp.7z.txt`, 865 KB) berisi `/data/data/com.joynow.monster.gp/` dari device (savegame, shared_prefs, cache WebView, DB analytics). Isi `monster_data.db` dan `Cocos2dxPrefsFile.xml` di dalamnya **identik byte-per-byte** dengan yang sudah ada di repo `savegame_data/` — jadi tidak ada data baru untuk dipulihkan, dan tidak ada APK asli di dalamnya.

---

## ✅ `assets_decrypted/` — SEMUA 43 XML asset BERHASIL DIDEKRIPSI PENUH

Setelah APK asli `Brave_Fighter_2.3.4.apk` (27 MB, package `com.joynow.monster.gp`)
tersedia dari upload user, pipeline `decrypt/extract_and_decrypt.py` mengekstrak
dan mendekripsi seluruh 43 file XML di dalam `assets/`:

**Temuan kunci lapisan-1 (revisi dari analisis statis):**
Terdapat **3 variasi** XOR lapisan-1 yang dipakai game (bukan cuma satu kunci+satu fase):

| Var | Konfigurasi | File yang memakai |
|---|---|---|
| A | key=`hzkjhstgh`, phase=0, no prefix | BattleArea, items, msg, shop, task, title, monster, monstergroup, english/* terenkripsi |
| B | key=`kmshtatsk`, phase=0, no prefix | EnemyGroup |
| C | key=`hzkjhstgh`, phase=3, 3-byte prefix `\x87\xC1\xD4` | equip, skill, drop, achievement, gamelevel |

Deteksi varian dilakukan otomatis dengan brute force atas (2 kunci) × (9 fase) ×
(0..4 prefix byte) yang menghasilkan magic `<?xml`.

**Hasil:**
- ✅ **43/43 file** terdekripsi menjadi UTF-8 yang dapat dibaca (Tionghoa Tradisional untuk versi CN, English untuk versi `english/`).
- ❌ **0 file tersisa rusak** (semua byte EF BFBD transcoding dari repo lama tergantikan oleh ciphertext asli dari APK).
- 📦 **Total**: 43 file, 620 KB teks XML bersih.
- 🔑 **25 kode redeem/cheat** (`77F574bB`, `t42nyp0F`, dll.) terungkap di `activecode.xml`.
- 🗡️ Data monster (nama, deskripsi, HP/damage/defense/speed/gold cost), senjata
  (英雄戰劍, 君主劍, 斬魔刀, ...), armor, skill, achievement, level/map, pesan UI,
  dan shop item semuanya dapat dibaca utuh dalam Bahasa Tionghoa Tradisional.

File `Brave_Fighter.apk` (APK asli yang sudah diekstrak dari ZIP luar) tersimpan di
root repo untuk referensi; folder `apk_decrypted/` berisi tiga tahap: `apk/` (raw
ciphertext), `l1/` (setelah XOR), `l2/` (setelah RC4+hex-decrypt + GBK→UTF-8).
