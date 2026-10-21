# 📦 re_native/ — Laporan Reverse Engineering Native Libraries

Folder ini berisi hasil reverse engineering menyeluruh terhadap dua native library
di APK Brave Fighter v2.3.4 (`com.joynow.monster.gp`):

| File | Ukuran | Ringkasan |
|------|--------|-----------|
| `lib/armeabi/libcocos2dcpp.so` | 5,9 MB | Seluruh game + Cocos2d-x engine static-link (Chipmunk, Box2D, OpenSSL, SQLite, WebP, OpenSL ES, libpng/libjpeg/tiff, tinyxml2, AES+SHA1 built-in, OpenGL ES 1/2 renderer). |
| `lib/armeabi/libsqltest.so` | 37 KB | Helper baca asset dari APK (AAssetManager), dengan XOR dekripsi 8-byte key. Nama menyesatkan (bukan SQL). |

## 📄 Isi folder ini

- `LAPORAN_REVERSE_ENGINEERING_NATIVE.md` — laporan lengkap, mencakup:
  - Inventarisasi 18.909 dynamic symbol dan klasifikasinya
  - Daftar lengkap 34 JNI export (19 game + 1 sqltest + 14 Cocos2d-x framework)
  - Disassembly Thumb/ARM dari seluruh JNI function penting (Google key retrieval, pay callback, redeem code, IAP, video ads, tutorial flags, get price)
  - Daftar 100+ class game C++ hasil demangle (CActor, CTileMap, CGameScene, CCHeroScene, CCShopScene, TownScene, AES, SHA1, DBUtil, dll)
  - Tabel alamat & ukuran **seluruh global variable state game** (+120 state penting)
  - Google Play License Key RSA 2048-bit lengkap yang di-hardcode di .rodata (untuk memverifikasi signature billing)
  - Kunci enkripsi yang berhasil di-ekstrak: XOR XML, XOR asset idata.bin, ZipUtils key (4 KB), AES, RSA publik
  - Catatan SSL Pinning yang mencegah mitmproxy
  - Diagram arsitektur kedua library
  - Catatan untuk modder/patcher/peneliti keamanan

## 🔧 Tool yang dipakai

- `pyelftools` — parsing ELF section, dynamic symbol table, relocation
- `capstone` — disassembler ARM/Thumb
- `grep` biner — pencarian string & byte pattern di .rodata/.data/.text
- Python 3 scripting (custom disassembler + symbol classifier)

Kendala: `binutils-arm-linux-gnueabi` (objdump/readelf untuk ARM cross-compile) tidak bisa
di-install di sandbox karena network terbatas; jadi semua analisis menggunakan alat
Python murni tanpa dependensi system.

## 🔑 Temuan kunci terpenting

1. **Google Play Public License Key** lengkap terekstrak di alamat `0x0051514b` — dapat
   dipakai untuk mem-bypass verifikasi lisensi / signed-billing verification.
2. **class `AES` dan `SHA1`** yang di-bundle di binary (bukan dari OpenSSL) — ada
   `AES_Cipher`, `AES_InvCipher`, `SubBytes`, `MixColumns`, `KeyExpansion`, dll.
   Dipakai untuk enkripsi save game/data internal.
3. **`m_ispirate`** flag (deteksi pembajakan) tersimpan di `.bss` alamat `0x5f9632` (1 byte).
4. **Semua state tutorial** (needTeachShop, isTeachCg, isTeachAttack, dll.) adalah
   boolean 1-byte ber-urutan di 0x5ea573..0x5ea585 — mudah di-patch.
5. **`libsqltest.so`** bukan library SQL sama sekali; ia melakukan:
   ```
   AAssetManager_fromJava → AAssetManager_open("idata.bin")
   → AAsset_getLength → AAsset_read ke buffer heap 8-byte malloc
   → XOR-dekripsi dengan kunci 8-byte (dari Java String parameter)
   → fopen(fname,"wb") → fwrite → fclose
   ```
   Jadi ia **mengekstrak `idata.bin` dari APK dan menyimpannya ke storage eksternal**
   (file data utama game, terindeks).
6. **SSL Pinning** aktif — string "SSL public key does not match pinned public key"
   ada di .rodata, berarti game menolak sertifikat palsu MITM.

## ⚠️ Yang BELUM tuntas (butuh analisis dinamis / IDA Pro)

- Dekripsi string bahasa Cina lapisan-2 di XML (setelah XOR 9-byte). Kuncinya tidak
  ada sebagai literal string di binary — dibangun saat runtime di fungsi parser XML.
  Perlu hook di fungsi `tinyxml2::XMLDocument::LoadFile` saat runtime.
- Tepatnya nilai 4096-byte ZipUtils encryption key (yang di-generate di runtime).
- Isi `idata.bin` yang sudah di-XOR-decrypt oleh libsqltest.so — harus ambil dari
  device setelah app berjalan, atau reverse XOR algorithm dari libsqltest lebih lanjut.
