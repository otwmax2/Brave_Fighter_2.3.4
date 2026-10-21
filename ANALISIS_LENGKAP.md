# 📊 ANALISIS LENGKAP REPO: Brave Fighter v2.3.4
## (Monster Hunter / com.joynow.monster.gp)

> Repo: https://github.com/otwmax2/Brave_Fighter_2.3.4
> Tanggal analisis: 2026-10-21
> Paket: `com.joynow.monster.gp` → entry activity `com.yunva.monsterhunter.MonsterHunter`

---

## ⚠️ CATATAN PENTING DI AWAL

**Ini BUKAN source code asli game** yang bisa dibangun ulang (build from source). Repo ini adalah **hasil ekstraksi/dekompilasi APK Android** yang sudah jadi (published ke Google Play). Isinya terdiri dari:
- `classes.dex/` → hasil decompile JADX ke Java (4.863 file) + smali (4.863 file)
- `res/` → resource Android yang sudah di-compile (147 folder densitas/bahasa)
- `assets/` → asset game (gambar, suara, UI JSON, data biner terenkripsi) — 1.201 file
- `lib/` → native library (.so) hasil compile C++ (Cocos2d-x)
- `AndroidManifest.xml` → binary XML yang sudah didecode
- `META-INF/` → signature APK + file sertifikat
- `tree.txt` → pohon direktori lengkap (13.916 baris)

**Engine game yang dipakai: Cocos2d-x (libcocos2dcpp.so 5,9 MB)**. Semua logika gameplay, scene, battle logic, animasi hero/monster ada di native C++ (libcocos2dcpp.so), yang berkomunikasi dengan Java lewat JNI. File Java di repo ini terutama adalah **wrapper Android** (Activity, in-app purchase, ads, analytics, FB/Google Play login), BUKAN logika game inti.

---

## 🏗️ ARSITEKTUR TINGKAT TINGGI

```
┌────────────────────────────────────────────────────────────────────┐
│                    ANDROID JAVA LAYER (dapat didekompilasi)        │
│  ┌──────────────────────────────────────────────────────────────┐  │
│  │  MonsterHunter.java (Cocos2dxActivity) — Jembatan JNI ke C++ │  │
│  │  ├─ IabHelper (Google Play Billing)                          │  │
│  │  ├─ IronSource / UnityAds / Vungle / Chartboost / AdMob      │  │
│  │  │   (5 jaringan iklan + offerwall + rewarded video)         │  │
│  │  ├─ Facebook SDK (login, share, GameRequestDialog)           │  │
│  │  ├─ Google Play Games (leaderboard, achievement)             │  │
│  │  ├─ TalkingData GA (analytics + tracking Tiongkok)           │  │
│  │  └─ TendCloud / TalkingData Game Analytics                   │  │
│  └──────────────────────────────────────────────────────────────┘  │
│                              │ JNI (native methods)                │
│                              ▼                                     │
│  ┌──────────────────────────────────────────────────────────────┐  │
│  │  NATIVE C++ LAYER (libcocos2dcpp.so — TIDAK ada source!)     │  │
│  │  ├─ Cocos2d-x engine (render, scene, sprite, audio)          │  │
│  │  ├─ Seluruh logika game: Battle, Hero, Monster, Shop, Town   │  │
│  │  ├─ Parser JSON UI + XML terenkripsi (addi/anim/area data)   │  │
│  │  └─ Memanggil balik Java via JNI (bayar, iklan, login, dll)  │  │
│  └──────────────────────────────────────────────────────────────┘  │
│                              ▲                                     │
│  ┌──────────────────────────────────────────────────────────────┐  │
│  │  ASSETS (gambar .png, suara .ogg, UI layout .json,            │  │
│  │          data .bin/.xml ter-enkripsi/XOR, spritesheet .plist) │  │
│  └──────────────────────────────────────────────────────────────┘  │
└────────────────────────────────────────────────────────────────────┘
```

---

## 📁 ANALISIS FOLDER PER FOLDER, FILE PER FILE (ROOT)

### `/` (Root)
| File/Folder | Ukuran | Fungsi |
|---|---|---|
| `AndroidManifest.xml` | 5,8 KB | Manifest aplikasi, mendeklarasikan semua Activity, permission, SDK, meta-data (dibahas detail di bawah) |
| `build-data.properties` | 934 B | Metadata build Google Play Services (bukan build game ini!) — timestamp 10 Juni 2016, label `gmscore_v4_RC13`, menunjukkan GPS v4 di-bundle dengan Blaze (internal Google) |
| `tree.txt` | 879 KB | Daftar pohon direktori lengkap hasil `tree` command (13.916 baris) |
| `META-INF/` | ~526 KB | Signature APK (CERT.RSA/.SF), MANIFEST.MF (hash SHA1 tiap file), rxjava.properties |
| `classes.dex/` | folder | Hasil decompile DEX (Java bytecode) — berisi `sources/` (.java) dan `smali/` (.smali) |
| `assets/` | folder | 1.201 file asset game (terbesar & terpenting) |
| `lib/` | folder | Native library ARM (`armeabi/`) |
| `res/` | folder | 147 subfolder resource Android (multi-bahasa, multi-densitas) |
| `jsr305_annotations/` | 1 file | `Jsr305_annotations.gwt.xml` — file konfigurasi GWT untuk javax.annotation (sisa library) |

---

### 📄 `/AndroidManifest.xml` (DIBEDAH SATU PER SATU)

**Informasi aplikasi:**
- Package: `com.joynow.monster.gp`
- Version Code: `234` → Version Name: `2.3.4`
- Min SDK: **16** (Android 4.1 Jelly Bean) → Target SDK: **26** (Android 8.0 Oreo)
- Aplikasi label: `Brave Fighter` (`@string/app_name`)
- Icon: `@drawable/icon`
- Application class: `android.support.multidex.MultiDexApplication` (karena melebihi 65K method — butuh MultiDex)
- Tema awal: `@style/AppTheme`, launcher activity pakai `Theme.NoTitleBar.Fullscreen` + orientasi **landscape** (game horisontal)
- `unityplayer.ForwardNativeEventsToDalvik = true` — setting untuk integrasi Unity Ads
- `allowBackup=true`, `resizeableActivity=false` (tidak mendukung multi-window)

**Permission yang diminta (5 buah):**
1. `com.android.vending.BILLING` — In-App Purchase Google Play
2. `android.permission.INTERNET` — Akses internet (untuk iklan, analytics, login FB/GP, purchase)
3. `android.permission.ACCESS_WIFI_STATE` — Cek status WiFi
4. `android.permission.WRITE_EXTERNAL_STORAGE` — Tulis ke storage (save game, mungkin download asset tambahan)
5. `android.permission.ACCESS_NETWORK_STATE` — Cek status jaringan

**Activity launcher (satu-satunya entry point):**
`com.yunva.monsterhunter.MonsterHunter` — extend `Cocos2dxActivity` (aktivitas utama Cocos2d-x)

**Activity SDK pihak ketiga yang terdaftar (11 activity):**
- `com.facebook.FacebookActivity` — Facebook dialog/login
- `com.ironsource.sdk.controller.ControllerActivity` + `InterstitialActivity` + `OpenUrlActivity` — IronSource ads mediasi
- `com.google.android.gms.ads.AdActivity` — Google AdMob
- `com.chartboost.sdk.CBImpressionActivity` — Chartboost ads
- `com.unity3d.ads.adunit.AdUnitActivity` + `AdUnitSoftwareActivity` — Unity Ads (HW & SW rendering)
- `com.vungle.publisher.VideoFullScreenAdActivity` + `MraidFullScreenAdActivity` + `FlexViewAdActivity` — Vungle video ads
- `com.facebook.ads.AudienceNetworkActivity` — Facebook Audience Network (banner/interstitial)

**Meta-data:**
- `com.google.android.gms.version` → dari GPS library
- `com.facebook.sdk.ApplicationId` → `@string/fbapp_id` = **1574479116116756** (Facebook App ID, terekspos!)
- `com.facebook.sdk.ApplicationName` → `Brave Fighter`

**Provider:**
- `com.facebook.FacebookContentProvider` dengan authority `com.facebook.app.FacebookContentProvider1574479116116756` (dibutuhkan FB SDK untuk berbagi konten)

**Tidak ada:** `Service`, `BroadcastReceiver`, `ContentProvider` selain milik Facebook. Tidak ada push notification (FCM).

---

### 🔐 `/META-INF/` (Signature & Integritas APK)

| File | Ukuran | Isi |
|---|---|---|
| `MANIFEST.MF` | 263 KB | Daftar SHA1-Digest base64 untuk SETIAP file di APK (verifikasi integritas) |
| `CERT.SF` | 263 KB | Signature file manifest (tanda tangan oleh kunci privat developer) |
| `CERT.RSA` | 654 B | Sertifikat publik RSA (membuktikan APK ditandatangani oleh satu kunci privat — bisa diekstrak untuk melihat publisher) |
| `rxjava.properties` | 651 B | Implementasi RxJava yang dipakai (menunjukkan game menggunakan RxJava untuk async/event-driven) |

Catatan keamanan: **Kunci publik sertifikat dapat diekstrak dari `CERT.RSA`** untuk memverifikasi keaslian APK (tidak bisa di-tamper tanpa re-sign).

---

### 📚 `/classes.dex/sources/` (Java Decompiled)
Struktur:
```
classes.dex/sources/
├── android/    (523 file)  → Support library android.* (v4, v7 appcompat, multidex)
├── bolts/     (13 file)   → Bolts framework (dipakai Facebook SDK untuk task async)
├── com/        (3.742 file) → Kode aplikasi + SEMUA SDK pihak ketiga (terbesar)
├── dagger/     (33 file)   → Dagger (dependency injection, dipakai retrofit/dagger)
├── de/         (21 file)   → com.google.code.gson (dipindah ke de. untuk alasan obfuscasi? — seharusnya com.google.gson)
├── javax/      (6 file)    → javax.annotation (jsr305 nullability annotations)
├── okhttp3/    (97 file)   → Square OkHttp 3.x (HTTP client untuk semua request jaringan)
├── okio/       (27 file)   → Square Okio (I/O foundation OkHttp)
├── org/        (15 file)   → org.cocos2dx.lib (Cocos2d-x Java wrapper)
├── retrofit2/  (52 file)   → Square Retrofit 2 (type-safe REST client, dipakai komunikasi API)
└── rx/         (334 file)  → RxJava 1.x (reactive programming, async event stream)
```

#### Detail `/classes.dex/sources/com/` (inti aplikasi + SDK):
| Sub-package | Fungsi |
|---|---|
| `com/android/` | Google Play Services (GMS) — IAB, analytics, games (leaderboard/achievement), ads, auth, GCM, dynamic modules |
| `com/c/c/` | Kode Java game yang **di-obfuscasi** (hanya 1 sub-folder `c/`), kemungkinan utility atau analytics tambahan |
| `com/chartboost/` | **Chartboost SDK** — interstitial & video ads (populer untuk game mobile) |
| `com/example/` | `basegameutils` — Google Play Games helper `GameHelper.java` (boilerplate dari Google sample) |
| `com/facebook/` | **Facebook SDK** — login, share, app events, Audience Network (ads) |
| `com/google/` | Library Google (gson, gms, ads, auto-value, third-party crash) |
| `com/ironsource/` | **IronSource SDK** — mediasi iklan (menyatukan banyak ad network: rewarded video, offerwall, interstitial, banner) |
| `com/joynow/monster/gp/` | Namespace aplikasi developer asli, hanya berisi `BuildConfig.java` dan `R.java` (auto-generated, tidak ada logika game di sini!) |
| `com/moat/` | **Moat Analytics** — pengukuran viewability iklan (brand safety) |
| `com/talkingdata/` | **TalkingData GA** (Tiongkok) — analytics + Game Analytics (tracking event, pembayaran virtual currency, misi, akun) — SDK ini TIDAK boleh dipakai untuk rilis Google Play karena mengirim data ke server Tiongkok tanpa izin GDPR |
| `com/tendcloud/` | TalkingData Game Analytics (alias TDGA, masih bagian dari TalkingData) |
| `com/unity3d/ads/` | **Unity Ads** — video rewarded ads |
| `com/vungle/` | **Vungle** — video ads publisher |
| `com/yunva/monsterhunter/` | **11 FILE INTILARAS** (tempat semua glue code game berada!) |

#### 🔥 `/classes.dex/sources/com/yunva/monsterhunter/` (FILE PENTING — AKTIVITAS UTAMA)
Ini SATU-SATUNYA package yang berisi kode tulisan developer (bukan SDK):

| File | Fungsi |
|---|---|
| `MonsterHunter.java` | **Activity utama (LAUNCHER)**. Mewarisi `Cocos2dxActivity`, mengimplementasi `GameHelper.GameHelperListener`. Mengatur SEMUA JNI call, handler pembayaran, iklan, Facebook, Google Play, analytics, dialog, bahasa (Cina/Inggris). Berisi 28+ item toko, 34 event tracking analytics, 10 SKU Google Play. |
| `IabHelper.java` | Helper untuk Google Play In-App Billing (implementasi standar Google TrivialDrive sample — menangani purchase flow, consume, query inventory) |
| `IabException.java` | Exception class untuk IAB |
| `IabResult.java` | Hasil operasi IAB (success/failure + pesan) |
| `IabBroadcastReceiver.java` | Receiver untuk broadcast pembayaran dari Google Play |
| `Inventory.java` | Menyimpan daftar SKU yang dimiliki pemain + detail produk |
| `Purchase.java` | Data pembelian (token, signature, payload, SKU) |
| `Security.java` | Verifikasi tanda tangan pembayaran (mencegah pembajakan/license bypass) — memverifikasi signature dengan public key Google Play |
| `SkuDetails.java` | Detail produk IAB (harga, deskripsi, title, currency) |
| `Base64.java` | Utilitas encoding/decoding Base64 (dipakai Security.java) |
| `Base64DecoderException.java` | Exception untuk Base64 error |

#### JNI Methods di `MonsterHunter.java` (jembatan Java ↔ C++):
Ini adalah daftar method `native` yang dipanggil dari C++ (artinya dipanggil saat event game terjadi):

```java
public static native int  excuteDuihuan(String str);        // redeem/exchange code (kode aktif)
public static native void exitGame();                        // keluar game
public static native int  getAnHeiState();                   // cek status "暗黑套装" (Dark Set) yang dibeli
private static native void getGiftTime(int i, int i2);       // ambil waktu gift
private static native int  getGoodPrice(int i);              // ambil harga barang
public static native String getGoogleKey();                  // ambil public key Google Play (di-hardcode di C++!)
private static native int  getHeroLevel();                   // level hero
private static native int  getOpenLevel();                   // level unlock konten
public static native void jfqReward(int i);                  // reward "积分球" / offerwall?
public static native void keyBack();                         // tombol back
public static native void payCallBack(int i, int i2);        // callback pembayaran ke C++
```

#### Item Pembayaran yang Terdeteksi (SKU Google Play):
Dari array `mSku`:
| SKU | Nama barang (Cina) | Harga (sen USD) | Nama dalam game |
|---|---|---|---|
| `week_card_01` | 周卡 | $1.99 | Weekly Pass |
| `diamonds_20.00` | 20个水晶 | $4.99 | 20 Crystals |
| `diamonds_60.00` | 55个水晶 | $9.99 | 60 Crystals |
| `diamonds_130.00` | 120个水晶 | $19.99 | 130 Crystals |
| `crystals_270.00` | 270个水晶 | $49.99 | 270 Crystals |
| `crystals_840.00` | 840个水晶 | $99.99 | 840 Crystals |
| `crystals_2000.00` | 2000个水晶 | $192.99 | 2000 Crystals (termahal!) |
| `diamonds_2500.00` | 2500个水晶 | $29.99 | 2500 Diamonds |
| `package_01` / `package_02` | 暗黑套装/新手礼包 | $14.99 / $4.99 | Dark Set / Starter Pack |
| `hot_sale_01` | ? | $4.99 | Hot sale |

Catatan: Ada SKU yang tidak masuk ke array 10 (dipanggil dari C++ langsung untuk barang coin/karakter): 1万金币/3万金币/6万金币/12万/18万, 莱昂哈特 (Leonhardt), 达古达 (Dagda), 斯尔夫 (Sylph?), kematian/resurrection, 传奇佣兵 (Legendary Mercenary), 64格子 tas, 一键满级, 史诗套装, 技能解锁, 血瓶, 卷轴.

**Kebocoran keamanan yang jelas:** `getGoogleKey()` mengambil public key Google Play dari NATIVE C++ (bukan diacak di Java, tapi diambil lewat JNI). Ini upaya anti-piracy, namun tetap bisa diekstrak dari .so dengan reverse engineering.

#### Event Analytics (eventId2) yang ditrack ke TalkingData:
Ini memberitahu SEMUA perilaku pemain yang dimonitor:
- Pembukaan UI: 佣兵屋(Mercenary), 商店(Shop), 成就(Achievement), 布阵(Embattle), 英雄殿堂(Hero Hall), 礼包(Gift Pack)
- Pembelian: 稀世套装, 阵型扩充, 强力捕捉, 急速冷却, 生命恢复, 双倍经验, 双倍掉率, 16格包, 连升5级
- Upgrade skill: 落魄剑, 摄魂斩, 刀锋之舞, 冥河破
- Upgrade equipment: 武器, 盔甲, 吊坠, 符石
- Gameplay: 进入关卡 (masuk stage), 关卡的死亡 (mati di stage), 点击重新开始 (restart)
- Ekonomi: Pembelian koin 1万-18万, item 血瓶/卷轴/复活

#### Jaringan Iklan yang terintegrasi (5):
1. **IronSource** — mediator utama (rewarded video + offerwall) — ada listener lengkap (onRewarded, showFailed, dll)
2. **Unity Ads** — `UnityAds.initialize()`
3. **Vungle** — `VunglePub.init()`
4. **Chartboost** — interstitial
5. **Google AdMob** (lewat IronSource mediation / `AdActivity` terdaftar)
6. **Facebook Audience Network** — banner/interstitial

---

### 🧩 `/classes.dex/smali/`
4.863 file `.smali` — ini adalah representasi assembly Dalvik yang LEBIH AKURAT dibanding decompile Java (hasil decompile JADX kadang ada error). Smali adalah bentuk yang sebenarnya dijalankan oleh Android Runtime (ART/Dalvik). Jika ingin melakukan mod/patch APK, smali-lah yang diedit lalu di-recompile dengan apktool/smali tool.

---

### 🧱 `/lib/` (Native Libraries)
Hanya berisi satu ABI (armeabi) — artinya **tidak mendukung arm64-v8a, x86, atau x86_64**. Ini adalah tanda game lama (sebelum Google mewajibkan 64-bit).

| File | Ukuran | Fungsi |
|---|---|---|
| `lib/armeabi/libcocos2dcpp.so` | **5,9 MB** | **SELURUH GAME ENGINE + LOGIKA PERMAINAN**. Ini adalah hasil kompilasi kode C++ Cocos2d-x yang berisi: renderer OpenGL, scene manager, action/sprite, audio engine (CocosDenshion), fisika, serta SEMUA kelas game C++ (Battle, Hero, Monster, Shop, Town, Level, Save, IAP callback, Ads callback, JSON parser, XML parser yang ter-XOR). Inilah "jantung" game. Reverse engineering butuh disassembler seperti IDA Pro/Ghidra. |
| `lib/armeabi/libsqltest.so` | 37 KB | Library native tambahan — namanya menandakan ini adalah **wrapper SQLite** (basis data lokal untuk menyimpan save game, inventory, progress, hero level, dll). Nama "sqltest" tampak seperti nama debug/eksperimen yang lupa diganti sebelum rilis. |

---

### 🎨 `/res/` (Android Resources)
147 folder total — khas proyek Android yang memuat Google Play Services + Facebook SDK (support banyak bahasa & densitas).

Kategori folder:

**Resource density (gambar Android UI):**
`drawable/`, `drawable-ldpi/`, `drawable-mdpi/`, `drawable-hdpi/`, `drawable-xhdpi/`, `drawable-xxhdpi/`, `drawable-xxxhdpi/`, `drawable-tvdpi/`, `drawable-v21/`, `drawable-v23/`, `drawable-anydpi-v21/`, `drawable-ldrtl-*-v17/` (rtl untuk bahasa Arab/Ibrani)

**Layout UI Android:**
`layout/`, `layout-v17/`, `layout-v21/` — Berisi layout XML untuk activity SDK (Facebook, AdMob, Chartboost, Vungle), BUKAN layout game (layout game pakai JSON di assets/)

**Resource mentah:**
`raw/` — file binary mentah (keep proguard, config)

**Animasi Android:**
`anim/` — animasi tween Android (fade, slide, dll untuk UI SDK)

**Warna:**
`color/`, `color-v23/`, `values-night/`

**Strings/values (86 folder bahasa!)** — menunjukkan game ini diterjemahkan ke BANYAK bahasa:
`values/` (default Inggris), `values-in/` (Indonesia), `values-id/` (Indonesia juga - typo tapi ada dua!), `values-zh-rCN/` (Cina Mandarin), `values-zh-rTW/`, `values-zh-rHK/`, `values-ja/` (Jepang), `values-ko/` (Korea), `values-th/` (Thai), `values-vi/` (Vietnam), `values-ru/`, `values-es/`, `values-fr/`, `values-de/`, `values-pt/`, `values-ar/`, `values-hi/`, `values-id/`, dan bahasa lain sampai `values-zu/` (Zulu). Lengkap 80+ bahasa untuk Google Play Services.

Isi `values/strings.xml` yang penting:
- `app_name = "Brave Fighter"`
- `fbapp_id = "1574479116116756"` (Facebook App ID)
- `app_id = "223699000400"` (Google Play app ID)
- 6 achievement IDs Google Play: `achievement_arrogant`, `bored`, `humble`, `leet`, `prime`, `really_bored` (id "CgkIwdGH4Z8XEAIQ...")
- Ribuan string untuk Facebook SDK, AppCompat, Google Play Services, dan UI Android (bukan string game)

**Semua UI/game text SEBENARNYA ada di C++/assets, bukan di res/values!** Ini pola umum game Cocos2d-x — string internal game dikelola di engine.

---

## 🎮 `/assets/` (GAME ASSETS — PALING PENTING)

**Total: 1.201 file (635 PNG, 386 BIN, 78 JSON, 48 OGG, 22 XML, 8 PLIST, 7 JPG)**

### File di Root `/assets/`
| File | Jumlah | Fungsi |
|---|---|---|
| `*.png` (root) | banyak | Sprite tunggal (item icon, UI button, effect, logo, ads asset) |
| `*.ogg` | 48 | File suara + musik BGM |
| `*.json` | banyak | Layout UI CocoStudio (Cocos Studio editor format) — 1 file = 1 halaman UI |
| `anim*.bin` (anim0.bin ~ anim169.bin) | ~170 file | **Data animasi ter-enkripsi** (sprite frame animation hero/monster/skill) |
| `addi.bin` | 1 | Data tambahan |
| `*.xml` | 22 | Data konfigurasi game, TAPI SEMUA ter-enkripsi/XOR (bukan plain text) |
| `MonsterHunter0.plist` s/d `MonsterHunter1.plist` | 2 | Spritesheet metadata (Zwoptex/Cocos format) |
| `Comet.png`, `0_blood.png`, `2p.png`, `ad_*.png` | ikon | Efek partikel, darah, UI elemen, aset iklan promosi |
| Folder khusus (17 folder) | — | Dibedah di bawah |

#### Daftar `*.ogg` (suara) yang teridentifikasi:
**Musik (BGM):**
- `music_battle.ogg`, `music_battle_0.ogg`, `music_battle_1.ogg` — musik pertarungan (3 variasi)
- `music_scene.ogg` — musik kota/scene
- `music_cinma.ogg` — musik cutscene/cinema

**SFX (efek suara):**
- `atk_mon_1.ogg` s/d `atk_mon_8.ogg` — 8 variasi suara serangan monster
- `hit_0.ogg`, `hit_1.ogg`, `hit_2.ogg` — suara terkena serangan
- `sound_addhp.ogg` — suara tambah HP/heal
- `sound_attack_hand.ogg` — serangan tangan/tempur kosong
- `dicijiguan.ogg`, `huoyanjiguan.ogg` — efek laser (磁刺机关/火焰机关)
- `*.ogg` lain di subfolder per scene

### Subfolder `/assets/` (dibedah satu per satu):

| Folder | Jumlah File | Isi |
|---|---|---|
| `Loading/` | 4 | Asset loading screen: `loading_bg.png`, `loading_progress_1.png` (bg bar), `loading_progress_2.png` (isi bar), `loading_word.png` (teks "LOADING") |
| `MainView/` | 13 | Asset menu utama: `btn_ksyx_0/1.png` (开始游戏 - Mulai main), `btn_cundang_0/1.png` (存? 存档 - Load), `btn_moregames_0/1.png`, `btn_del_0/1.png`, `cundang_heng.png/cundang_lv.png` (save horizontal/vertical), nomor `cundang_num1/2.png` |
| `battle/` | 140 | Asset scene pertarungan TERBESAR: tilemap bg, skill icon, karakter sprite, health bar, damage number font, effect, tombol (atk, skill, item, run), stage preview. Ini folder asset gameplay utama. |
| `embattle/` | 11 | Asset formasi/susunan tim (EmbattleView): slot hero, icon party, tombol atur formasi. |
| `english/` | **299** | **Asset untuk BAHASA INGGRIS** — ini folder override! Berisi JSON layout dan PNG yang sama-sama nama dengan asset Cina, tapi berisi teks/sprite English (contoh: nama tombol "Start" bukan "开始", nama item dalam English). Saat pemain pilih bahasa English, game me-load resource dari folder ini. |
| `flop/` | 13 | Asset mini-game "kartu terbalik" (flop/memory card) — hadiah/reward usai battle. |
| `hero/` | 37 | Asset UI Hero/pahlawan: HeroView (halaman hero list/detail), icon portrait setiap hero, tombol upgrade/equip. |
| `monster/` | 15 | Asset monster bestiary/encyclopedia: MonsterView, icon monster list. |
| `pay/` | 27 | Asset tampilan toko pembayaran (PayView): daftar paket crystal, price tag, tombol Beli, ikon mata uang premium. |
| `rally/` | 74 | Asset rally/quest/summon? RallyView_1 s/d 12 — ini halaman kumpulan event/misi rally / arena, berisi portrait hero reward, banner event, tombol rally. 74 file artinya ini salah satu fitur terkaya. |
| `ranking/` | 10 | Leaderboard (RankingView) — icon rank 1/2/3, list skor, tombol upload skor Google Play. |
| `register/` | 37 | Asset register/input nama profil pemain (RegisterView 1-4): field input nama, keyboard tombol (karena ini game lama — keyboard custom, bukan input Android), konfirmasi nama. |
| `shop/` | 17 | Asset toko dalam game (ShopView) — bedakan dengan `pay/` (real money). Toko ini untuk gold/crystal in-game, item konsumsi, scroll, blood vial. |
| `success/` | 9 | Asset layar kemenangan/keberhasilan (SuccessView 1-3): tampilan reward setelah stage, tombol lanjut, animasi peti harta. |
| `task/` | 9 | Asset daftar misi/tugas (TaskView 1-2): daftar misi harian, progress, reward claim. |
| `tollgate/` | 65 | Asset level select/pintu gerbang (TollgateView 1-9) — "tollgate" = 关卡 (gerbang/level). Berisi icon stage, nomor stage, bintang rating, stage lock, boss marker. 9 stage area, 65 asset keseluruhan. |
| `townres/` | 47 | Asset kota/pemukiman/home base (TownView): background town, tombol bangunan (shop, hero hall, arena, embark, mercenary), NPC sprite, NPC dialog box. |

### File JSON Layout UI (CocoStudio)
Setiap file `XxxView_N.json` adalah definisi halaman UI yang bisa di-edit dengan Cocos Studio. Contoh skema:
```json
{
  "designWidth": 800, "designHeight": 480,     // Resolusi target: 800x480 landscape
  "widgetTree": {                              // Tree hierarki widget (Panel → ImageView/Button/LoadingBar)
    "classname": "Panel",                      // Root container
    "children": [
      { "classname": "ImageView",  ... },      // Gambar
      { "classname": "Button",     ... },      // Tombol interaktif (normal/pressed/disabled state)
      { "classname": "LoadingBar", ... },      // Progress bar
      { "classname": "Label", ... }            // Teks (di beberapa view)
    ],
    "options": { "x":0,"y":0, "width":800, "height":480, ... }
  }
}
```

Semua UI dirender oleh CocoStudio UI parser di C++, BUKAN pakai Android XML layout. Resolusi design **800x480 (WVGA landscape)** — standar Cocos2d-x tahun 2013-2016.

### Data XML/BIN ter-enkripsi
Semua file berikut dikaburkan (kemungkinan XOR cipher sederhana — pola yang sangat umum di game Cina Cocos2d-x era ini):
- `BattleArea.xml` — data peta/area pertarungan (bisa memiliki banyak area/stage)
- `EnemyGroup.xml` — konfigurasi kelompok musuh per stage (musuh apa saja yang muncul, jumlah, formasi)
- `achievement.xml` — data achievement in-game (bukan Google Play achievement)
- `activecode.xml` — data kode aktif/redeem gift code
- Dan semua file `anim*.bin` (386 file!)

Cara mengenkripsinya biasanya: `encrypted_byte = plaintext_byte XOR key_byte` dengan key statis yang hardcoded di `libcocos2dcpp.so`. Jika diekstrak, key biasanya sepanjang 4-16 byte dan polanya berulang. Tanda "EV~~", "Tey", "UgbO", "Yeb", "jbaF" yang sering muncul di akhir blok kemungkinan adalah tanda tangan setelah XOR (bagian dari padding/marker file yang sama berulang, membocorkan pola key).

---

### Spritesheet `.plist`
Format Zwoptex/Cocos2d-x. `MonsterHunter0.plist` mendeskripsikan rect di dalam sheet besar:
- Frame name (contoh: `1_bg.jpg`, `1_bottom.png`, `1_button_sound_1.png`)
- Rect: x,y,w,h di dalam sheet
- Offset (untuk trim)
- Original size

Sheet image biasanya berupa `.pvr.ccz` atau `.png` besar berisi gabungan banyak sprite kecil untuk efisiensi memori. Hanya 8 file plist di root, ada kemungkinan sheet-sheet lain di-embed dalam .bin atau berada di subfolder tanpa plist terpisah.

---

## 🎮 FITUR GAME YANG DAPAT DIDENTIFIKASI

Dari analisis UI (NamaView_N.json), PayId2, eventId2, asset names:

1. **Genre** — Action RPG / side-scrolling beat-em-up (MonsterHunter / 魔物猎人 / Brave Fighter di Google Play)
2. **Mode** — Single player campaign dengan stage-based progression (tollgate/关卡)
3. **Bahasa** — Cina (default) + Inggris (folder `english/`)
4. **Mata Uang Premium:** 水晶 (Crystal) + 钻石 (Diamond) + 金币 (Gold)
5. **Hero/Karakter** — Leonhardt (莱昂哈特), Dagda (达古达), Sylph (斯尔夫) — nama-nanya RPG Barat/Kimia/mitologi
6. **Mercenary (佣兵)** — Sistem rekrutan pendamping (legendary mercenary = tier tinggi)
7. **Equipment (装备):**
   - 武器 (weapon) - 落魄剑 (Depraved Sword) adalah senjatar start
   - 盔甲 (armor)
   - 吊坠 (pendant/accessory)
   - 符石 (rune stone)
   - 暗黑套装 (Dark Set)
   - 史诗套装 (Epic Set)
8. **Skills (技能):**
   - 摄魂斩 (Soul Slash)
   - 刀锋之舞 (Blade Dance)
   - 冥河破 (Styx Break)
   Bisa di-unlock via IAP (技能解锁)
9. **Item Konsumsi:** 血瓶 (HP potion/vial), 卷轴 (scroll), death revival (复活)
10. **Fitur Sosial:**
    - Facebook login + share + invitation (GameRequestDialog)
    - Google Play Games leaderboard (6 achievement)
    - Share achievement/scores
11. **Sistem IAP (In-App Purchase):**
    - Weekly pass (周卡)
    - Crystal paket ($4.99 - $192.99 — paket $192.99 TERMAHAL!)
    - Starter pack, Dark set, Hot sale
    - Karakter premium
    - Inventory expansion (16/64 slot bag)
    - Instan level-up (一键满级)
    - Double EXP/drop rate
    - Strong capture (强力捕捉 — kemungkinan monster capture mechanic)
12. **Iklan (Ads):** 5 jaringan — rewarded video (hadiah), offerwall (tugas untuk coin), interstitial, banner 2 posisi
13. **Analytics:** TalkingData (Cina) + Google Analytics — melacak SEMUA event penting (pembelian, kematian, level, pembukaan UI)
14. **Redeem Code (activecode.xml)** — sistem kode gift/penukaran
15. **Christmas Event** — `ChristmasView_1.json`, `Christmas_bg_1.png`, `Christmas_ok_1/2.png` — ada event musiman Natal
16. **Ad shut UI** (`Adshutui_1.json`) — tombol tutup/keluar iklan (ad interstitial close dialog)
17. **Save Game** — disimpan via SQLite (`libsqltest.so`) + mungkin SharedPreferences
18. **MultiDex** — karena menggabungkan banyak SDK, method count >65K sehingga butuh MultiDex.

---

## 🔒 ANALISIS KEAMANAN

1. **Public Key Google License** — disembunyikan di native C++ (`getGoogleKey()` native), upaya anti-pembajakan lumayan
2. **Signature verification purchase** — `Security.java` memverifikasi tanda tangan Google Play (mencegah Freedom/LuckyPatcher jika diimplementasi benar — tapi karena public key bisa diambil dari .so, masih bisa dibajak)
3. **Data ter-XOR** — aset game (anim/area/enemy/achievement XML) di-obfuscate, cukup menghalangi modder kasual
4. **Tidak ada proteksi tambahan** — tidak ada ProGuard mapping di Java? Sebagian class `com.c.c` ter-obfuscasi (tampak seperti sisa obfuscasi), namun kode `com.yunva.monsterhunter` TIDAK ter-obfuscasi.
5. **Facebook App ID terekspos** di strings.xml (tidak terlalu kritis, karena ID aplikasi FB memang publik)
6. **Kebocoran Privasi:** Integrasi TalkingData (Tiongkok) dapat mengirim data pemain ke server Tiongkok — masalah untuk rilis global.
7. **Izin WRITE_EXTERNAL_STORAGE** — di Android 6+ butuh izin runtime (tidak tampak di Java karena targetSdk=26, jadi harus minta izin runtime, tapi di kode MonsterHunter.java belum terlihat request)
8. **Tidak ada SSL pinning yang jelas** (OkHttp disertakan tapi pinning tidak terlihat di snippet) — traffic bisa di-intercept dengan mitmproxy jika tidak ada sertifikat yang di-pin.

---

## 📊 RINGKASAN STATISTIK REPO

| Metrik | Nilai |
|---|---|
| Baris `tree.txt` | 13.916 |
| File Java (decompile) | 4.863 |
| File Smali | 4.863 |
| File asset total | 1.201 |
| Folder res | 147 |
| Ukuran native code (.so) | ~5,94 MB |
| Ukuran signature META-INF | ~528 KB |
| SDK iklan yang diintegrasikan | 5-6 (IronSource, Unity, Vungle, Chartboost, AdMob, FB AN) |
| SDK jejaring sosial | 2 (Facebook, Google Play Games) |
| Analytics | 2 (Google Analytics, TalkingData/TendCloud GA) |
| Network lib | OkHttp3 + Retrofit2 + RxJava |
| Versi Android target | SDK 26 (Oreo 8.0) |
| Min Android | SDK 16 (Jelly Bean 4.1) |
| Orientasi | Landscape only |
| Resolusi UI design | 800×480 px |
| Mata uang IAP | USD (paket dari $1.99 s/d $192.99) |
| Item toko teridentifikasi | 28 (dari PayId2) |
| Event analytics tercatat | 34 (dari eventId2) |
| SKU IAP aktif | 10 (+ SKU lain di native) |
| Bahasa game | Cina + Inggris + 80+ bahasa untuk UI Android |
| ABI native | armeabi (32-bit ARM only, TIDAK 64-bit compliant) |
| Engine | Cocos2d-x (C++) |
| MultiDex | Ya |

---

## 🧭 ALUR EKSEKUSI DARI AWAL SAMPAI AKHIR (STARTUP RUNTIME)

1. **User tap ikon game** → Android launch `com.yunva.monsterhunter.MonsterHunter` (LAUNCHER activity)
2. `MonsterHunter.onCreate()` dipanggil:
   - Inisialisasi window fullscreen landscape
   - `FacebookSdk.sdkInitialize()` — setup Facebook SDK
   - `TalkingDataGA.init()` / `TDGAAccount` — inisialisasi analytics
   - Inisialisasi IronSource (app key), UnityAds, Vungle, Chartboost — load SDK iklan
   - Setup ad listeners (rewarded video, offerwall callbacks)
   - Inisialisasi Google Analytics tracker
   - Setup IabHelper dengan key dari `getGoogleKey()` (native)
   - `onCreateView()` → Cocos2dxActivity membuat GLSurfaceView (OpenGL view tempat C++ render)
3. **C++ Cocos2d-x mulai berjalan** (di dalam `libcocos2dcpp.so`):
   - Setup OpenGL context
   - Load file-file dari assets/: deserialize JSON UI, load spritesheet plist, baca data BIN ter-XOR (dekripsi XOR dengan key hardcoded)
   - Play `music_cinma.ogg` / loading screen → tampilkan `LoadingView_1.json` dengan progress bar
   - Load save game dari SQLite (`libsqltest.so`)
   - **Cek bahasa:** berdasarkan SharedPreferences, pilih asset root vs folder `english/`
4. **Masuk ke Main Menu** (`MainView`): tombol "Mulai Baru" / "Lanjutkan" (ksyx = 开始游戏), "More Games", "Hapus Save" (del)
5. **Register/input nama** (RegisterView) jika baru pertama main — pakai keyboard custom buatan game, bukan Android keyboard
6. **Town screen (TownView)** — hub:
   - Bangunan: Shop, Hero Hall, Embattle (formasi), Tollgate (stage), Arena, Mercenary, Task, Ranking
   - BGM `music_scene.ogg`
7. **Level Select (TollgateView)** — pilih stage 1-9+ area, bintang rating
8. **Battle (BattleView + folder battle/):**
   - BGM `music_battle*.ogg`
   - Side-scrolling action, skill: 落魄剑/摄魂斩/刀锋之舞/冥河破
   - Animasi hero/monster dari `anim*.bin`
   - SFX: atk_mon_N, hit_N, sound_attack_hand
   - HP bar, damage number, tombol skill/item/run
9. **Reward screen (SuccessView)** — flop kartu (FlopView) untuk random item reward
10. **Kembali ke town**, atau death → opsi复活 (revive) via IAP atau ulang stage
11. **Selama permainan berjalan:**
    - JNI calls dari C++ ke Java ketika pemain ingin beli (`payCallBack` / mCurPayIndex)
    - Java handle: launchPurchaseFlow → Google Play dialog → onIabPurchaseFinished → `payCallBack(result, payIndex)` ke C++ → C++ berikan item jika sukses
    - Tracking event via TalkingData dan Google Analytics untuk setiap aksi penting
    - Capped at appropriate points: interstitial ads setelah stage, rewarded video untuk revive/free currency, offerwall untuk coin gratis
12. **Saat tombol back ditekan** → `keyBack()` native → C++ menampilkan konfirmasi keluar, jika ya panggil `exitGame()` native yang memanggil `Activity.finish()`
13. **Facebook integration:** pemain bisa login FB, share skor, invite teman, lihat leaderboard Google Play
14. **Aplikasi pause/resume** saat lifecycle Android → onPause menghentikan BGM, onResume melanjutkan.

---

## ⚠️ CATATAN UNTUK MODDER / DEVELOPER

1. **TIDAK BISA di-build langsung dari repo ini.** Ini bukan project source Android Studio, ini ekstrak APK. Untuk memodifikasi:
   - Gunakan `apktool` untuk decode ulang
   - Edit file smali atau Java lalu compile ulang
   - Data .bin/.xml butuh di-dekripsi XOR dulu (cari key di .so dengan Ghidra/IDA)
2. **Logika gameplay TIDAK ADA di Java**, semuanya di `libcocos2dcpp.so` (C++). Modding seperti damage multiplier, unlimited gold memerlukan patch hex di library native.
3. **Bahasa Inggris sudah tersedia penuh** di folder `assets/english/` — artinya game ini RILIS GLOBAL (nama "Brave Fighter" bukan hanya untuk pasar Cina).
4. **Folder `classes.dex/sources/com/tendcloud/tenddata/game/ao.java`** terlihat seperti nama yang ter-obfuscasi (hanya `ao`) — kemungkinan wrapper antara C++ dan TalkingData.
5. **Versi 2.3.4 menunjukkan game ini SUDAH MATANG** (sudah sampai versi 2.3.4, banyak iterasi). Ada rujukan ke banyak view (BattleView_1 s/d 14, TollgateView 1-9, PayView 1-6, HeroView 1-8) yang artinya game berkembang dengan banyak update konten.
6. **Nama package asli adalah `com.joynow.monster.gp`** — "joynow" adalah developer (Shenzhen Joynow?), "monster" adalah seri game, "gp" singkatan dari Google Play.
7. **Nama activity `com.yunva.monsterhunter.MonsterHunter`** — "yunva" bisa jadi nama studio/publisher lain atau nama obfuscated developer. Ini adalah wrapper activity yang me-load Cocos2d-x.

---

## 📝 KESIMPULAN

**Brave Fighter v2.3.4** adalah game mobile action RPG side-scrolling berbasis Cocos2d-x yang dirilis di Google Play oleh developer "Joynow/Yunva" sekitar tahun 2016-2017 (berdasarkan build-data GPS Juni 2016). Game fiturnya lengkap untuk ukuran era itu: campaign stage-based, IAP crystal sampai $192, 5 jaringan iklan, Facebook & Google Play Games integration, analytics Tiongkok, event Natal, sistem bahasa dua bahasa (Cina/Inggris), dan 17+ layar UI yang semuanya di-desain di CocoStudio.

Repo ini bukanlah source code yang dapat di-build, melainkan hasil dekompilasi APK. Logika permainan 100% ada di native code `libcocos2dcpp.so` dan tidak dapat diakses dari Java tanpa reverse engineering C++. Java layer hanya berfungsi sebagai jembatan antara engine game dengan layanan Android (pembayaran, iklan, sosial, analytics).

---

*Laporan analisis ini dibuat berdasarkan pemeriksaan menyeluruh terhadap 13.916 baris tree, 4.863 file Java, 1.201 asset, manifest, native libraries, dan resource Android yang tersedia di repository.*
