# 📱 ANALISIS DATA SAVE GAME PERANGKAT NYATA
## Ekstrak dari `/data/data/com.joynow.monster.gp/` (backup 7z)

> Sumber: file `com.joynow.monster.gp.7z.txt` dari lampiran user (138 entri, ~900 KB)
> Tanggal data: **23 Oktober 2026 15:32-15:37 WIB (UTC+7)** — sesi bermain 5 menit 27 detik
> Status: Pemain baru (baru memulai, sedang tutorial, level 0-1, bahasa Indonesia)
> Lokasi IP: `180.184.65.49` (Probolinggo, East Java, Indonesia — selaras dengan profil user)
> Device locale: `in_ID` (Bahasa Indonesia)

---

## 📂 File yang Berhasil Diekstrak

Save game APK tersebar di 3 lokasi standar Android:

| Folder | File | Ukuran | Keterangan |
|---|---|---|---|
| `shared_prefs/` | `Cocos2dxPrefsFile.xml` | 1050 B | **Save game utama native (paling penting!)** — key-value yang dipakai C++ via `CCUserDefault::sharedUserDefault()` |
| `shared_prefs/` | `PREFS_KEYCODE.xml` | tidak ada | Ternyata TIDAK dibuat (user belum menukar kode redeem sama sekali) |
| `shared_prefs/` | `com.joynow.monster.gp_preferences.xml` | 177 B | IP terakhir yang dipakai (hanya menyimpan hash IP) |
| `shared_prefs/` | `pref_file.xml` | 695 B | Tracking TalkingData session info |
| `shared_prefs/` | `tdid.xml` | 150 B | TalkingData Device ID |
| `shared_prefs/` | `td_pefercen_profile.xml` | 269 B | TalkingData profile (partner play.google.com) |
| `shared_prefs/` | `34d...|account_file.xml` | 396 B | Akun TalkingData (level=0, gender=UNKNOW, anonymous) |
| `shared_prefs/` | `com.google.android.gms.analytics.prefs.xml` | 503 B | Google Analytics state (versi, first_run) |
| `shared_prefs/` | `admob.xml` | 982 B | Konfigurasi AdMob (App ID, batas inflight ad) |
| `shared_prefs/` | `Mediation_Shared_Preferences.xml` | 10 KB | Cache IronSource mediation |
| `shared_prefs/` | `com.facebook...APP_SETTINGS.xml` | 970 B | Pengaturan SDK Facebook (bahasa pemulihan: Indonesia) |
| `shared_prefs/` | `AwOriginVisitLoggerPrefs.xml` | 369 B | WebView origin logger |
| `shared_prefs/` | `WebViewChromiumPrefs.xml` | cache | Prefs Chromium WebView |
| `shared_prefs/` | `pcvmspf.xml` | 295 B | Profiling config ter-enkripsi (protobuf biner) |
| `files/` | **`monster_data.db`** | 14 KB | **Database save game besar** (305 record hero/monster data) |
| `files/` | `gaClientId` | 36 B | Google Analytics client UUID |
| `files/` | `pyt.bin` | 18 B | File kecil 18-byte (binary, kemungkinan "pyt" = "pinyin/text" atau checksum) |
| `files/` | `tbd.txt` | 35 B | 18 flag integer yang dipisah `;` (tbd = tutorial-button-data?) |
| `databases/` | `google_analytics_v4.db` | 36 KB | DB Google Analytics (14 hit tersimpan yang belum terkirim) |
| `databases/` | `supersonic_sdk.db` | 16 KB | DB IronSource/Supersonic event log (2 event reward video) |

---

## 🔓 Save Game Utama (`Cocos2dxPrefsFile.xml`)

Ini adalah file yang dipakai native C++ via `CCUserDefault::sharedUserDefault()`. Developer mengacak nama key menjadi `fuck1`-`fuck24` untuk mempersulit modding.

```xml
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="isExisted" value="true" />
    <string  name="fuck3">  MA==     </string>   <!-- base64 "0" = 0 (string) -->
    <string  name="fuck4">  MA==     </string>   <!-- "0" -->
    <string  name="fuck5">  MA==     </string>   <!-- "0" -->
    <string  name="fuck6">  59622D8A </string>   <!-- "59622D8A" = hex string, berelasi dengan monster_data.db -->
    <int     name="fuck1"  value="1" />          <!-- kemungkinan: tutorial pass / profile slot / isMainCreated -->
    <string  name="fuck2">  MA==     </string>   <!-- "0" -->
    <boolean name="fuck24" value="false" />
    <boolean name="fuck23" value="false" />
    <boolean name="fuck22" value="false" />
    <boolean name="fuck21" value="false" />
    <boolean name="teach"  value="false" />      <!-- tutorial SELESAI (false=belum selesai)? atau telah dilihat -->
    <string  name="fuck17"> MA==     </string>   <!-- "0" -->
    <int     name="fuck16" value="0" />
    <int     name="fuck18" value="2026" />       <!-- TAHUN (sesuai setYear() dari Java) -->
    <string  name="fuck7">  59622D8A </string>
    <int     name="fuck13" value="0" />
    <int     name="fuck8"  value="1" />          <!-- ?bahasa? (1 = Inggris sesuai deteksi locale) -->
    <int     name="fuck12" value="0" />
    <int     name="fuck9"  value="0" />
    <int     name="fuck15" value="0" />
    <int     name="fuck14" value="0" />
    <string  name="name">   xxx      </string>   <!-- nama pemain: "xxx" (default / belum diubah) -->
    <int     name="fuck11" value="0" />
    <int     name="fuck10" value="0" />
</map>
```

### Interpretasi awal:
| Key | Nilai | Dugaan arti |
|---|---|---|
| `isExisted` | `true` | Save file sudah dibuat (bukan baru install) |
| `name` | `"xxx"` | **Nama hero** saat ini = "xxx" (nama default yang diketik pemain / nama placeholder) |
| `fuck8` | `1` | **Bahasa (1=Inggris)** — selaras dengan locale `in_ID` yang memaksa non-Cina → Inggris |
| `fuck18` | `2026` | **Tahun** — diset dari Java `setYear(date.getYear()+1900)` saat `compareTime()` |
| `teach` | `false` | Tutorial belum diselesaikan (masih dalam tutorial) |
| `fuck1` | `1` | Slot save / flag game-init |
| `fuck6`, `fuck7` | `"59622D8A"` | Nilai hex yang sama dengan isi `monster_data.db` (record id=9/11 = 0x00000000 sesudah XOR) — kemungkinan seed / checksum hero saat ini |
| `fuck3,4,5,2,17` | `"0"` (string) | Nilai default 0 (bukan integer, karena CCUserDefault simpan sebagai string) |
| `fuck9-16` | `0` | Berbagai counter yang belum dimodifikasi (gold? crystal? level? stamina?) |
| `fuck21-24` | `false` | Berbagai flag unlock/boolean (Dark set? IAP flags? banner tutup?) |

---

## 💾 Database `files/monster_data.db` — Data Hero/Monster (14 KB)

Database **SQLite** dengan 2 tabel identik: `herodata` dan `herodata1` (mungkin snapshot/backup), masing-masing **305 record** (seq akhir = 305). Skema:

```sql
CREATE TABLE herodata  (id INTEGER PRIMARY KEY, value TEXT);
CREATE TABLE herodata1 (id INTEGER PRIMARY KEY, value TEXT);
```

Setiap record = **`(id, hex_8char)`** — 4 byte data tersimpan dalam format hex string (little-endian), ter-obfuscasi dengan XOR mask.

### Pola obfuscasi yang teridentifikasi:
- Byte terakhir (b3) hampir selalu `0x8a` (302 record) atau `0xc0` (3 record) → ini adalah **tipe flag** (bukan bagian nilai).
- Byte ke-3 (b2) sebagian besar `0x2d` (206 record) atau `0x55` (82 record), sisanya variasi kecil.
- Byte pertama (b0) dan kedua (b1) adalah gabungan id dan nilai.
- Jika diasumsikan mask `XOR_KEY = {0x59, 0x62, 0x2d, 0x8a}` (berdasar record yang berulang dan kemungkinan bernilai 0 untuk slot kosong), maka:
  - Banyak record (id=9, 11, 13, 15, …) terdekripsi menjadi `00000000` (slot kosong)
  - Record id=1 terdekripsi `0x00002603 = 9731` (mungkin id actor?)
  - Record id=3 terdekripsi `0x00000002 = 2`
  - Record id=8, 10, 12, … (berpasangan) terdekripsi ke nilai yang sama
  - **Kemungkinan setiap id adalah indeks slot hero/monster (0-304)**, dan value berisi tipe monster + level + atribut yang dipadatkan dalam 3 byte.

> Catatan: untuk memecahkan encoding value ini secara tuntas perlu analisis dinamis (hook fungsi `DBUtil::selectData/insertData` saat game berjalan). Tapi pola XOR di atas sangat konsisten.

### Perbedaan `herodata` vs `herodata1`:
Perbandingan 30 record pertama menunjukkan **kedua tabel hampir identik**, kecuali id=8 dan id=9:
- `herodata` id=8: `5877558A` (setelah XOR: 0x00781501 = 7869697)
- `herodata1` id=8: `59622D8A` (setelah XOR: 0x00000000 = 0)
- `herodata1` id=9: `5877558A` (tidak 0!)

Ini menunjukkan `herodata1` adalah **snapshot state sebelumnya** (sebelum aksi terakhir), dipakai untuk rollback jika game crash.

---

## 🎯 State Game yang Dapat Disimpulkan

Berdasarkan data save ini:

1. **Pemain baru** — nama masih "xxx" (default / input awal terdeteksi), level 0, tutorial belum selesai.
2. **Durasi bermain 5 menit 27 detik** (dari `session.start` hingga `session.end`).
3. **Bahasa otomatis ke Inggris** karena locale `in_ID` (bukan `zh`/`zh_TW`).
4. **Belum ada pembelian** (mDoBuy=false, tidak ada jejak consumeAsync, tidak ada flag IAP aktif).
5. **Belum klaim kode redeem** (file `PREFS_KEYCODE.xml` tidak ada).
6. **Telah menonton 2 rewarded video** (dari `supersonic_sdk.db` events dengan type=RV dari AdMob + Mediation). Dari `events` table:
   - `{"spId":"0","provider":"AdMob","providerSDKVersion":...}` (Rewarded Video diminta)
   - `{"provider":"Mediation","status":"true",...}` (mediation berhasil)
7. **Tutorial events tercatat di GA**: `teachid:2, teachid:3, teachid:4, teachid:5, teachid:6, teachid:7` (6 tahap tutorial diselesaikan dalam 3 menit, dengan event "参数:1" (parameter:1) yang dipicu setelah tiap tahap).
8. **Tanggal di device**: 23 Oktober 2026 (sesuai dengan tanggal sistem di instruksi).
9. **Lokasi IP**: 180.184.65.49 (Probolinggo, Jawa Timur — sesuai lokasi user).
10. **Facebook tidak login** (tidak ada access token tersimpan; SDK cuma diinisialisasi).
11. **Belum login Google Play Games** (leaderboard tidak di-submit).

---

## 📊 File `tbd.txt` (18 flag integer)
```
0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;0;0;0
```
18 nilai dipisah `;` — satu-satunya nilai `1` di posisi ke-13. Kemungkinan ini adalah **flag tutorial / tombol** ("tbd" bisa "teach button done" atau "to be determined") — posisi ke-13 = 1 mungkin menandakan tahap tutorial tertentu sudah diinjak.

---

## 🔑 Kredensial Baru yang Ditemukan di Data Perangkat (bukan di APK)

Selain kredensial yang sudah ditemukan di APK, dari data perangkat kita bisa ekstrak:

| Kredensial | Nilai | Baru? |
|---|---|---|
| AdMob App ID | `ca-app-pub-8189737659012568~6752345938` | ✅ BARU |
| AdMob Publisher ID | `pub-8189737659012568` | ✅ BARU (sebelumnya tidak terlihat di APK karena dimuat saat runtime / ter-obfuscasi) |
| GA Client UUID | `2b670946-5e4f-4221-95ba-f3161c5d2886` | ID unik perangkat untuk analytics |
| TalkingData Device ID | `34d45c3c792353b48cd0fd50d5b104f84` | ID instalasi (TDGA) |
| IronSource UUID | `cd3e38c1-afe9-4d65-8cb1-92f4065845d3` | ID user IronSource |
| Session TDGA ID | `c2cba687-7300-4e51-b1bd-3e1cce109cf2` | ID sesi terakhir |
| Facebook SDK pemulihan | Bahasa pemulihan: **Bahasa Indonesia** ("Harap masuk ke dalam aplikasi ini sekali lagi untuk menghubungkan ulang akun Facebook Anda") | Mengkonfirmasi app diinstall dengan locale Indonesia |
| IP terakhir | `180.184.65.49` | IP jaringan saat bermain |

> Catatan: **Tidak ada AdMob Unit ID** yang ditemukan di APK atau data perangkat (hanya app ID). Ini artinya game saat ini tidak menampilkan banner AdMob (atau unit ID diambil dari server IronSource sebagai mediated network saja). Iklan yang aktif hanya IronSource (mediation) dengan AdMob sebagai provider untuk rewarded video.

---

## 🕐 Timeline Sesi Bermain (5 menit)

| Waktu (WIB) | Event |
|---|---|
| 15:32:20 | App dibuka, TalkingData session start |
| 15:32:21 | AdMob SDK init, config didownload; IronSource init |
| 15:32:23 | Rewarded Video provider mediation didaftarkan (AdMob + Mediation) |
| 15:34:30 | Event teachid:2 (tutorial step 2) |
| 15:36:16 | Event teachid:3 |
| 15:36:23 | Event teachid:4 |
| 15:36:29 | Event teachid:5 |
| 15:36:36 | Event teachid:6 |
| 15:36:46 | Event teachid:7 |
| 15:36:46 s.d. 15:37:47 | Berulang event "参数:1" (parameter/aksi 1) — user melakukan tap/aksi berulang (mungkin mencoba skill/battle) |
| 15:37:47 | App dipindah ke background (`app_last_background_time_ms`), session berakhir (5,5 menit) |
| 21:53 (saat screenshot) | Membuka GitHub di Chrome (screenshot yang dikirim) |

---

## 📂 Folder `savegame_data/`

Folder ini berisi copy dari semua file save yang berhasil diekstrak (dari 7z), sehingga nanti bisa di-inspeksi ulang atau dibuka dengan SQLite browser.

*Catatan: File `libsqltest.so` mengekstrak `idata.bin` ke folder ini saat app berjalan, tapi di backup ini tidak ada — kemungkinan `idata.bin` sudah di-extract di awal (ada kemungkinan berada di folder `app_textures/`, `app_pccache/` yang gagal diekstrak karena kerusakan arsip 7z. Folder `app_odex`, `app_textures`, `cache/`, `app_webview/`, `code_cache/` tidak berisi data save yang penting (hanya cache & temporary).*
