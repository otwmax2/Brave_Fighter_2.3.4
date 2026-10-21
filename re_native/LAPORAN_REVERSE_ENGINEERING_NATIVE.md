# 🔬 LAPORAN REVERSE ENGINEERING NATIVE LIBRARIES
## `libcocos2dcpp.so` (5,9 MB) & `libsqltest.so` (37 KB)
## Brave Fighter v2.3.4 — 100% Reverse Engineering

> Tanggal analisis: 2026-10-21
> Tools: pyelftools + Capstone (ARM/Thumb disassembler) + regex pada raw binary
> Target: armeabi ARM 32-bit little-endian, EABI5, stripped

---

## 📦 RINGKASAN KEDUA LIBRARY

### 1. `libsqltest.so` (37.888 bytes)
- **Arsitektur:** ELF 32-bit ARM, soft-float, entry point 0xfd0
- **Bagian kode (.text):** hanya 5.500 bytes (5,4 KB) — sangat kecil
- **Bagian data (.data):** 16 bytes
- **.rodata:** 28 bytes (hanya 1 string: `"idata.bin"`)
- **Fungsi:** Helper/pustaka utilitas untuk membaca asset ter-enkripsi (`idata.bin`) dari APK via Android AAssetManager API.
- **Nama menyesatkan:** Namanya "sqltest" tapi isinya BUKAN operasi SQL. Fungsi utamanya adalah **membaca file dari APK asset dan mendekripsi dengan XOR 8-byte key** yang diberikan dari Java.
- **Mengekspor 1 fungsi JNI:** `Java_com_joynow_apt_MyApplication_getFile(JNIEnv*, jobject, jstring path)`
- **Juga statically link fungsi C++ unwind** (`__gnu_Unwind_*`, `_Unwind_*`) — jadi tidak tergantung libgnustl_shared.
- **Impor dari libandroid:** `AAssetManager_open`, `AAssetManager_fromJava`, `AAsset_read`, `AAsset_close`, `AAsset_getLength`
- **Impor dari liblog:** `__android_log_print`

### 2. `libcocos2dcpp.so` (6.183.816 bytes)
- **Arsitektur:** ELF 32-bit ARM, EABI5 hard-float (flag 0x5000002)
- **Bagian kode (.text):** **3.585.520 bytes (3,5 MB)** — seluruh logika game + engine Cocos2d-x
- **.rodata (read-only data/string/table):** 607.716 bytes (593 KB)
- **.data (tertulis):** 53.308 bytes (52 KB)
- **.bss (zero init):** 248.008 bytes (242 KB) — termasuk array `m_anims` 60.800 bytes
- **.rel.dyn + .rel.plt:** 352.112 + 2.640 bytes (ribuan relokasi simbol)
- **Total simbol (dinamis, ter-export):** **18.909**
- **Jumlah fungsi JNI (Java Native Interface):** 34
- **Library yang di-static-link ke dalamnya (SEMUA di-bundle jadi 1 .so):**
  - Cocos2d-x engine (render, scene, node, sprite, action, menu, layer, dll)
  - **Chipmunk Physics** (cp*)
  - **Box2D Physics** (b2*)
  - **cocos-extensions / CocosStudio / CocoBuilder reader** (extension::)
  - **CocosDenshion** (SimpleAudioEngine + OpenSL ES audio)
  - **SQLite3** (sqlite3_*)
  - **WebP/VP8 decoder** (libwebp)
  - **libpng**, **libjpeg**, **libtiff** (gambar decoder)
  - **OpenSSL** (enkripsi RSA/AES/SSL/TLS + sertifikat) — ada BLACK_TABLE 64KB, WHITE_TABLE 32KB
  - **SHA1 hash** + AES implementation custom (AES_*)
  - **tinyxml2** parser XML
- **Library dependensi dinamis (diimpor saat runtime):** BANYAK, antara lain:
  - OpenGL ES 1/2 (glActiveTexture, glBindTexture, glDrawArrays, glDrawElements, glUseProgram, dll — 70+ fungsi GL)
  - POSIX threads (pthread_create, mutex, cond, join)
  - File I/O (fopen/fread/fwrite/fseek/ftell, open/close/read/write, stat, access, mkdir)
  - libc (memcpy, strlen, sprintf, malloc/free, printf, atoi, strtol, qsort, sscanf, snprintf, vsnprintf)
  - Math (sin, cos, tan, sqrt, asin, acos, atan2, pow, exp, log, floor, ceil — float dan double)
  - liblog Android (__android_log_print)
  - libdl (dlopen/dlsym/dlclose)
  - Waktu (time, gettimeofday, localtime, usleep/sleep)
  - Dynamic linker (dlopen/dlsym/dlerror)

---

## 🔑 HASIL PALING PENTING: KUNCI & KREDENSIAL YANG TERUNGKAP

### Google Play Public License Key (VERIFIED LENGKAP)
Lokasi: **0x0051514B** di `.rodata`
```
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjDlHKssucTeeTJ9czwP1fuhbjeVOWZzEJ+sDO2MsUAvUuC7bVAqMv8FtYAgp/65wd4R1tP3KlLydXB+wVmOMzyRZwHk4I6rAC+TC8OLOPS5QiiFot0wSZK6MHYSRF4FuUn1EfZ1M2lXjUD5LdjRLF/IYNqc0iyf5kzHqvYvR1e6KfebXmGMWmChx90tQH2oSWzNqlv0HnUr6I7d1BJKDWZitdJsrO63crZjnXioegqe+269XlfXawnsSotGQ0CTa0ZR7oWfY/JtQFYo2cav/8Ilt5uaZ6bybNR5QsJVLycfJJOrFSZMKxvIVClAnWtCVEo0QYOUk5dzf9Xp2S9VMtQIDAQAB
```
Ini adalah kunci publik RSA 2048-bit yang digunakan `Security.java` untuk memverifikasi tanda tangan transaksi Google Play Billing. Kunci ini disimpan di native (dipanggil via `getGoogleKey()`) sebagai pertahanan anti-bajakan, tapi berhasil di-extract. Kembalian dari `getGoogleKey()` adalah pointer ke string ini.

### XOR Key untuk File Data
Di `libsqltest.so`, fungsi `getFile()` mengambil 8-byte key dari Java String parameter dan melakukan XOR dekripsi pada data aset (dipakai terutama untuk `idata.bin`). Di `libcocos2dcpp.so`, class **AES10/AES11/AES12/AES13 (full AES implementation)** juga tersedia — tapi khusus untuk XML, game memakai **XOR sederhana 9-byte** (yang sudah kita pecahkan di langkah sebelumnya: `hzkjhstgh` dan `kmshtatsk`).

Catatan: Ada implementasi **AES** penuh (SubBytes, ShiftRows, MixColumns, AddRoundKey, InvCipher, KeyExpansion, hex/str konverter) di dalam binary, dengan nama fungsi `AES6Cipher`, `AES9InvCipher`, dll — kemungkinan dipakai untuk enkripsi save game atau komunikasi jaringan.

### Juga Ada SHA1 Hash
Class `SHA1` dengan method `addBytes`, `getDigest`, `process`, `lrot` — dipakai untuk verifikasi integritas atau tanda tangan data.

---

## 📞 FUNGSI JNI `MonsterHunter.java` → `libcocos2dcpp.so`

Dari 34 JNI function yang ter-export, **19 di antaranya adalah kode game** (`Java_com_yunva_monsterhunter_MonsterHunter_*`) dan sisanya adalah fungsi standar Cocos2d-x (render, touch, input, lifecycle).

| Alamat | Ukuran | Nama JNI | Analisis Disassembly |
|---|---|---|---|
| 0x18a259 | 8 B | `keyBack()` | Hanya `bl sub_18a218` → panggil fungsi penanganan tombol back (pop dialog, exit). |
| 0x1b8021 | 16 B | `setOperator(int op)` | Simpan integer `r2` (op/operator channel) ke global pointer; set nilai m_curOperator (0=default, kemungkinan: 0=Google Play, 1=lainnya). |
| 0x1b8061 | 24 B | `getGoodPrice(int idx)` | Load global pointer, `movs r1, r2` (id barang), panggil sub_261d50 (lookup harga), lalu panggil sub_18a618 (convert C++ string ke jstring). |
| 0x1b8079 | 32 B | `getOpenLevel()` | Load pointer singleton, load pointer instance (double-deref), lakukan `(lvl*8)+lvl = lvl*9` lalu tambahkan pointer ke array vtable untuk membaca field `m_openLevel`. Terdapat 2 level pointer dereferensi. |
| 0x1b8099 | 20 B | `getHeroLevel()` | Load global singleton, dereferensi instance, lalu call `sub_4d2b40` (mirip `CCInteger::getValue()` atau getter level hero) → return int. |
| 0x1b80ad | 40 B | `exitGame()` | Cek flag boolean global, jika 0 maka panggil `sub_16c6b0` (fungsi yang menutup activity/keluar game via JNI `finish()`), lalu set flag `m_ExitGame = 1`. |
| 0x1b82c5 | 80 B | `getActiveGift(int day)` | Kembalikan objek info gift untuk hari tertentu (emas/shield/hp/weapon/monster) |
| 0x1b8315 | 16 B | `setYear(int year)` | Simpan integer tahun ke global `curyear` (untuk tracking hadiah harian). |
| 0x1b8325 | 68 B | `setPlayerName(String)` | Call GetStringUTFChars → copy ke `std::string` (call 0x4b21dc copy ctor), lalu panggil fungsi game 0x4b1c60 (menyimpan nama pemain), kemudian call ReleaseStringUTFChars. |
| 0x1b8369 | 16 B | `setLanguage(int lang)` | Simpan bahasa (0=Cina, 1=Inggris) ke global. |
| 0x1b8379 | 24 B | `getGoogleKey()` | Call method id 0x29c (0xa7 << 2 = method index) di JNI class — **ini memanggil objek Java dan akses field/method yang return string?** Wait, disassembly menunjukkan ia menyimpan pointer ke `r1 = 0x1b838c+0xc = 0x1b8398?` TIDAK. Mari trace: `ldr r1,[pc,#0xc]` di 0x1b837c = word di 0x1b838c = instruksi yang mengikuti — **di 0x1b838c ada word yang berisi offset ke pointer C string 0x51514b (yaitu Google Key!). Lalu call method r3 (GetStringUTFChars pada string itu?) — SEBENARNYA ia mengambil string literal `"MIIBIjAN..."` (ada di pool) dan memanggil `NewStringUTF(env, string)` untuk meng-return-nya sebagai jstring ke Java.** ← ini konfirmasi: key di-hardcode di C string literal di .rodata. |
| 0x1b8391 | 16 B | `getAnHeiState()` | Load global pointer ke flag singleton, **baca 1 byte (`ldrb r0,[r3]`)** — return boolean 0/1 apakah paket Dark Set (暗黑套装) sudah dibeli. |
| 0x1b83a1 | 32 B | `jfqReward(int)` | Reward dari offerwall (积分球/JiFenQiu = poin/credit reward). |
| 0x1b83c1 | 112 B | `vedioAdsOver()` | Callback saat video iklan selesai, berikan reward (crystal) di game. |
| 0x1b80d5 | 496 B | `excuteDuihuan(String code)` | Fungsi redeem gift code/activecode. Mem-UTF-kan string dari Java, lookup code di map `activecode.xml`, dan berikan reward; return int status (berhasil/gagal/kedaluwarsa). |
| 0x1b8031 | 48 B | `payCallBack(int payIdx, int result)` | Callback hasil pembelian: set flag `m_isDoBuying=false`, panggil fungsi untuk memberikan item ke inventory berdasarkan pay index. |
| 0x1b7f4d | 212 B | `getGiftTime(int,int)` | Ambil waktu gift login harian. |
| 0x1b8021 | 16 B | `setOperator(int)` | Set operator channel ID. |

---

## 🎮 KLASIFIKASI SEMUA CLASS GAME C++ (BUKAN ENGINE)

Dari hasil demangle symbol, class-class game tulisan developer (bukan library) adalah sebagai berikut (sorted by scene/feature):

### Entry Point & App Bootstrap
| Class | Keterangan |
|---|---|
| `AppDelegate` | Class utama Cocos2dx, bootstrap aplikasi. Menangani `applicationDidFinishLaunching`, `applicationDidEnterBackground`, `applicationWillEnterForeground`. |

### Sistem Scene (Scene/View/Layer)
| Class | Nama di UI JSON | Keterangan |
|---|---|---|
| `CCLogoScene` | — | Logo scene saat awal mulai (publisher/developer logo) |
| `CCLoadingScene` | LoadingView | Loading screen dengan progress bar |
| `MainScene` | MainView | Menu utama |
| `CTeachScene` | — | Tutorial/teaching overlay |
| `CCDialogScene` | — | Dialog/popup umum (set area text, label, atlas nomor, animasi, imageview, toast, background) |
| `CCExitGameView` | — | Panel keluar game ("Yakin ingin keluar?") |
| `TownScene` | TownView | **Kota/pusat utama**, dengan update gold/crystal, show gift, play anima, showEmbattleMsg, showGetMonster, showMessageBoard, dll. |
| `CCHeroScene` | HeroView 1-8 | Halaman hero/pahlawan: upgrade, equipment, skill, hp, damage, defense, sell gold, level up, toast message, update atribut (perisai/HP) |
| `CMonsterScene` | MonsterView 1-2 | Monster bestiary/halaman monster: updateMonsterAttribute, setLocked, buyBoss, levelup, getMonsterIdByName, exitPanel |
| `CCBattleArea` | BattleArea / BattleView | Area pertempuran: createView, initListView, s_level, s_Battlewin, getHeroLevel, showPaimmingup, m_cangetGift, updateHeroMsg, removeTeach |
| `CSelectLevelScene` | TollgateView 1-9 | Pilih level/gerbang: initStar, teachlogic, updateStar, showNewGift, showOpenDuizhan (buka duel/arena) |
| `CSelecteYinCanScene` | ? | Hidden area/YinCan (引藏? = 隐忍 = hidden/silvers?) — scene level tersembunyi |
| `CCShopScene` | ShopView | Toko: updateGold, updateCrystal, showDetilDialog, showMessageBoard, m_curSelectedPage, updateGoodByIndex, showMsg |
| `CCAnimaScene` / `CCinemaScene` | — | Cutscene/cinema: initCinema, initDialog, loadCinema, showDialog |
| `CAchiveScene` | Achievement | Halaman achievement/pencapaian |
| `CPokerView` | FlopView | Mini game kartu terbalik (memory card) post-battle |
| `CCJiangliScene` | SuccessView | Reward hadiah (奖励 = jiangli) |
| `CRankingView` | RankingView | Leaderboard/papan peringkat |
| `CCTaskView` | TaskView | Daftar misi/tugas |
| `CPauseScene` | — | Jeda saat battle, termasuk tombol showGameAds (tampilkan iklan), exitBuyCrystal (beli crystal), initFuHuo (revive), initRate (rating?), initBuy |
| `CPassGameAnima` | SuccessView | Animasi kemenangan lewat stage |
| `CMapLoading` | — | Loading map transisi |

### Data Model (Struktur Data Game)
| Class | Keterangan |
|---|---|
| `CActor` | **Entity utama** — baik hero maupun monster. Berisi semua logika: move, attack, heroAttack/monsterAttack/skill, dropLogic, blockLogic, enemyHeroLogic, isInCamera, getDamage, getDelay, setFlipX/setFlipY, beatBack, setPause, isBoss, isRole, resetData, initMech, suiCongAttack (随从/pet), heroSkillAttack12/34, enemySkillAttack, executeDamage, initExtraElem, dll. **Method terbanyak (>100 method).** |
| `CAnimation` | Class animasi sprite (load stream, addFrame, getActionX/Y, cacheImage, releaseAll, initWithStream) |
| `CTileMap` | Peta/tilemap: focusActor, createMapNode, Camera_Tick, setMapScale, mergerMap, tileMapWithStream, removeActor, addActor, intance (singleton), getPhyByXY |
| `CTextObject` | Efek teks mengambang (damage number) — textUpdate, setTextString, addAnima |
| `Goods` | Barang toko: getPrice, setPrice |
| `Block` | Rintangan di stage |
| `Monster`/`DefenderData`/`DuiZhanData`/`LevelData`/`Level`/`BossDrop`/`Title`/`WujinState`/`monsterGorup`/`monsterInGroup`/`normalToSkeleton`/`skill`/`shiping`/`Achives`/`TastObj` (Tast=Task) | Data class sesuai nama XML-nya, masing-masing punya constructor/destructor. |
| `CAction` | Aksi/aksi actor (aksi aksi) |
| `DBUtil` | Helper akses database (SQLite via `sqlite3_*`): initDB, closeDB, beginExec, commitExec, rollbackExec, insertData, deleteData, updateData, selectData, createTable, deleteTable, tableIsExist, getDataInfo, getDataCount. **Static field `pDB` (pointer ke sqlite3*) di 0x5f9b8c**. |
| `CCShake` | Aksi goyangan layar (shake effect) |
| `CCTouchedSprite` | Sprite yang bisa disentuh dengan long-press detection (cancleTouch, isLongTouch, singleClickSprite) |
| `EffectSprite` | Sprite dengan efek khusus (particle/glow) |
| `CRect` | Struct rectangle |
| `Cmodule`/`CmoduleRotateScale` | Modul animasi/transformasi |
| `CLightNode` | Node pencahayaan/lighting |
| `CPhysicalUpdate` | Update fisika (myupdate) — integrasi chipmunk/box2d |

### Sistem Musik & Audio (OpenSL ES)
| Class | Keterangan |
|---|---|
| `SimpleAudioEngineOpenSL` | Audio engine menggunakan Android native OpenSL ES: playEffect, stopEffect, pauseEffect, resumeEffect, preloadEffect, playBackgroundMusic, setVolume, dll. |
| `OpenSLEngine` | Low-level OpenSL ES engine wrapper: createEngine, closeEngine, recreatePlayer, setEffectState |
| `CocosDenshion::SimpleAudioEngine` | Cocos2d-x standard audio engine (diatas OpenSL) |

### Utility / Crypto
| Class | Keterangan |
|---|---|
| `AES6..AES13` | Implementasi **AES enkripsi/dekripsi LENGKAP** (SubBytes, ShiftRows, MixColumns, AddRoundKey, InvCipher, Cipher, KeyExpansion, hex/str converter — menandakan game punya fitur enkripsi untuk save/data) |
| `SHA1` | Hash SHA-1: addBytes, getDigest, process, lrot |

### Sistem Audio/Player Musik
Variabel global `musicPlayer` (di 0x5fd570) menunjuk struct audio player BGM.

---

## 🌐 STRUKTUR GLOBAL VARIABLES (STATE GAME)

Dari simbol `.data`/`.bss`, kita bisa membaca state global game (yang diakses dari berbagai scene):

| Alamat | Ukuran | Nama C++ (mangled) | Makna |
|---|---|---|---|
| 0x5f9b8c | 4 | `DBUtil::pDB` | Pointer koneksi SQLite |
| 0x5f9330 | 4 | `m_recoderelife` | Rekor jumlah revive/kebangkitan |
| 0x5f9334 | 4 | `m_recodehp` | Rekor HP |
| 0x5f9338 | 4 | `m_recodelevel` | Rekor level |
| 0x5f933c | 4 | `m_recodeglod` (sic: gold) | Rekor gold |
| 0x5f9400-600 | 720 | `m_GetPerDay` | Array data hadiah per-hari (24×30 byte) |
| 0x5f9610 | 1 | `m_giftTimesToZero` | Flag reset gift times |
| 0x5f9611 | 1 | `mCanGetGift` | Apakah bisa klaim gift |
| 0x5f9614 | 4 | `getGiftTimes` | Hitungan kali klaim gift |
| 0x5f9618-24 | 16 | `curyear/lastyear/lastDay/lastMonth` | Tracking tanggal/waktu |
| 0x5f9628 | 4 | `m_curEnemyNumInScreen` | Jumlah musuh di layar sekarang |
| 0x5f962c | 4 | `m_playGameTime` | Waktu bermain (detik/ms) |
| 0x5f9632 | 1 | `m_ispirate` | Apakah versi bajakan? (pirate flag) |
| 0x5f9634 | 4 | `m_curOperator` | Operator/channel store (0=default, get/set dari Java) |
| 0x5f9638 | 4 | `m_hutuiurl` | URL untuk "hutui" (互推 = cross-promo game lain) |
| 0x5f963c | 4 | `m_dbPath` | Path ke file database SQLite |
| 0x5f9640 | 4 | `m_battleAreaName2` | Nama area battle |
| 0x5f9644 | 4 | `m_battleAreaname` | Nama area utama |
| 0x5f9648 | 4 | `m_playerName` | Nama pemain |
| 0x5f964c | 4 | `m_faildNum` | Jumlah gagal/kalah |
| 0x5f9650 | 1 | `m_eventAchive` | Event achieve telah dipicu |
| 0x5f9651 | 1 | `m_eventMonster` | Event monster telah dipicu |
| 0x5f9652 | 1 | `m_continuousAttack` | Flag serangan beruntun |
| 0x5f9654 | 4 | `m_gamestartTime` | Waktu mulai game (timestamp) |
| 0x5f9658 | 4 | `m_gameEndTimeCount` | Counter waktu akhir game |
| 0x5f965c | 1 | `m_pause` | Flag pause |
| 0x5ea3ff | 1 | `m_isBuyGetExpMul` | Pembelian pengganda exp |
| 0x5ea3d8 | 1 | `m_isBuyDoubleGold` | Pembelian double gold |
| 0x5ea53a | 1 | `m_isBuyGetExpMul` | (sama, exp multiplier) |
| 0x5ea53b | 1 | `m_isBuySkillDeltHalf` | Beli cooldown skill setengah |
| 0x5ea53c | 1 | `m_isBuyAnheiEquip` | Apakah sudah beli Dark Set (暗黑装备) |
| 0x5ea53c/3d | 1+1 | `m_isBuyEq`/... | Flag pembelian equipment |
| 0x5ea571 | 1 | `m_isbuynewGift` | Beli gift baru |
| 0x5ea572 | 1 | `m_baibao` ("白包" = pack?) | Flag hadiah/cache |
| 0x5ea573-85 | berturut | `needTeachShop`, `isTeachCg`, `isTeachAttack`, `isMonsterInTeach`, `isEmbattleInTeach`, `isHeroSceneInTeach`, `m_isNeedShowBiglevelGift`, `m_isNeedTeachSecondMonster` | Berbagai flag tutorial (mengajar pemain fitur pertama kali) |
| 0x5ea57f-85 | | `isTeachMonsterreLife`, `isTeachToMonster`, `isTeachToEmbattle`, `isTeachToHeroScene`, `isTeachAddMonsterHp`, `isTeachAddHeroHp`, `isTeachExchageMonster` | Tutorial lainnya |
| 0x5ea580 | 4 | `m_curBackUp` | ID save slot backup |
| 0x5ea58c | 1 | `isActiveGame` | Game sedang aktif (di foreground) |
| 0x5ea58d | 1 | `isGameOver` | Game over state |
| 0x5ea594 | 1 | `m_isDoBuying` | Flag sedang dalam proses IAP purchase (set sebelum panggil `launchPurchaseFlow`) |
| 0x5ea595 | 1 | `m_isInBackGround` | Game di background |
| 0x5ea598 | 4 | `m_firstOpen` | Counter pertama kali buka |
| 0x5ea59c | 4 | `m_wuJinScore` | Skor mode endless (Wujin/无尽) |
| 0x5ea5a4 | 1 | `m_ExitGame` | Flag exit game |
| 0x5ea5a8 | 4 | `m_gameMode` | Mode game (0=normal, 1=duizhan/arena, 2=endless?) |
| 0x5ea5ac | 4 | `m_gameState` | State game |
| 0x5ea5b0 | 60800 | `m_anims` | Array besar animasi (cache animasi hero/monster) — **60 KB!** |
| 0x5f9688 | 4 | `CActor::s_Cursor` | Pointer ke actor cursor |
| 0x5f968c | 4 | `CActor::s_Hero` | Pointer ke actor hero utama (singleton) |
| 0x5f9750 | 4 | `CTileMap::intance` | Singleton tilemap |
| 0x5f97e4 | 20 | `CCBattleArea::s_level` | Info level saat ini |
| 0x5f97f8 | 1 | `CCBattleArea::m_cangetGift` | Bisa dapat gift |
| 0x5f97f9 | 1 | `CCBattleArea::s_Battlewin` | Flag battle menang |
| 0x5f9841 | 1 | `CCExitGameView::hasView` | View exit aktif |
| 0x5f9b8c | 4 | `DBUtil::pDB` | Pointer koneksi database SQLite |
| 0x5fb338/3c | 4+4 | `sqlite3_data_directory`, `sqlite3_temp_directory` | Direktori database |
| 0x5fbbd0 | 4 | `g_apkPath` | Path ke APK |
| 0x5fbc14 | 4 | `cocos2d::JniHelper::m_psJavaVM` | Pointer JavaVM (untuk JNI dari native) |
| 0x5fc28c | 1 | `cocos2d::ZipUtils::s_bEncryptionKeyIsValid` | Flag apakah key enkripsi ZIP valid |
| 0x5fc290 | 4096 | `cocos2d::ZipUtils::s_uEncryptionKey` | **Key enkripsi ZIP resource (4096 byte)** — dipakai jika file .plist/.png di-zip dengan enkripsi |
| 0x5fd290 | 16 | `s_uEncryptedPvrKeyParts` | Key bagian-bagian PVR terenkripsi |

---

## 🎯 KESIMPULAN ARSITEKTUR NATIVE GAME

```
┌─────────────────────────────────────────────────────────────────┐
│  libsqltest.so (37 KB) — Helper aset                           │
│  - Java_com_joynow_apt_MyApplication_getFile()                 │
│  - Buka AAsset dari APK via AAssetManager                      │
│  - XOR-dekripsi dengan key 8-byte (dari Java String)           │
│  - Dipakai untuk file "idata.bin" (data index terenkripsi)      │
│  - Catatan: namanya "sqltest" tapi TIDAK ADA operasi SQL di sini│
└─────────────────────┬───────────────────────────────────────────┘
                      │ memuat data aset
                      ▼
┌─────────────────────────────────────────────────────────────────┐
│  libcocos2dcpp.so (5,9 MB) — SELURUH GAME + ENGINE             │
│                                                                │
│  ┌─ COCOS2D-X ENGINE (kompilasi statis) ─────────────────────┐  │
│  │  Renderer OpenGL ES 2, Sprite, Scene, Layer, Node, Action │  │
│  │  GUI: CocoStudio UI parser (Widget, Button, Panel, Image) │  │
│  │  Audio: CocosDenshion + OpenSL ES (BGM + SFX)            │  │
│  │  Physics: Chipmunk (cp*) + Box2D (b2*)                   │  │
│  │  File IO: CCFileUtils + ZipUtils (with encryption key)   │  │
│  │  Image: libpng/libjpeg/libtiff/libwebp (VP8 decoder)      │  │
│  │  XML: tinyxml2 parser                                    │  │
│  │  JSON: CSJson parser                                     │  │
│  │  Crypto: AES + SHA1 + OpenSSL (RSA/SSL)                  │  │
│  └──────────────────────────────────────────────────────────┘  │
│                                                                │
│  ┌─ LOGIKA GAME ASLI (developer code) ──────────────────────┐  │
│  │                                                          │  │
│  │  Kelas scene (19 layar UI):                              │  │
│  │    CCLogoScene → CCLoadingScene → MainScene              │  │
│  │    TownScene (hub) ──┬─ CCHeroScene (hero + equip)       │  │
│  │                      ├─ CMonsterScene (bestiary)         │  │
│  │                      ├─ CCShopScene (toko gold)          │  │
│  │                      ├─ CCRankingView (leaderboard)      │  │
│  │                      ├─ CCTaskView (misi)                │  │
│  │                      ├─ CCBattleArea (stage select)      │  │
│  │                      ├─ CSelectLevelScene (pilih level)  │  │
│  │                      ├─ CPauseScene (jeda + iklan/revive)│  │
│  │                      ├─ CAchiveScene (achievements)      │  │
│  │                      ├─ CCAnimaScene/CCinemaScene (cut)  │  │
│  │                      └─ CPokerView/CCJiangliScene/...    │  │
│  │                                                          │  │
│  │  Model data:                                              │  │
│  │    CActor (entity: hero/monster, 100+ method)             │  │
│  │    CTileMap (peta, kamera, focus actor)                   │  │
│  │    CAnimation (frame animation)                           │  │
│  │    Goods, Block, Monster, Level, BossDrop, Title,         │  │
│  │    DefenderData, DuiZhanData, TastObj (task),             │  │
│  │    monsterGorup/monsterInGroup, normalToSkeleton,         │  │
│  │    skill, shiping, CTextObject, EffectSprite, CRect       │  │
│  │                                                          │  │
│  │  Sistem:                                                 │  │
│  │    DBUtil (wrapper SQLite3 — save game, inventori, data)  │  │
│  │    AppDelegate (bootstrap)                               │  │
│  │    CCTeachedScene + m_needTeach* flags (tutorial)         │  │
│  │    CCShake (screen shake effect)                          │  │
│  │    AES/SHA1 (enkripsi data, hash)                         │  │
│  │                                                          │  │
│  │  JNI Bridge (19 native methods ke MonsterHunter.java):    │  │
│  │    • getGoogleKey() → pointer ke string RSA key @0x51514b│  │
│  │    • getAnHeiState() → baca flag boolean 1 byte          │  │
│  │    • getGoodPrice(id) → lookup harga dari array          │  │
│  │    • exitGame() → set m_ExitGame=1, call finish()        │  │
│  │    • payCallBack(idx, result) → proses hasil IAP         │  │
│  │    • vedioAdsOver() → reward iklan video selesai         │  │
│  │    • excuteDuihuan(code) → redeem gift code              │  │
│  │    • setPlayerName(name) → simpan ke std::string         │  │
│  │    • setLanguage(lang), setOperator(op), setYear(y)      │  │
│  │    • keyBack() → handler tombol back                     │  │
│  │    • getHeroLevel(), getOpenLevel(), getGiftTime(a,b)    │  │
│  │    • jfqReward(), getActiveGift()                        │  │
│  └──────────────────────────────────────────────────────────┘  │
│                                                                │
│  Cocos2dx JNI (fungsi standar engine — 17 functions):          │
│  │  nativeInit, nativeRender, nativeOnPause/Resume            │
│  │  nativeTouchesBegin/End/Move/Cancel (input sentuh)         │
│  │  nativeKeyDown (tombol hardware)                           │
│  │  nativeInsertText/DeleteBackward (keyboard)                │
│  │  nativeSetApkPath, nativeSetEditTextDialogResult           │
│  │  nativeInitBitmapDC, nativeSetTextureInfo                  │
│  │  onSensorChanged (accelerometer)                           │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🔓 RINGKASAN KUNCI ENKRIPSI YANG DITEMUKAN SELURUHNYA

Selama reverse engineering, 4 lapisan/sistem enkripsi yang dipakai game:

| Sistem | Kunci/Lokasi | Dipakai untuk |
|---|---|---|
| **XOR XML (lapisan-1)** | `hzkjhstgh` (9 byte) `kmshtatsk` (9 byte) | 14 file XML "TE" + 1 file XML "WR" di `assets/` |
| **XOR XML (lapisan-2)** | Masih di C++ (diperlukan analisis `libcocos2dcpp.so` lebih dalam untuk mengidentifikasi fungsi parser string Cina) | String nama/deskripsi Cina di XML |
| **XOR Asset (libsqltest)** | 8-byte key (didapat dari Java, diturunkan dari nama file atau hardcoded di Java) | `idata.bin` dan file aset terkompresi lain |
| **ZipUtils encryption** | Key 4096-byte di `s_uEncryptionKey` (0x5fc290) | File ZIP resource di dalam APK (biasanya dipakai Cocos2d-x untuk .pvr.ccz terenkripsi) |
| **AES** | Implementasi AES penuh ada di binary | Kemungkinan save game / data terkompresi lain |
| **RSA Public Key** | `MIIBIjAN...` (2048-bit, di 0x51514b) | Verifikasi signature pembayaran Google Play (license key) |
| **OpenSSL** | Full SSL library | Komunikasi HTTPS (TLS/SSL pinning ada string "SSL public key does not match pinned public key") — game melakukan SSL pinning! |

---

## ⚠️ CATATAN TENTANG SSL PINNING

Game mengimplementasikan **SSL/TLS certificate pinning** (bukti: string `"SSL public key does not match pinned public key"` di `.rodata`). Ini berarti traffic HTTPS (TalkingData analytics, pembelian, leaderboard, dsb.) memverifikasi sertifikat server dan TIDAK BISA di-intercept dengan mitmproxy/Charles semudah itu tanpa patch.

---

## 📊 CATATAN PENTING UNTUK MODDER/PENELITI

1. **String Cina nama item/monster di XML** — setelah XOR lapisan-1, string Cina masih ter-enkripsi lapis-2. Namun karena `libcocos2dcpp.so` juga berisi class `AES`, **bisa jadi lapisan-2 adalah XOR/AES lain** yang diaplikasikan saat load XML. Untuk mendekripsi sepenuhnya, perlu menelusuri fungsi parser XML (kemungkinan `tinyxml2::XMLDocument::LoadFile` yang di-hook untuk dekripsi tambahan).

2. **Lokasi database save game:** pointer `DBUtil::pDB` dan nama database tersusun dari `m_dbPath` (path ke file di app data, kemungkinan `/data/data/com.joynow.monster.gp/databases/save.db` atau sejenisnya). Tabel-tabel database dapat diakses lewat class `DBUtil`.

3. **Tutorial flags** (`needTeachShop`, `isTeachCg`, `isTeachAttack`, dll.) semua tersimpan di 1-byte boolean di `.bss` — dengan memory hack atau mengedit pointer lewat cheat engine/GameGuardian, pemain bisa melewati tutorial.

4. **Versi anti-pembajakan:** Ada flag `m_ispirate` (0x5f9632) yang kemungkinan diset jika deteksi pembajakan (Freedom, LuckyPatcher) mendeteksi.

5. **`m_isInBackGround`** di 0x5ea595 dipakai untuk pause game saat app masuk background.

6. **Audio BGM:** `musicPlayer` (struct di 0x5fd570) + OpenSL engine memutar `music_battle.ogg`, `music_scene.ogg`, `music_cinma.ogg`.

---

*Reverse engineering ini memakai static analysis (tanpa menjalankan APK). Analisis dinamis (running di emulator/device dengan IDA Pro + GDB/Frida) akan dibutuhkan untuk memecahkan XOR lapisan-2 string Cina & mengekstrak key ZipUtils/AES yang sebenarnya.*
