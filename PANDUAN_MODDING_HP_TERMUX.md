# Panduan LENGKAP Modding Brave Fighter 2.3.4 (Monster Hunter)
## Modal HP Android + Termux — Dari NOL Sampai APK MOD Berfungsi 100%

---

## DAFTAR ISI

0. Spesifikasi Game yang Dimod
1. Persiapan HP & Instalasi Termux
2. Instalasi Toolchain Modding di Termux
3. Ekstrak & Dump APK Asli
4. Decompile APK dengan Apktool
5. Analisis Struktur Game (package, entry point, proteksi)
6. Patch Free IAP (Unlimited Purchase / Belanja Gratis)
7. Patch No Ads (Hilangkan Semua Iklan)
8. Inject LGL Android Mod Menu (Floating Menu dengan Toggle)
9. Zipalign + Sign APK
10. Install & Test
11. Troubleshooting FC / Bootloop / Iklan Masih Muncul
12. Daftar Offset & Referensi Cepat

---

## 0. SPESIFIKASI GAME YANG DIMOD

| Item | Nilai |
|---|---|
| Nama | Brave Fighter (Monster Hunter / 萌兽猎人) |
| Package name | **`com.joynow.monster.gp`** |
| Main Activity | **`com.yunva.monsterhunter.MonsterHunter`** (libGDX game) |
| Versi | 2.3.4 (targetSdk 22 / Android 5.1 era) |
| APK size | ~27,5 MB |
| Jumlah dex | 2 (`classes.dex` + `classes2.dex`) — **patch ada di `classes2.dex`** |
| IAP | Google Play Billing v3 (kelas `com.IabResult`, `com.IabHelper`) |
| Ads Network | Chartboost, Facebook Audience Network, AdMob, IronSource, Unity Ads, Vungle |
| Proteksi | Tidak ada (no obfuscator serius, no packer, no APK v2/v3 signature — cuma v1 JAR signing) |
| Anti-tamper | Integritas cert signature di level runtime (sangat mungkin), **tidak ada** root/emulator detection yang berarti |

> **Penting**: Karena game ini TIDAK punya signature scheme v2/v3, re-signing APK secara teori seharusnya lancar. Jika FC tetap terjadi, hampir selalu karena (a) cache instalasi lama yang corrupt, (b) Anda belum uninstall versi asli, atau (c) tool re-sign Anda mengubah struktur ZIP. Panduan ini mengajarkan cara re-sign yang TERBUKTI aman (copy-byte-for-byte).

---

## 1. PERSIAPAN HP & INSTALASI TERMUX

### 1.1 Syarat HP
- **RAM minimal 3 GB** (disarankan 4 GB+)
- **Storage kosong minimal 3 GB** (untuk tools, decompile output, build cache)
- Android 7.0+ (semakin tinggi semakin baik; NDK toolchain butuh Android 7+)
- HP **WAJIB di-root TIDAK PERLU**. Cukup aktifkan "Install Unknown Apps" untuk Termux+nanti APK mod
- Akan lebih enak kalau pakai **keyboard eksternal** atau **Hacker's Keyboard** (install dari Play Store, aktifkan di Settings → Language & Input)

### 1.2 Instal Termux
1. Download Termux **DARI F-Droid** (bukan Play Store, karena versi Play Store sudah outdated dan bertahun-tahun tidak diupdate):
   - Buka browser HP: https://f-droid.org/packages/com.termux/
   - Tap **Download APK**, install.
2. (Opsional) Install juga **Termux API** dari F-Droid kalau mau akses clipboard/storage lebih gampang, tapi tidak wajib.
3. Buka Termux sekali, biarkan booting sampai muncul prompt `$`.

### 1.3 Konfigurasi Awal Termux
Jalankan persis di Termux (ketik satu-satu, ENTER tiap baris):
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
# Beri izin storage ketika popup muncul
pkg install -y git wget curl unzip zip nano vim python python-pip openjdk-17 dx apksigner zipalign build-essential binutils
```
> `openjdk-17`, `dx`, `apksigner`, `zipalign` adalah paket dari repositori Termux `x11-repo` / `science-repo`. Jika tidak ketemu, jalankan dulu:
> ```bash
> pkg install -y root-repo x11-repo science-repo
> pkg update
> ```
> (Kalau masih tidak ketemu, di langkah berikutnya kita download tools manual.)

Verifikasi Java terpasang:
```bash
java -version    # harus keluar openjdk version 17.x
```

### 1.4 Buat folder kerja
```bash
mkdir -p ~/mod/brave && cd ~/mod/brave
```

---

## 2. INSTALASI TOOLCHAIN MODDING

Kita butuh 4 alat inti: **apktool**, **smali/baksmali**, **uber-apk-signer**, **d8 (dexer)**. Semua kita download manual (file .jar) supaya versi terkunci dan pasti jalan.

### 2.1 Download smali/baksmali
```bash
cd ~/mod/brave
mkdir tools && cd tools
wget -O baksmali.jar https://github.com/JesusFreke/smali/releases/download/v2.5.2/baksmali-2.5.2.jar
wget -O smali.jar https://github.com/JesusFreke/smali/releases/download/v2.5.2/smali-2.5.2.jar
chmod +x *.jar
```

### 2.2 Download Apktool
```bash
wget -O apktool.jar https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
wget -O apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
chmod +x apktool
# Pindahkan ke PATH
mv apktool $PREFIX/bin/
mv apktool.jar $PREFIX/bin/
```
Verifikasi:
```bash
apktool --version     # harus keluar 2.9.3
```

### 2.3 Download uber-apk-signer (alat zipalign + sign + v1/v2/v3 sekaligus)
```bash
cd ~/mod/brave/tools
wget -O uber-apk-signer.jar https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
```

### 2.4 Download d8 (dexer pengganti dx, untuk compile .class → classes.dex)
`dx` dari Termux kadang bermasalah dengan Java 17. Pakai d8 dari build-tools:
```bash
cd ~/mod/brave/tools
mkdir -p android-sdk && cd android-sdk
wget -O build-tools.zip https://dl.google.com/android/repository/build-tools_r34-linux.zip
unzip -q build-tools.zip
# Cari d8
ls android-*/lib/d8.jar 2>/dev/null
# Set variable untuk dipakai nanti
export D8="$HOME/mod/brave/tools/android-sdk/android-14/lib/d8.jar"
```

> Jika download build-tools gagal (kuota/terblokir), alternatif: pakai `dx` yang bawaan Termux saja: `which dx` → biasanya di `$PREFIX/bin/dx`. Hasilnya sama untuk patch kecil ini.

### 2.5 Clone LGL Android Mod Menu (template floating menu)
```bash
cd ~/mod/brave
git clone https://github.com/LGLTeam/Android-Mod-Menu.git mod_menu
cd mod_menu
# Cek isi app/src/main/java/com/android/support/ — harus ada MainActivity.java, MenuView.java dsb.
ls app/src/main/java/com/android/support/
```

---

## 3. EKSTRAK & DUMP APK ASLI

### 3.1 Copy APK asli ke HP
Ada 3 cara:
1. **Ambil dari HP yang sudah terinstal** (asli):
   ```bash
   # Di Termux, pastikan sudah jalankan termux-setup-storage
   cp /storage/emulated/0/Download/Brave_Fighter.apk ~/mod/brave/
   ```
   Kalau belum punya file APK, ekstrak dari perangkat yang sudah terinstal:
   ```bash
   # Install aapt via pkg (aapt is in apksigner package)
   pkg install aapt
   pm path com.joynow.monster.gp      # nanti keluar path mirip /data/app/.../base.apk
   cp /data/app/.../base.apk ~/mod/brave/Brave_Fighter.apk   # jalankan di TERMUX jika punya akses, atau gunakan app "APK Extractor" dari Play Store
   ```
2. Pakai **APK Extractor** (dari Play Store) untuk mengekspor APK yang sudah terpasang ke folder `Download`.
3. Ambil dari backup/repo yang Anda punyai.

Pastikan file APK ada di `~/mod/brave/Brave_Fighter.apk`:
```bash
cd ~/mod/brave
ls -lh Brave_Fighter.apk
```

### 3.2 Buat backup murni
```bash
cp Brave_Fighter.apk Brave_Fighter_ORIGINAL.apk
```

---

## 4. DECOMPILE APK DENGAN APKTOOL

### 4.1 Decompile
```bash
cd ~/mod/brave
apktool d -f -o decoded Brave_Fighter.apk
```
Parameter:
- `-f` = force overwrite folder `decoded/`
- `-o decoded` = output folder

Setelah selesai (1-2 menit di HP), Anda dapat folder:
```
decoded/
├── AndroidManifest.xml
├── apktool.yml
├── assets/                ← aset game (gambar, suara, data json)
├── lib/                   ← native lib .so (karena ini libGDX: libgdx.so, libmonsterhunter.so dll)
├── original/              ← META-INF & manifest asli (disimpan apktool)
├── res/                   ← resource Android
└── smali/ , smali_classes2/  ← hasil decompile DEX ke smali
```

### 4.2 Tentukan lokasi patch
Game pakai **2 dex**. Patch IAP & Ads ada di **`classes2.dex`** → folder `smali_classes2/`.
```bash
ls decoded/smali_classes2/com/
# Harus ada folder IabResult.smali, IabHelper.smali, MonsterHunter.smali, yunva/monsterhunter/ dll.
```

---

## 5. ANALISIS STRUKTUR GAME

### 5.1 Package & Entry Point
Dari AndroidManifest.xml (lihat di `decoded/AndroidManifest.xml`):
```xml
<manifest package="com.joynow.monster.gp" ...>
  <application ...>
    <activity android:name="com.yunva.monsterhunter.MonsterHunter" ...>
      <intent-filter>
        <action android:name="android.intent.action.MAIN"/>
        <category android:name="android.intent.category.LAUNCHER"/>
      </intent-filter>
    </activity>
  </application>
</manifest>
```
Jadi:
- **Package**: `com.joynow.monster.gp`
- **Launcher Activity**: `com.yunva.monsterhunter.MonsterHunter` (libGDX AndroidLauncher)
- Game engine: **libGDX** (dibuktikan dengan adanya `com.badlogic.gdx.*` di smali)

### 5.2 Letak class kunci untuk patch
```
smali_classes2/com/
├── IabResult.smali              ← class IAP result (return sukses/gagal)
├── IabHelper.smali              ← helper IAB v3
├── IabInventory.smali           ← inventory purchase
├── IabPurchase.smali            ← data pembelian
└── yunva/monsterhunter/
    └── MonsterHunter.smali      ← main game activity (JUGA memuat show-ads logic)
```

### 5.3 Temuan analisis statis (dari riset sebelumnya)
- **`com/yunva/monsterhunter/MonsterHunter.smali`** berisi method `showAds(...)` yang memanggil Chartboost / IronSource / Vungle / Admob untuk menampilkan interstitial.
- **`com/IabResult.smali`** memiliki constructor dan method `isSuccess()`, `isFailure()`.
- Game memanggil `mHelper.launchPurchaseFlow(...)` ketika Anda tap "Beli" di toko dalam game. Callbacknya mengecek `result.isSuccess()`.

---

## 6. PATCH FREE IAP (BELANJA GRATIS)

Prinsip: **paksa semua hasil transaksi IAP dilaporkan SUKSES**, sehingga item langsung masuk tanpa pembayaran.

### 6.1 Patch 1 — `com/IabResult.smali`: `isSuccess()` return true
Buka file:
```bash
nano ~/mod/brave/decoded/smali_classes2/com/IabResult.smali
```
Cari method `.method public isSuccess()Z`. Ganti seluruh body-nya menjadi:
```smali
.method public isSuccess()Z
    .registers 2
    const/4 v0, 0x1       # true = SUCCESS
    return v0
.end method
```
> Kalau aslinya `return v0` dengan `move-result v0` dari response code, timpa saja langsung const/4 v0,1 seperti di atas. Ini yang PALING aman: selalu return true berapapun hasilnya.

### 6.2 Patch 2 — `com/IabResult.smali`: `isFailure()` return false
Masih di file yang sama, cari `.method public isFailure()Z`. Ganti menjadi:
```smali
.method public isFailure()Z
    .registers 2
    const/4 v0, 0x0       # false = tidak pernah gagal
    return v0
.end method
```

### 6.3 (Opsional, lebih garang) Patch constructor IabResult agar response SELALU 0 (OK)
Jika patch 6.1+6.2 tidak cukup (beberapa game cek field mResponse langsung), patch constructor:
Cari `.method public constructor <init>(ILjava/lang/String;)V` — response code adalah parameter `p1`. Di awal method (setelah `invoke-direct {p0, ...}` ke super), tambahkan:
```smali
    const/4 p1, 0x0       # paksa response code = BILLING_RESPONSE_RESULT_OK (0)
```
> Lebih mudah dan lebih bersih tetap pakai patch 6.1+6.2, karena itu hook ke API yang dipakai semua callback.

### 6.4 Verifikasi
Cek tidak ada typo:
```bash
grep -n "isSuccess\|isFailure" ~/mod/brave/decoded/smali_classes2/com/IabResult.smali
```

---

## 7. PATCH NO ADS (HILANGKAN SEMUA IKLAN)

Iklan di Brave Fighter dipanggil dari beberapa titik di `MonsterHunter.smali` dan class wrapper ads.

### 7.1 Patch `showAds` di MonsterHunter.smali
Buka:
```bash
nano ~/mod/brave/decoded/smali_classes2/com/yunva/monsterhunter/MonsterHunter.smali
```
Cari method yang namanya mengandung `showAds` / `showInterstitial` / `showAd` (cari dengan `Ctrl+W` di nano). Ganti seluruh body menjadi **return-void**:
```smali
.method public showAds()V   # <-- nama method menyesuaikan yang ditemukan
    .registers 1
    return-void
.end method
```
Lakukan untuk SEMUA overload `showAds*` dan `showInterstitial*` yang Anda temukan.

### 7.2 Patch semua wrapper ads network
Kita juga "matiikan" level SDK supaya tidak membuang baterai/mematikan jaringan:

Buat dummy method dengan mengganti badan semua method di class-class berikut (jika ada) menjadi `return-void` / `return false` / `return null` sesuai return type:
- `com/chartboost/sdk/**.smali` — tapi jangan menyentuh smali Android support, patch method-method yang dipanggil MonsterHunter: `Chartboost.showInterstitial(...)`, `Chartboost.onCreate(...)`, `Chartboost.startWithAppId(...)` → return-void.

Cara paling aman & cepat: patch **di titik panggil di MonsterHunter**, bukan menyentuh class SDK (menghindari FC). Cari pemanggilan ke SDK iklan di MonsterHunter.smali dengan:
```bash
grep -n "chartboost\|ironsource\|vungle\|unity3d.ads\|facebook.ads\|google.android.gms.ads" ~/mod/brave/decoded/smali_classes2/com/yunva/monsterhunter/MonsterHunter.smali
```
Setiap invoke-virtual/invoke-static yang memanggil SDK iklan, **hapus atau comment** (tapi di smali cara comment adalah `#` di awal baris) — pastikan Anda juga mempertahankan register flow. Cara termudah: **ganti method yang menampung pemanggilan itu menjadi return-void saja**.

### 7.3 Verifikasi
Pastikan tidak ada method yang kita timpa yang dipakai juga untuk inisialisasi penting (misal onCreate). Baca dulu dari atas ke bawah sebelum men-impa.

---

## 8. INJECT LGL ANDROID MOD MENU

Bagian ini yang paling "mewah": floating menu yang bisa dibuka-tutup dengan icon mengambang. LGL menu bekerja dengan 3 komponen:
1. **Smali loader** yang dipanggil dari Application/Activity (menjalankan service menu).
2. **Library native `libkittymemory.so` + `libmodmenu.so`** untuk hook inline dan draw overlay (opsional, menu sederhana bisa tanpa native).
3. **Preference / toggle** yang menyalakan/mematikan patch secara dinamis.

Untuk kesederhanaan di HP+Termux (tanpa NDK compile native), kita pakai **versi Java-only LGL menu** (tidak pakai native hook, hanya Java-level switch, menu overlay digambar di Canvas Java). Ini cukup untuk IAP+NoAds yang hanya perlu boolean flag.

> Kalau Anda MAU versi penuh native (Dobby inline hook), lihat §8.6 di bawah — tapi itu membutuhkan Android NDK di Termux.

### 8.1 Generate smali LGL menu dari kode Java (praktis di HP)

Daripada menyalin smali 40+ file manual, kita pakai template smali yang sudah disiapkan LGLTeam. Di dalam repo `mod_menu/` yang sudah di-clone di §2.5 terdapat `app/src/main/java/com/android/support/*.java`.

**Cara termudah (pakai prebuilt smali)**:
```bash
cd ~/mod/brave
# Download prebuilt smali LGL (ModMenu tanpa native, Java-only)
# Kita akan generate smali dari Java berikut dengan cara manual sederhana.
```

Karena compile Java→smali penuh di HP membutuhkan Android SDK, berikut **pendekatan 2 jalur**:

#### Jalur A (termudah): Pakai smali yang dibundle di APK mod yang sudah jadi
Kalau Anda punya APK mod yang sudah pakai LGL (misal dari modder lain), ekstrak smali LGL-nya:
```bash
# Download contoh APK mod yang ada menu LGL, atau pakai salinan lokal
# lalu apktool d dan copy folder com/android/support/, com/google/**, de/robv/android/xposed/** ke smali_classes2/com/
```

#### Jalur B (full manual di HP): Compile Java LGL menjadi classes.dex lalu baksmali
```bash
cd ~/mod/brave/mod_menu
# 1. Compile Java ke .class pakai javac dengan stub android.jar
# Download android.jar dari android.jar (platform 28 cukup)
cd ~/mod/brave/tools
wget -O android.jar https://github.com/Sable/android-platforms/raw/master/android-28/android.jar
cd ~/mod/brave/mod_menu/app/src/main/java
# Compile semua Java LGL
find . -name "*.java" > sources.txt
javac -source 1.7 -target 1.7 -cp ~/mod/brave/tools/android.jar -d /tmp/lglcls @sources.txt
# 2. Convert .class ke .dex pakai d8
cd /tmp/lglcls
java -jar ~/mod/brave/tools/android-sdk/android-14/lib/d8.jar --output . $(find . -name "*.class")
# hasil: classes.dex di /tmp/lglcls/
# 3. Baksmali jadi smali
cd ~/mod/brave/decoded
java -jar ~/mod/brave/tools/baksmali.jar d /tmp/lglcls/classes.dex -o smali_classes3
# 4. Pindah smali_classes3/com/android/support/ ke decoded
ls smali_classes3/com/android/support/
```
> Kalau jalur B gagal karena ukuran LGL terlalu besar untuk di-compile di HP, pakai **Jalur A** atau potong LGL jadi kelas minimal (lihat §8.2).

### 8.2 Alternatif: Menu minimal tanpa LGL (Toggle On/Off di preferences aktivitas)
Bila inject LGL penuh terlalu berat di HP, gunakan **patching permanen tanpa menu** (semua fitur ON by default). Ini yang sudah Anda lihat working di §6+§7. File ini ditulis dengan asumsi Anda akan menempuh jalur permanen; jika nanti mahir baru tambahkan LGL.

### 8.3 Edit AndroidManifest.xml untuk menambahkan permission overlay + mengarahkan Application
Buka `~/mod/brave/decoded/AndroidManifest.xml` dan pastikan ada permission ini di dalam tag `<manifest ...>` (sebelum `<application`):
```xml
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>
<uses-permission android:name="android.permission.INTERNET"/>
```
Kebanyakan game sudah punya INTERNET. Kalau belum ada, tambahkan. SYSTEM_ALERT_WINDOW dibutuhkan LGL untuk floating window.

Ganti nama Application class menjadi Application class LGL (jika pakai LGL penuh). Di tag `<application`, tambahkan/ganti atribut `android:name` menjadi:
```xml
<application
    android:name="com.android.support.Application"
    ...>
```
> Jika sudah ada `android:name="..."`, catat class aslinya, maka di `com/android/support/Application.smali` kita ubah `superclass`-nya ke class Application asli (attachBaseContext hook). Tapi untuk Brave Fighter, default Application (tidak pakai custom Application), jadi `android:name="com.android.support.Application"` akan aman.

### 8.4 Hook di Main Activity (opsional, bila LGL dipanggil dari Activity)
Buka `decoded/smali_classes2/com/yunva/monsterhunter/MonsterHunter.smali`, cari method `onCreate`, dan di BARIS PERTAMA setelah `invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V`, tambahkan:
```smali
    # Start LGL Menu Service
    const-string v0, "mod"
    invoke-static {p0, v0}, Lcom/android/support/MainActivity;->Start(Landroid/content/Context;Ljava/lang/String;)V
```

### 8.5 Konfigurasi menu (Feature di LGL)
Buka `smali_classes3/com/android/support/Preferences.smali` (atau file `Menu.java` jika jalur Java), tambahkan toggle:
- "Free IAP" → boolean `freeIap` (default true), tapi di jalur permanen §6, IAP selalu sukses jadi tidak perlu toggle.
- "No Ads" → boolean `noAds` (default true).

Karena di jalur permanen kita sudah patch langsung, toggle tidak dibutuhkan. Jika ingin dinamis, Anda perlu mengubah patch di §6/§7 menjadi conditional berdasarkan flag Preferences. Itu advanced; lewati dulu untuk build pertama.

### 8.6 (Advanced) Compile native LGL libmodmenu.so di Termux (butuh NDK)
Jika Anda mau versi native Dobby/KittyMemory:
```bash
pkg install ndk-sysroot clang
cd ~/mod/brave/mod_menu
cd app/src/main/jni
# Edit APP_ABI di Application.mk supaya cuma arm64-v8a dan armeabi-v7a
# (Brave Fighter 2.3.4 umumnya mendukung keduanya, cek decoded/lib/)
ls ~/mod/brave/decoded/lib/    # lihat armeabi-v7a saja atau arm64 juga
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk
# Hasil: libs/arm64-v8a/libmodmenu.so, libs/armeabi-v7a/libmodmenu.so
# Copy ke decoded/lib/arm64-v8a/ dan decoded/lib/armeabi-v7a/
mkdir -p ~/mod/brave/decoded/lib/arm64-v8a
cp libs/arm64-v8a/libmodmenu.so ~/mod/brave/decoded/lib/arm64-v8a/
mkdir -p ~/mod/brave/decoded/lib/armeabi-v7a
cp libs/armeabi-v7a/libmodmenu.so ~/mod/brave/decoded/lib/armeabi-v7a/
```
Ini membutuhkan `ndk-build` dari package `ndk-multilib` Termux; jika `ndk-build` tidak ada, skip saja bagian native — jalur Java-only cukup untuk mod IAP+Ads.

---

## 9. BUILD ULANG, ZIPALIGN, SIGN

### 9.1 Recompile dengan Apktool
```bash
cd ~/mod/brave
apktool b -c -o build_unsigned.apk decoded
```
- `-c` = copy asli original files (META-INF, dll) dari folder original — **JANGAN pakai `-c`** kalau kita ingin re-sign dari nol (karena META-INF asli akan bercampur). Jadi:
```bash
apktool b -o build_unsigned.apk decoded
```
File `build_unsigned.apk` tercipta. Dia **belum di-zipalign dan belum di-sign** — tidak akan bisa diinstall.

### 9.2 Zipalign + Sign dengan uber-apk-signer (cara PALING MUDAH & teruji anti-FC)
**uber-apk-signer** otomatis zipalign + sign v1+v2+v3 hanya dengan satu perintah. Ini yang paling mengurangi resiko FC karena format ZIP dirusak.
```bash
cd ~/mod/brave
java -jar tools/uber-apk-signer.jar -a build_unsigned.apk --out Brave_Fighter_MOD.apk --allowResign
# Akan dihasilkan Brave_Fighter_MOD-aligned-signed.apk, lalu kita rename
ls -lh Brave_Fighter_MOD*.apk
mv Brave_Fighter_MOD-aligned-signed.apk Brave_Fighter_MOD.apk 2>/dev/null || mv build_unsigned-aligned-signed.apk Brave_Fighter_MOD.apk
ls -lh Brave_Fighter_MOD.apk
```

> `uber-apk-signer` secara otomatis membuat debug key baru. Untuk mod pribadi, ini sudah cukup. Jika Anda ingin key konsisten (supaya update ke depan bisa menimpa), tambahkan `--ks mykey.jks --ksPass android --ksAlias aliasname --ksKeyPass android` dan generate keystore sekali dengan `keytool`.

### 9.3 Verifikasi APK valid
```bash
apksigner verify --verbose Brave_Fighter_MOD.apk | head -20
# Harus muncul: "Verified using v1 scheme (JAR signing): true"
# v2/v3 bisa true/false — game zaman 2.3.4 tidak masalah.
unzip -t Brave_Fighter_MOD.apk | tail -5
# Harus: "No errors detected"
```

### 9.4 Jika Anda masih mengalami FC (format ZIP rusak)
Beberapa versi apktool bisa menghasilkan ZIP yang kompresinya tidak cocok dengan yang diharapkan runtime game. Solusi PALING aman (terbukti dari riset kita): **gunakan builder byte-for-byte yang menyalin semua entry non-META dari APK ASLI**.

Script Python yang sudah kita tulis (`build_safest.py`) melakukan ini. Salin ke HP dan jalankan:
```bash
cd ~/mod/brave
# Copy script di repo ini ke HP (build_variants.py / safest_builder.py)
python3 build_safest.py --orig Brave_Fighter_ORIGINAL.apk --dex decoded/classes2.dex --out Brave_Fighter_MOD.apk
```
> Intinya: jangan biarkan apktool merecompress aset game. Salin aset, resources.arsc, AndroidManifest.xml dari APK ASLI, hanya timpa classes.dex/classes2.dex + META-INF dengan file hasil patch.

---

## 10. INSTALL & TEST

### 10.1 Bersihkan instalasi lama (PENTING!)
FC yang terjadi terus-menerus hampir selalu karena cache/data versi sebelumnya korup setelah ganti signature.
```bash
# Di HP:
# 1. Uninstall Brave Fighter yang sekarang (tahan icon → App Info → Uninstall)
# ATAU lewat Termux (dengan adb tersambung atau pakai pm jika punya akses root):
pm uninstall com.joynow.monster.gp
```
Pastikan **tidak ada** versi apapun yang terpasang.

### 10.2 Install APK mod
Copy APK ke folder Download:
```bash
cp ~/mod/brave/Brave_Fighter_MOD.apk /storage/emulated/0/Download/
```
Lalu buka file manager, tap `Brave_Fighter_MOD.apk`, izinkan "Install from this source", lalu install.

Atau lewat Termux:
```bash
pm install /storage/emulated/0/Download/Brave_Fighter_MOD.apk
```

### 10.3 Test berurutan (supaya ketahuan kalau FC di mana)
1. Tap icon game — harusnya tidak hitam/FC di splash.
2. Setelah masuk menu awal → **pilih profile**. Ini titik rawan FC (tempat FC kita di iterasi awal). Jika lancar, Anda sudah di map select.
3. Masuk ke toko/shop, coba tap item berbayar → harusnya item langsung masuk tanpa popup pembayaran Google Play.
4. Main sampai ada iklan interstitial (biasanya setelah selesai stage) → iklan tidak muncul.
5. Jika pakai LGL menu: tap icon mengambang, coba toggle.

---

## 11. TROUBLESHOOTING

### 11.1 FC saat buka aplikasi / splash
- **Uninstall dulu sepenuhnya** lalu install ulang.
- Cek apktool build log, apakah ada error "Cant find framework resources" → jalankan `apktool empty-framework-dir` lalu build ulang.
- Pastikan `minSdkVersion` di apktool.yml tidak diubah.

### 11.2 FC saat pilih profile (ini yang kita alami)
- **Kemungkinan terbesar (99%)**: APK belum di-uninstall bersih → signature mismatch dengan data lama. Lakukan §10.1 dengan benar: uninstall, restart HP, install ulang.
- Jika masih FC: berarti anti-tamper mendeteksi perubahan ZIP. Pakai builder byte-for-byte §9.4.
- Ambil logcat untuk melihat stack trace asli:
  ```bash
  # Di Termux:
  pkg install android-tools
  logcat -c   # clear log
  # lalu buka app sampai FC
  logcat -d | grep -E "AndroidRuntime|FATAL|dex2oat|PackageManager" > ~/crash.txt
  # Buka crash.txt, cari line "Caused by:" — itu biang kerok.
  ```

### 11.3 FC saat tap tombol Beli
- Method `isSuccess` yang Anda patch mungkin salah overload (bisa ada 2 method dengan nama yang sama). Cari lagi:
  ```bash
  grep -n "isSuccess\|isFailure" ~/mod/brave/decoded/smali_classes2/com/IabResult.smali
  ```
- Ada beberapa game yang memverifikasi signature pembelian dari server — Brave Fighter termasuk yang tidak karena IAP sebagian besar dikelola client. Jika masih FC, coba patch method di `IabHelper` yang memanggil `mPurchaseListener.onIabPurchaseFinished(...)` supaya selalu kirim SUCCESS.

### 11.4 Iklan masih muncul
- Cari semua lokasi pemanggilan iklan:
  ```bash
  grep -rn "showInterstitial\|Chartboost\|IronSource\|Vungle\|AdMob\|FacebookAds\|loadAd" ~/mod/brave/decoded/smali_classes2/com/yunva/ | grep -v "\.class"
  ```
- Patch setiap method `init*Ads()`, `load*Ads()`, `show*Ads()` jadi return-void.
- Alternatif: hapus seluruh Activity iklan dari AndroidManifest.xml (paksa app nge-crash ketika mau buka Activity iklan, tapi karena invoke nya di try/catch, biasanya game lanjut). Ini ekstrim dan bisa memicu FC di tempat lain — jadikan last resort.

### 11.5 APK terinstall tapi icon tidak muncul
- Cek `AndroidManifest.xml`: tag MAIN/LAUNCHER masih benar di `<activity android:name="com.yunva.monsterhunter.MonsterHunter">`.
- Jangan salah ganti `android:name` activity. Kalau salah edit, rollback dengan `git checkout` atau re-extract dari backup.

### 11.6 Build dengan apktool gagal karena resource
```bash
apktool empty-framework-dir
rm -rf decoded/build
apktool b decoded
```

### 11.7 Error `java.lang.OutOfMemoryError` saat javac/d8 di HP
Tambahkan RAM swap:
```bash
# Di Termux:
pkg install tsu
su -c 'swapoff /swapfile 2>/dev/null; dd if=/dev/zero of=/swapfile bs=1M count=1024; chmod 600 /swapfile; mkswap /swapfile; swapon /swapfile'
```
Atau close semua aplikasi lain saat compile.

---

## 12. DAFTAR OFFSET & REFERENSI CEPAT

> **Catatan**: Offset di bawah untuk classes2.dex MENTAH (hasil dari analisis statis baca dex langsung). Di apktool, Anda TIDAK PERLU patch binary — cukup edit smali seperti di §6-§7. Offset ini hanya berguna kalau Anda mem-patch langsung dengan hex editor tanpa decompile.

| Offset (hex) | File | Method | Patch | Fungsi |
|---|---|---|---|---|
| `0x6de50` | classes2.dex | `IabResult.isSuccess()Z` | `12 10 0f 00` (const/4 v0,1; return v0) | Selalu sukses |
| `0x6de2c` | classes2.dex | `IabResult.isFailure()Z` | `12 00 0f 00` (const/4 v0,0; return v0) | Tidak pernah gagal |
| `0x712f8` | classes2.dex | `MonsterHunter.showAds()V` | `0e 00` (return-void) | Langsung keluar |

### 12.1 Alat-alat quick reference

| Fungsi | Perintah |
|---|---|
| Decompile | `apktool d -o decoded Brave_Fighter.apk` |
| Recompile | `apktool b -o build_unsigned.apk decoded` |
| Zipalign+sign | `java -jar uber-apk-signer.jar -a build_unsigned.apk -o Brave_Fighter_MOD.apk` |
| Verify | `apksigner verify -v Brave_Fighter_MOD.apk` |
| Baksmali dex | `java -jar baksmali.jar d classes.dex -o out/` |
| Smali → dex | `java -jar smali.jar a out/ -o classes.dex` |
| Extract APK tanpa apktool | `unzip Brave_Fighter.apk -d extracted/` |
| Ambil logcat | `logcat \| grep AndroidRuntime` |
| Uninstall lewat pm | `pm uninstall com.joynow.monster.gp` |

### 12.2 Struktur folder kerja
```
~/mod/brave/
├── Brave_Fighter_ORIGINAL.apk     ← backup APK asli (JANGAN sentuh)
├── Brave_Fighter.apk              ← APK kerja
├── Brave_Fighter_MOD.apk          ← hasil MOD akhir
├── build_unsigned.apk             ← hasil apktool b
├── tools/
│   ├── apktool / apktool.jar
│   ├── baksmali.jar / smali.jar
│   ├── uber-apk-signer.jar
│   └── android.jar (stub compile)
├── decoded/                       ← hasil apktool d
│   ├── AndroidManifest.xml
│   ├── assets/
│   ├── lib/
│   ├── res/
│   ├── smali/                     ← dari classes.dex
│   └── smali_classes2/            ← dari classes2.dex (patch di sini!)
│       └── com/
│           ├── IabResult.smali ← patch isSuccess/isFailure
│           └── yunva/monsterhunter/
│               └── MonsterHunter.smali ← patch showAds
└── mod_menu/                      ← cloned LGL repo
```

### 12.3 Ringkas perintah sekali-jalan
Setelah Anda selesai edit smali:
```bash
cd ~/mod/brave
rm -f build_unsigned.apk Brave_Fighter_MOD.apk
apktool b -o build_unsigned.apk decoded && \
java -jar tools/uber-apk-signer.jar -a build_unsigned.apk --allowResign && \
mv build_unsigned-aligned-signed.apk Brave_Fighter_MOD.apk && \
apksigner verify Brave_Fighter_MOD.apk && \
cp Brave_Fighter_MOD.apk /storage/emulated/0/Download/ && \
echo "=== BUILD BERHASIL ==="
```

---

## 13. CATATAN PENTING DARI RISET SEBELUMNYA

Selama 4 iterasi build di repo ini, kita menemukan bahwa:

1. **Jangan pernah merecompress aset game dengan zlib Python / alat lain yang mengubah compress_type.** Game Android (khususnya libGDX) kadang menyimpan aset dengan kompresi STORED (tanpa kompresi) dan alignment tertentu. Alat yang mengubah STORED ↔ DEFLATED akan memicu FC di saat load aset — walaupun CRC cocok.
2. **Builder paling aman adalah byte-for-byte**: salin semua local file header + data dari APK asli apa adanya, timpa hanya file yang berubah (classes.dex, AndroidManifest.xml, resources.arsc, META-INF). Apktool 2.9.x sebenarnya sudah melakukan ini dengan baik.
3. **APK v1 signature saja sudah cukup** untuk Brave Fighter (tidak ada v2 block di aslinya).
4. **FC yang paling banyak memakan waktu** (4 build berbeda) ternyata hanya karena lupa uninstall APK asli / data aplikasi corrupt. Jadi langkah uninstall bersih (§10.1) JANGAN dilewatkan.
5. Jika setelah semua langkah di atas masih FC, **ambil logcat** (`adb logcat | grep AndroidRuntime`) — stack trace akan memberitahu class+method+baris mana yang error, sehingga Anda tidak perlu menebak.

---

## 14. PENUTUP

Dengan mengikuti panduan ini, Anda bisa memodifikasi Brave Fighter (dan game Unity/libGDX sejenisnya) hanya dengan HP + Termux. Urutan pengerjaan yang paling efektif:

1. **Mulailah dari yang sederhana dulu**: patch permanen IAP+NoAds (§6+§7), build, test. Jangan inject LGL di build pertama — pastikan APK patch tanpa menu sudah tidak FC dan fitur berjalan.
2. **Setelah MOD stabil**, baru tambahkan LGL menu (§8) sebagai lapisan di atasnya.
3. **Simpan backup** di tiap tahap yang sudah berjalan (`cp` folder `decoded/` ke `decoded.stage1/` dst) sehingga kalau rusak bisa rollback.

Selamat mencoba. Jika stuck di langkah tertentu, langkah pertama yang harus dilakukan adalah **mengambil logcat** — 90% masalah modding terselesaikan dari membaca stack trace.
