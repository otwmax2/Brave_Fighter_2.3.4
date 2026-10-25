# Brave Fighter v2.3.4 — MOD MENU (LGLModMenu v5)

Folder ini berisi **proyek Android Studio lengkap** untuk mengintegrasikan
floating mod menu (berbasis [LGLTeam/Android-Mod-Menu v5.0](https://github.com/LGLTeam/Android-Mod-Menu))
ke dalam game **Brave Fighter: Demon Revenge v2.3.4** (`com.joynow.monster.gp`).

## Fitur MOD

| Toggle | Deskripsi |
|---|---|
| ★ Unlimited Gold | Set gold ke 999.999.999 via memory patch (monster_data.db id yang relevan) |
| ★ Unlimited Crystals | Set crystal ke 999.999.999 |
| ★ God Mode | Hero tidak bisa mati (patch fungsi takeDamage native) |
| ★ One Hit Kill | Monster langsung mati dalam 1 hit |
| ★ Free Shopping | Semua pembelian toko (gold/crystal/RMB) gratis tanpa Google Play bayar |
| ★ No Ads | Semua iklan (reward video, interstitial, banner) di-skip; reward tetap diberikan |
| ★ Max Level | Hero langsung level 99 |
| ★ Unlock All Heroes | Semua karakter/merc terbuka |
| ★ x10 EXP | Perolehan EXP 10 kali lipat |
| ★ x10 Gold Drop | Gold drop 10 kali lipat |
| ★ No Skill Cooldown | Skill tidak punya cooldown |
| ★ Speed Hack x2 | Gerakan hero 2x lebih cepat |

## Struktur Folder

```
mod_menu/
├── README.md                 ── dokumen ini
├── build.gradle              ── root gradle (include ':app')
├── settings.gradle
├── app/
│   ├── build.gradle          ── dikonfigurasi untuk armeabi-v7a (cocok dengan game)
│   ├── proguard-rules.pro
│   └── src/main/
│       ├── AndroidManifest.xml   ── overlay service + permission
│       ├── assets/
│       │   └── menu/         ── ikon/asset mod (embedded base64 via loader)
│       ├── jni/
│       │   ├── Android.mk, Application.mk
│       │   ├── Menu/
│       │   │   ├── Menu.cpp      ── menu toggle + hook patches
│       │   │   ├── Jni.cpp
│       │   │   ├── Jni.hpp
│       │   │   └── Setup.cpp
│       │   ├── KittyMemory/ ── memory editor library (dari LGLModMenu)
│       │   ├── Dobby/       ── inline hook framework (dari LGLModMenu)
│       │   └── Includes/    ── Logger, obfuscate, macros
│       └── java/com/mod/menu/
│           ├── Menu.java         ── overlay UI (float window)
│           ├── Launcher.java     ── foreground service
│           ├── Preferences.java  ── simpan status toggle
│           ├── MainActivity.java ── transparan, meluncurkan game
│           └── Hook.java         ── hook Java-layer (billing bypass, ads)
└── scripts/
    ├── build.sh              ── kompilasi otomatis dengan Gradle
    ├── inject.py             ── menyuntik hasil kompilasi ke APK asli
    ├── patch_smali.py        ── patch smali (jika build tanpa JNI)
    └── signapk.py            ── menandatangani APK hasil modifikasi
```

## Cara Build (di Android Studio — dianjurkan)

1. Buka Android Studio.
2. Pilih **Open an Existing Project**, arahkan ke folder `mod_menu/`.
3. Hubungkan Android SDK dan NDK (minSdkVersion 16, sama dengan game).
4. Letakkan APK asli `Brave_Fighter.apk` di folder root proyek.
5. Jalankan **Build → Build Bundle(s) / APK(s) → Build APK(s)**.
6. Hasil: `app/build/outputs/apk/debug/app-debug.apk`.
7. Jalankan `python3 scripts/inject.py Brave_Fighter.apk app-debug.apk Brave_Fighter_MOD.apk`
   untuk menambahkan smali menu ke dalam APK game.
8. Pasang di HP Android.

## Cara Build (command line)

```bash
# Set ANDROID_HOME ke lokasi SDK
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/<versi>
cd mod_menu
./gradlew assembleDebug
python3 scripts/inject.py ../Brave_Fighter.apk app/build/outputs/apk/debug/app-debug.apk ../Brave_Fighter_MOD.apk
python3 scripts/signapk.py ../Brave_Fighter_MOD.apk
adb install -r ../Brave_Fighter_MOD_signed.apk
```

## Hook native (libcocos2dcpp.so)

Karena game menggunakan engine Cocos2d-x C++, patch gold/hp/damage dilakukan
lewat Dobby inline hook di native code. Alamat fungsi kunci (diperoleh dari Ghidra
decompilation di folder `../ghidra_decomp/`):

- **Gold counter**: menyimpan ke kolom `herodata.value` dengan XOR 0x8A; cukup patch
  penambahan gold agar mengalikan × 10 atau tulis langsung 999.999.999.
- **Fungsi takeDamage**: di kelas `CActor::takeDamage(float)` — hook untuk
  mengembalikan 0 apabila actor adalah hero, dan 99999 apabila target adalah monster.
- **Cooldown skill**: di `CSkill::update(float)` — set cooldown jadi 0.

Alamat offset aktual akan bervariasi tergantung build; gunakan offset finder di
Menu.cpp (pattern scan terhadap fungsi `rc4Crypt` sebagai anchor, atau cari pola
dari Ghidra listing yang tersedia).

## Hook Java layer

- **Billing bypass**: `com.joynow.monsterhunter.IabResult.isSuccess()` return true,
  `isFailure()` return false (patch smali di `patch_smali.py`).
- **No Ads**: `IronSource.showRewardedVideo()` dan `showInterstitial()`
  di-skip, langsung panggil callback reward (`vedioAdsOver()I` native).

## Catatan penting

- Menu overlay memerlukan izin **SYSTEM_ALERT_WINDOW** yang diminta saat pertama
  kali dibuka (dialog izin akan muncul).
- Kompilasi native memerlukan Android NDK (disarankan r21e/r25).
- LGLModMenu v5.0 mendukung Android 4.4 s.d. 16 (cocok dengan game yang minSdk=16).
- Game hanya memiliki arsitektur **armeabi** (32-bit ARM v7), jadi tidak perlu
  kompilasi untuk arm64-v8a/x86.
