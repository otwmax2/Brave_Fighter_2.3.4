# 📦 LAPORAN SUMBER DAYA ANDROID (`res/`, `AndroidManifest.xml`, META-INF, Lainnya)
## Brave Fighter v2.3.4 — Inventaris terakhir

> Tanggal: 2026-10-21

---

## 📄 AndroidManifest.xml — Ringkasan konfigurasi APK

| Field | Nilai |
|---|---|
| Package | `com.joynow.monster.gp` |
| Version code | **234** |
| Version name | **2.3.4** |
| Min SDK | 16 (Android 4.1 Jelly Bean) |
| Target SDK | 26 (Android 8.0 Oreo) |
| Application class | `android.support.multidex.MultiDexApplication` (multi-dex) |
| Launcher activity | `com.yunva.monsterhunter.MonsterHunter` (landscape, fullscreen NoTitleBar) |
| Screen orientation | **landscape** (game horizontal) |
| Theme | `@style/AppTheme` (fullscreen) |
| allowBackup | true |
| resizeableActivity | false (tidak mendukung multi-window) |
| Icon | `@drawable/icon` |
| Label (app name) | `Brave Fighter` |

### Permission yang diminta
1. `com.android.vending.BILLING` — In-App Purchase Google Play
2. `android.permission.INTERNET` — Akses internet (iklan, analytics, leaderboard)
3. `android.permission.ACCESS_WIFI_STATE` — Info jaringan WiFi
4. `android.permission.WRITE_EXTERNAL_STORAGE` — Tulis file ke storage (save game?)
5. `android.permission.ACCESS_NETWORK_STATE` — Cek koneksi jaringan

### Activities yang dideklarasikan
| Activity | Kegunaan |
|---|---|
| `com.yunva.monsterhunter.MonsterHunter` | Activity utama (game launcher), fullscreen landscape, action.MAIN + category.LAUNCHER |
| `com.facebook.FacebookActivity` | Jendela dialog login Facebook (translucent) |
| `com.ironsource.sdk.controller.ControllerActivity` | Jendela controller iklan IronSource |
| `com.ironsource.sdk.controller.InterstitialActivity` | Iklan interstitial IronSource |
| `com.ironsource.sdk.controller.OpenUrlActivity` | Pembuka URL dari IronSource |
| `com.google.android.gms.ads.AdActivity` | Iklan banner/interstitial Google AdMob |
| `com.chartboost.sdk.CBImpressionActivity` | Iklan Chartboost (video/rewarded) |
| `com.unity3d.ads.adunit.AdUnitActivity` | Iklan video Unity Ads (hardware accel) |
| `com.unity3d.ads.adunit.AdUnitSoftwareActivity` | Iklan Unity (software render, untuk device lama) |
| `com.vungle.publisher.VideoFullScreenAdActivity` | Video iklan Vungle (fullscreen) |
| `com.vungle.publisher.MraidFullScreenAdActivity` | MRAID rich media Vungle |
| `com.vungle.publisher.FlexViewAdActivity` | FlexView Vungle |
| `com.facebook.ads.AudienceNetworkActivity` | Facebook Audience Network iklan |

### Meta-data & Provider
| Meta-data | Nilai | Kegunaan |
|---|---|---|
| `unityplayer.ForwardNativeEventsToDalvik` | true | Integrasi Unity Ads (forward event ke Java) |
| `com.google.android.gms.version` | `@integer/google_play_services_version` | Google Play Services |
| `com.facebook.sdk.ApplicationId` | `fbapp_id = "1574479116116756"` | Facebook App ID |
| `com.facebook.sdk.ApplicationName` | `Brave Fighter` | Nama app FB |
| Provider `com.facebook.FacebookContentProvider` | authorities: `com.facebook.app.FacebookContentProvider1574479116116756` | Berbagi konten ke Facebook |

---

## 🔏 SERTIFIKAT PENANDATANGANAN APK (META-INF/CERT.RSA)

APK ditandatangani dengan **sertifikat self-signed developer**:

| Field | Nilai |
|---|---|
| Subject CN | `yst` (singkatan — kemungkinan inisial developer) |
| Issuer CN | `yst` (self-signed) |
| Algoritma | sha1WithRSAEncryption |
| Ukuran kunci | **RSA 1024-bit** |
| Exponent | 65537 |
| Serial | `53049b3b` (1392810811) |
| Terbit | 19 Februari 2014 |
| Kadaluwarsa | **22 Juni 3013** (masa berlaku 1000 tahun, tipikal sertifikat debug/self-signed) |
| Dibuat dengan | Android Gradle 3.0.1 |

> Catatan: Bukan sertifikat rilis produksi dengan kunci 2048-bit dari Play App Signing (karena distribusi via APK langsung). Modulus RSA 1024-bit dan CN "yst" menunjukkan ini adalah kunci penandatanganan internal developer Tiongkok (initials 杨/叶/余 + st?).

---

## 📁 FOLDER `res/` (Resource Android) — 147 subdirektori, 650+ file

### Drawable (Gambar)
| Folder | Jumlah file | Kegunaan |
|---|---|---|
| `drawable/` | 49 | Drawable umum (selector button, shape, icon default) |
| `drawable-hdpi/` | 114 | Gambar resolusi high-DPI (≃240 dpi) — termasuk icon app, banner iklan |
| `drawable-mdpi/` | 95 | Resolusi medium (≃160 dpi) |
| `drawable-xhdpi/` | 93 | Extra-high (≃320 dpi) |
| `drawable-xxhdpi/` | 83 | Extra-extra-high (≃480 dpi) |
| `drawable-xxxhdpi/` | 26 | Extra-extra-extra-high (≃640 dpi) |
| `drawable-ldpi/` | 1 | Low DPI (untuk device lama) |
| `drawable-tvdpi/` | 4 | TV DPI |
| `drawable-v21/` | 5 | Drawable khusus Lollipop (API 21+) |
| `drawable-v23/` | 1 | Drawable khusus Marshmallow (API 23+) |
| `drawable-anydpi-v21/` | 1 | Any-DPI v21+ |
| `drawable-ldrtl-*` | 4×4 = 16 | Layout Right-to-Left (mirror untuk bahasa Arab/Ibrani) |

File drawable yang penting:
- `drawable/icon.png` (di berbagai densitas) — ikon launcher APK
- `drawable*/common_*` — icon Google Play Services
- `drawable*/com_facebook_*` — tombol Facebook (login/like/send)
- `drawable*/notification_*` — ikon notifikasi
- `drawable*/adslist_*` — banner iklan list
- `drawable*/public_*_icon` — icon tombol SDK iklan

### Layout (XML Tata Letak)
| Folder | Jumlah file | Isi |
|---|---|---|
| `layout/` | 53 | Layout utama |
| `layout-v17/` | 14 | Layout khusus API 17+ (Android 4.2+) |
| `layout-v21/` | 1 | Layout khusus Lollipop |

Klasifikasi 53 layout:

**Layout game kustom (4 file):**
| File | Kegunaan |
|---|---|
| `edit_alert_dialog.xml` | Dialog input kode redeem (default text: `"請輸入您獲得的遊戲兌換碼,兌換獎品"`) |
| `edit_alert_insertname.xml` | Dialog input nama pahlawan (default text: `"请输入您的昵称"`, max 6 karakter) |
| `adslist.xml` | Daftar iklan (ListView id: `@+id/adlist`) |
| `adapter_list_layout.xml` | Item iklan di list (thumbnail 50×50 + title + artist/subtitle) |

**Layout Support Library / AppCompat (23 file abc_*)** — library standar Google (action bar, menu, alert dialog, search, spinner, popup).

**Layout Facebook (5 file com_facebook_*)** — Login, device auth, tooltip bubble, smart device dialog.

**Layout notifikasi Android (7 file notification_*)** — template notifikasi (media player, big picture, lines, chronometer).

**Layout SDK Iklan (2 file egame_sdk_*)** — layout SDK China Telecom (egame/爱游戏) pembayaran — **sisa dari channel distribusi China!**

**Layout Messenger (6 file messenger_button_*)** — tombol share Facebook Messenger (biru/putih, besar/kecil/bulat).

**Layout Material dialog (5 file select_dialog_*)** — single/multichoice & adapter support library.

**Lainnya:** `support_simple_spinner_dropdown_item`.

### Values (String, Warna, Dimensi)

Folder `values/` berisi 9 file:
- `strings.xml` — string aplikasi
- `colors.xml` — palet warna
- `dimens.xml` — ukuran/dimensi
- `attrs.xml` — atribut kustom widget
- `styles.xml` — tema & style (AppTheme)
- `bools.xml`, `integers.xml` — boolean/integer resource
- `drawables.xml` — alias drawable
- `public.xml` — deklarasi id publik

**String penting game (bukan SDK):**
| Key | Nilai | Kegunaan |
|---|---|---|
| `app_name` | `Brave Fighter` | Nama aplikasi di launcher |
| `app_id` | `223699000400` | **Facebook App ID** (alternatif? Atau ini AdMob App ID?) |
| `fbapp_id` | `1574479116116756` | **Facebook App ID utama** (di meta-data manifest) |
| `leaderboard_easy` | `CgkI0Lj_q8EGEAIQAA` | ID leaderboard Google Play Game Services (mode easy) |
| `leaderboard_hard` | `CgkI0Lj_q8EGEAIQAA` | ID leaderboard hard (id sama dengan easy? kemungkinan copy-paste developer) |
| `achievement_arrogant` | `CgkIwdGH4Z8XEAIQBg` | ID achievement "Arrogant" (Play Games) |
| `achievement_bored` | `CgkIwdGH4Z8XEAIQBA` | ID "Bored" |
| `achievement_humble` | `CgkIwdGH4Z8XEAIQBQ` | ID "Humble" |
| `achievement_leet` | `CgkIwdGH4Z8XEAIQBw` | ID "Leet" |
| `achievement_prime` | `CgkIwdGH4Z8XEAIQAg` | ID "Prime" |
| `achievement_really_bored` | `CgkIwdGH4Z8XEAIQAw` | ID "Really Bored" |
| `plus_example_deep_link_id` | `/+/mobile/android/` | Google+ deep link |
| `plus_example_deep_link_url` | `https://play.google.com/store/apps/details?id=com.joynow.monster.gp` | URL Play Store untuk share |

> String lain (ratusan) adalah string library Google Play Services, Facebook SDK, support library, dan SDK iklan dalam berbagai bahasa.

**Lokalisasi (values-*)**: Ada **130+ folder bahasa/region** — ini adalah lokalisasi dari library Google Play Services dan Facebook SDK saja (karena game sendiri hanya punya 2 bahasa: zh_TW/Cina dan en/Inggris, yang di-switch via `setLanguage()` di native). Beberapa folder:
- `values-zh-rCN`, `values-zh-rHK`, `values-zh-rTW` (Cina)
- `values-id` (Indonesia), `values-ms` (Melayu), dll.
- `values-en-rAU`, `values-en-rGB`, `values-en-rIN`
- 120+ bahasa lain merupakan terjemahan otomatis dari Play Services.

### Resource lain
| Folder | Isi |
|---|---|
| `anim/` (10 file) | XML animasi Android (fade_in, slide, dll. — kebanyakan dari support library untuk dialog/toast) |
| `color/` (17 file) + `color-v23/` | Color state list (warna button saat ditekan/fokus/disable) |
| `raw/` (1 file: `manifest.txt`) | **Perhatian!** File ini berisi konfigurasi SDK **China Telecom eGame (爱游戏)** pembayaran — peninggalan dari channel distribusi China. Isinya (encoding GBK): package `com.anben.yingcal`, app_id `300008588740`, app_key `A4CC0D9C67FD00F4`, mta_key `AZZ371Z7IDVJ`, dan 10+ kode produk (4元=¥4, 2元=¥2, 5元=¥5, 9元=¥9, 29元=¥29, dll. dalam mata uang RMB) untuk saluran pembayaran China (China Mobile/Unicom/Telecom). File ini tidak dipakai di build Google Play (karena memakai Google Play Billing), tapi tidak dibersihkan developer saat meng-export APK. |

---

## 📦 FOLDER LAINNYA

### `META-INF/`
- `MANIFEST.MF` — daftar SHA-1 digest untuk setiap file di APK (dihasilkan ADT/Gradle)
- `CERT.SF` — signature file (SHA1 digest of MANIFEST.MF)
- `CERT.RSA` — sertifikat RSA penandatanganan (sudah dianalisis di atas)
- `rxjava.properties` — metadata library RxJava (library reactive)

### `jsr305_annotations/`
- `Jsr305_annotations.gwt.xml` — konfigurasi GWT untuk JSR-305 annotation (`@Nullable`, `@Nonnull`), hanya dipakai saat kompilasi GWT, tidak berfungsi di APK.

### `build-data.properties`
File metadata dari Google Play Services library (bukan dari developer game):
- Build label: `gmscore_v4_RC13`
- Build time: Jumat 10 Juni 2016 (versi GPS ini dari tahun 2016)
- Changelist: 124593566
- Build tool: `blaze-2016.05.10-2` (sistem build internal Google = Blaze = Bazel)
- Target: `3p_monolithic_raw_pre_munge_deploy.jar` (third-party monolithic GPS client)

### `classes.dex/`
Folder ini berisi hasil decompile DEX oleh JADX:
- `sources/` — 4.863 file Java
- `smali/` — disassembled smali (bukan smali hasil baksmali default, tapi tersusun per-package)

### Obfuscated code
- `com/c/c/b.java` — class matematika utilitas sederhana (pembagian, modulus, `(i*i3)+i2`, `((i+i2)-1)%i2`) — kemungkinan sisa obfuscator dari suatu library (hanya berisi operasi aritmatika dasar, tidak berbahaya).
- `com/example/android_spt_v4/` — cuma `BuildConfig.java` dan `R.java` (package contoh/dummy support library).

### `lib/`
- `armeabi/libcocos2dcpp.so` (5,9 MB) — sudah dianalisis di `re_native/LAPORAN_REVERSE_ENGINEERING_NATIVE.md`
- `armeabi/libsqltest.so` (37 KB) — sudah dianalisis

### `assets/` (2.472 file)
- Sudah dianalisis penuh di `ASSETS_LAPORAN.md`

### `tree.txt` (879 KB)
Listing direktori recursive lengkap seluruh isi APK (13.916 baris).

---

## 🔑 RINGKASAN SEMUA KUNCI/ID/RAHASIA YANG TERUNGKAP DARI SELURUH APK

Tabel berikut merangkum SEMUA kredensial, key, ID yang berhasil diekstrak dari APK:

| Jenis | Nilai | Lokasi | Dipakai untuk |
|---|---|---|---|
| **Google Play License Key** (RSA publik) | `MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjDlHKssucTeeTJ9czwP1fuhbjeVOWZzEJ+sDO2MsUAvUuC7bVAqMv8FtYAgp/65wd4R1tP3KlLydXB+wVmOMzyRZwHk4I6rAC+TC8OLOPS5QiiFot0wSZK6MHYSRF4FuUn1EfZ1M2lXjUD5LdjRLF/IYNqc0iyf5kzHqvYvR1e6KfebXmGMWmChx90tQH2oSWzNqlv0HnUr6I7d1BJKDWZitdJsrO63crZjnXioegqe+269XlfXawnsSotGQ0CTa0ZR7oWfY/JtQFYo2cav/8Ilt5uaZ6bybNR5QsJVLycfJJOrFSZMKxvIVClAnWtCVEo0QYOUk5dzf9Xp2S9VMtQIDAQAB` | `libcocos2dcpp.so` .rodata @0x51514b, di-return oleh `getGoogleKey()` | Verifikasi tanda tangan transaksi IAP |
| **IronSource App Key** | `6e87efb5` | `MonsterHunter.onCreate()` | Inisialisasi SDK iklan IronSource (rewarded video, interstitial, offerwall) |
| **TalkingData App ID** | `5E5853774218FC6736ABEE2DF8403871` | `MonsterHunter.onCreate()` | Analytics Tiongkok (TalkingData GA) |
| **TalkingData Channel** | `GooglePlay4.0` | `MonsterHunter.onCreate()` | Identifikasi channel distribusi |
| **Google Analytics Tracking ID** | `UA-63388727-1` | `MonsterHunter.getTracker()` | Google Analytics tracking |
| **Facebook App ID** | `1574479116116756` | `res/values/strings.xml` (`fbapp_id` + `app_id` keduanya) | Login dan share Facebook |
| **Google Leaderboard ID** | `CgkI0Lj_q8EGEAIQAA` | `leaderboard_easy` & `leaderboard_hard` | Google Play Games leaderboard (nama "easy" tapi dipakai dua-duanya) |
| **Google Achievement IDs** | `CgkIwdGH4Z8XEAIQBg` (Arrogant), `...QBA` (Bored), `...QBQ` (Humble), `...QBw` (Leet), `...QAg` (Prime), `...QAw` (Really Bored) | strings.xml | 6 achievement Play Games |
| **China Telecom eGame App ID** (unused) | `300008588740` | `res/raw/manifest.txt` | Sisa channel distribusi China (tidak dipakai di Google Play build) |
| **China Telecom eGame App Key** (unused) | `A4CC0D9C67FD00F4` | `res/raw/manifest.txt` | Sisa kunci eGame China |
| **Tencent MTA Key** (unused) | `AZZ371Z7IDVJ` | `res/raw/manifest.txt` | Sisa Tencent Mobile Analytics |
| **XML XOR Key 1** | `hzkjhstgh` (9 byte) | Hardcoded di Java/native? (sudah dipakai untuk dekripsi 14 XML) | Enkripsi file XML di assets/ |
| **XML XOR Key 2 (EnemyGroup)** | `kmshtatsk` (9 byte) | Hardcoded di native (khusus file EnemyGroup.xml) | Enkripsi EnemyGroup.xml |
| **Asset XOR Key (idata.bin)** | 8-byte key (diteruskan dari Java String parameter) | Di Java side (diupload ke native via JNI) | Dekripsi file idata.bin |
| **APK Signing Certificate** | Self-signed RSA 1024-bit, CN=yst (2014–3013) | META-INF/CERT.RSA | Penandatangan APK |
| **IAP SKU daftar** | `week_card_01`, `diamonds_20.00`, `diamonds_60.00`, `diamonds_130.00`, `crystals_270.00`, `crystals_840.00`, `crystals_2000.00`, `diamonds_2500.00`, `package_01`, `hot_sale_01`, `package_02` | `MonsterHunter.mSku` | SKU Google Play Billing |
| **Harga IAP (sen USD)** | `[199, 499, 999, 1999, 4999, 9999, 19299, 2999, 1499, 499]` | `MonsterHunter.sHandler.handleMessage` | $1.99 sampai $192.99 (mingguan $1.99, 2500 diamond $29.99, 840 crystal $99.99, 2000 crystal $192.99) |

---

## 🎯 TEMUAN KEAMANAN KHUSUS

1. **Kunci lisensi RSA Google Play tersimpan di native (bukan Java)** — sebagai usaha anti-pembajakan, tapi berhasil diekstrak dari binary ARM dengan static analysis. Pemilik kunci privat (milik developer) bisa memalsukan tanda tangan pembelian; sebaliknya, modder bisa mem-bypass dengan mengganti alamat return `getGoogleKey()` ke string kosong atau kunci publik mereka sendiri.

2. **SSL Pinning** aktif — string `"SSL public key does not match pinned public key"` ada di `.rodata` libcocos2dcpp.so → komunikasi HTTPS (analytics, pembayaran) memverifikasi cert server. Perlu Frida/SSL-unpinning untuk intercept via Burp/mitmproxy.

3. **Anti-pembajakan flag `m_ispirate`** di `.bss` (1 byte), diset oleh beberapa deteksi, tapi tidak diketahui pasti kondisinya.

4. **File `res/raw/manifest.txt`** berisi kredensial channel China (eGame/爱游戏) yang TIDAK dihapus saat build Google Play → membocorkan app_key dan kode produk RMB yang bisa dipakai untuk meniru request ke SDK China (meski SDK itu sendiri tidak di-bundle di APK ini).

5. **SharedPreferences `PREFS_KEYCODE`** — menyimpan kode redeem yang sudah dipakai sebagai boolean per-kode (tidak ter-enkripsi). Pemain bisa me-reset SP atau memodifikasi untuk menukarkan kode berulang.

6. **Nama hero disimpan sebagai string tanpa enkripsi** di global `m_playerName`, dan save game (SQLite) tidak dienkripsi di-level DBUtil (hanya field individual yang mungkin dienkripsi AES).

7. **Sertifikat APK RSA 1024-bit** — kunci pendek, tidak direkomendasikan untuk aplikasi produksi modern.

---

*File ini melengkapi laporan sebelumnya: `ANALISIS_LENGKAP.md` (ringkasan APK umum), `xml_decryp/` (dekripsi 22 XML), `re_native/` (reverse engineering native lib), `ASSETS_LAPORAN.md` (inventarisasi asset game).*
