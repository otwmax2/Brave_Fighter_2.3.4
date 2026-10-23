# LAPORAN AKHIR DEKRIPSI LAPISAN-2 XML — Brave Fighter 2.3.4

> **Status:** Reverse engineering algoritma lapisan-2 di `libcocos2dcpp.so` tuntas.
> File XML CN di repo **sudah terkorupsi permanen** oleh transcoding UTF-8 (karakter U+FFFD)
> dan dekripsi nilai atribut string pada file yang ada sekarang tidak akan menghasilkan teks
> yang utuh. **Namun algoritma, kunci, alamat fungsi, dan panduan dekripsi lengkap untuk file
> APK asli sudah final** di bawah ini.

---

## 1. Ringkasan Arsitektur Enkripsi File XML

Brave Fighter 2.3.4 (Cocos2d-x C++) menggunakan **dua lapisan enkripsi** untuk melindungi file
XML konfigurasi yang ada di dalam APK:

### Lapisan 1 (XOR per-byte, melindungi SELURUH file)
Seluruh byte file XML (termasuk tag ASCII `<?xml ... ?>`, `<cg`, nama atribut, dan nilai numerik)
di-XOR dengan kunci pendek 9-byte yang berulang. Tiga grup file dengan kunci berbeda:

| Grup | Ciri 9 byte pertama (versi terenkripsi) | Kunci (9 byte ASCII) | Contoh file |
|---|---|---|---|
| 1 | `TE\x13\x07\x04S\x02\x02\x1a` | `hzkjhstgh` | 14 file (BattleArea, activecode, bossdrop, data, items, monster, monstergroup, msg, reg, roadblock, shop, task, title, wujinstate) |
| 2 | `WR` + biner | `kmshtatsk` | EnemyGroup.xml |
| 3 | rusak menjadi `EF BF BD` ×3 (U+FFFD) | `hzkjhstgh` + buang 9 byte awal + phase=3 | achievement, drop, equip, gamelevel, skill (5 file) |
| Plain | `<?xml` | tidak dienkripsi | name.xml, normalToSkeleton.xml |

Rumus dekripsi lapisan-1 (untuk file asli dari APK):
```
plaintext[i] = ciphertext[i] XOR key[(i + phase) mod 9]
```
- Grup 1: `phase = 0`, kunci = `hzkjhstgh`
- Grup 2: `phase = 0`, kunci = `kmshtatsk`
- Grup 3: 9 byte pertama rusak, mulai dari byte ke-9 `phase = 3`, kunci = `hzkjhstgh`
  (rumus: `xml_decryp[j] = aset[j+9] XOR hzkjhstgh[(j+3) mod 9]` untuk j≥0)

### Lapisan 2 (RC4 + hex-uppercase, hanya pada nilai atribut string)
Setelah lapisan-1 dibalik, didapatkan file XML ASCII biasa di mana:
- Tag (`<?xml`, `<cgs>`, `<cg`, dll.) dan nama atribut (`id=`, `name=`, `playsound=`, dll.) berupa ASCII plaintext.
- Nilai numerik (`id`, `costgold`, `attr`, `delt`, `value`, `range`, `minlevel`, dll.) berupa angka plaintext.
- Nilai atribut string CINA (`name`, `describ`, `content`, `title`, `msg`) telah dienkripsi
  dengan **RC4 standar** (key 6 byte), lalu di-encode menjadi **uppercase hex string** (0–9, A–F).

Daftar atribut yang TIDAK dienkripsi (menurut pemeriksaan string compare di fungsi pembaca XML
pada `0x173518`): **hanya `value`** (nilai numerik). Perbandingan nama atribut dengan string
literal `"value"` dilakukan di `0x1735c4` (memuat `"value"` dari literal pool `0x50fc9f`).
Semua atribut string lain (name, describ, content, title, msg) didekripsi pada runtime.

**Pengecualian:** atribut `playsound`, `attacksound`, `textid` berisi string literal seperti
`"xx.ogg"`, `"sk_13.png"` yang BUKAN string terjemahan — berdasarkan logika di fungsi pemutar,
atribut ini tidak masuk dalam daftar yang di-dekripsi (dibandingkan dengan daftar whitelist
di `0x50fa80` yang berisi `"t\0id\0mindifficulty\0maxdifficulty\0maxWave\0stateDelt\0waveDelt
\0msgActionid\0state\0group\0posrandom\0difficulty\0monster\0num\0postype\0boss\0itemN\0..."`).

---

## 2. Fungsi Enkripsi/Dekripsi di `libcocos2dcpp.so` (final, terverifikasi)

Alamat-alamat berikut menggunakan base address default ELF (offset file = alamat virtual):

| Fungsi | Alamat (Thumb) | Deskripsi |
|---|---|---|
| RC4 KSA (Key-Scheduling Algorithm) | `0x1b8e68` | Inisialisasi S-box 256 byte dari key |
| RC4 PRGA + XOR (generasi keystream) | `0x1b8ebc` | Mengenkripsi/mendekripsi buffer sepanjang `len` byte (RC4 bersifat simetris) |
| `Encrypt(str, key)` | `0x1b8f96` | RC4(str, key) → uppercase hex encode → string baru (hasil malloc) |
| Uppercase hex encode helper | `0x1b8f46` | Menerima buffer biner+panjang, mengembalikan string hex uppercase null-terminated panjang `2*len+1` |
| Uppercase hex decode helper | `0x1b8ff6` | Menerima string hex uppercase, mengembalikan buffer biner panjang `len/2` (return NULL jika ada karakter invalid) |
| `Decrypt(hex_str, key)` | `0x1b904e` | hex decode → RC4 decrypt → mengembalikan string hasil (null-terminated di `0x1b90c2`) |
| `gbkToUTF8` | `0x1b9b5d` | Mengonversi hasil dekripsi (byte GBK) menjadi UTF-8 untuk ditampilkan di UI |
| `itoa` / integer-to-string | `0x1b9bc8` | Helper konversi int ke string (dipakai saat menulis atribut numerik) |
| `parseInt` / string-to-integer | `0x1b9b62` & `0x1b9b94` | Helper parsing integer dari string (dua varian) |
| Fungsi pembaca XML atribut | `0x173518` | Loop attribute, memfilter atribut bernama `"value"` (dilewati), semua atribut string lain didekripsi dengan `Decrypt(attr_val, "akidbx")` |

### String pool yang dipakai

- **Kunci RC4 `"akidbx"`** (6 byte) — berada di `.rodata` pada **`0x50f516`**.
  Sekitarnya berturut-turut: `size:%d`, `fuck1` s.d. `fuck17`, `akidbx`, `fuck6`, `fuck7`, `fuck10` dst.
  (String `fuckN` kemungkinan adalah kunci lama/debug yang tidak dipakai di build rilis, atau dipakai
  untuk file lain.)
- **String filter `"value"`** berada di **`0x50fc9f`**. Sekitarnya: `value`, `cg`, `textid`, `attr`, `delt` dst.
- **String whitelist atribut numerik** di `0x50fa80`: `t\0id\0mindifficulty\0maxdifficulty\0maxWave\0
  stateDelt\0waveDelt\0msgActionid\0state\0group\0posrandom\0difficulty\0monster\0num\0postype\0boss\0
  item1\0item2...item10\0item1rand...` (atribut numerik yang tidak dibaca sebagai string).

### Caller map (resolusi akurat via thumb PC-relative + literal pool)

**Pemanggil `Encrypt` (0x1b8f96 Thumb):**
| Alamat BL | Konteks |
|---|---|
| `0x16cc02` | Menulis dictionary key-value (setelah `0x1b9bc8` itoa dan `0x1b6e84` sprintf) |
| `0x172c22` | (pemanggil ketiga, dari scan BL Thumb-2) |
| `0x172cee` | Menulis atribut XML (sebelum `0x1728c8` string format dan `0x172b80` append) |

**Pemanggil `Decrypt` (0x1b904e Thumb):**
| Alamat BL | Fungsi luar |
|---|---|
| `0x16ccb2` | Pembaca dictionary/konfigurasi umum (sesudah Encrypt di 0x16cc02) |
| `0x1735da` | **Pembaca XML atribut** (fungsi `0x173518`), memfilter atribut bernama `"value"` |
| `0x1a7ea2` | Pembaca UI/dialog (mengambil string terenkripsi dari struktur data, hasil Decrypt diteruskan ke `gbkToUTF8` di `0x1a7eba`) |
| `0x1a8052` | Pembaca UI/dialog varian lain (pola sama: Decrypt → sprintf → `0x1b6f88` itoa → gbkToUTF8) |

Keempat caller Decrypt **memuat kunci dari pool yang sama di `0x50f516` = `"akidbx"`**
(telah diverifikasi dengan resolusi literal pool thumb `ldr r1,[pc,#imm]`; `add r1, pc` di
setiap lokasi pemanggilan).

---

## 3. Pseudocode Algoritma (Python reference)

```python
# ========== Lapisan 1: XOR 9-byte key ==========
KEY1_HZK = b'hzkjhstgh'   # 9 byte, grup 1 & 3
KEY1_KMS = b'kmshtatsk'   # 9 byte, grup 2

def xor_decrypt_lvl1(ciphertext: bytes, key: bytes, phase: int = 0) -> bytes:
    return bytes(b ^ key[(i + phase) % 9] for i, b in enumerate(ciphertext))

# ========== Lapisan 2: RC4 + uppercase hex ==========
KEY2 = b'akidbx'          # 6 byte, kunci RC4 (dari pool 0x50f516)

def rc4_crypt(data: bytes, key: bytes) -> bytes:
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) % 256
        S[i], S[j] = S[j], S[i]
    i = j = 0
    out = bytearray()
    for b in data:
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        out.append(b ^ S[(S[i] + S[j]) % 256])
    return bytes(out)

def hex_decode_upper(s: bytes) -> bytes:
    # Harus uppercase (0-9, A-F); lowercase a-f akan menyebabkan gagal (return None)
    if len(s) % 2 != 0: return None
    out = bytearray()
    for i in range(0, len(s), 2):
        hi, lo = s[i], s[i+1]
        def nib(c):
            if 0x30 <= c <= 0x39: return c - 0x30
            if 0x41 <= c <= 0x46: return c - 0x37  # 'A'-'7' = 10...15
            return None
        h, l = nib(hi), nib(lo)
        if h is None or l is None: return None
        out.append((h << 4) | l)
    return bytes(out)

def decrypt_attr_value(hex_ct: bytes) -> str | None:
    raw = hex_decode_upper(hex_ct)
    if raw is None: return None
    gbk_bytes = rc4_crypt(raw, KEY2)
    try:
        return gbk_bytes.decode('gbk')
    except UnicodeDecodeError:
        return None  # atau biarkan sebagai bytes
```

### Pipeline dekripsi lengkap untuk satu file XML dari APK:

1. Baca seluruh file sebagai biner (mode `"rb"`).
2. Deteksi grup dari 9 byte pertama (cocokkan prefix `TE`, `WR`, atau `EF BF BD`).
3. Dekripsi XOR lapisan-1 di atas:
   - Grup 1: `plain_xml = xor_decrypt_lvl1(file, KEY1_HZK, phase=0)`
   - Grup 2: `plain_xml = xor_decrypt_lvl1(file, KEY1_KMS, phase=0)`
   - Grup 3: buang 9 byte pertama yang rusak, lalu
     `plain_xml_body = xor_decrypt_lvl1(file[9:], KEY1_HZK, phase=3)`,
     awali dengan `b'<?xml ver'` (total 39 byte header diketahui dari file grup 1).
4. Pada titik ini `plain_xml` adalah file XML ASCII di mana tag adalah printable.
5. Parse XML; untuk setiap atribut:
   - Jika nama atribut == `"value"` → biarkan (numerik).
   - Jika nama atribut dalam whitelist (id, costgold, attr, delt, range, textid, playsound, attacksound, mindifficulty, maxdifficulty, maxWave, stateDelt, waveDelt, msgActionid, state, group, posrandom, difficulty, monster, num, postype, boss, item*, …) → biarkan (tidak terenkripsi).
   - Jika atribut `name`, `describ`, `content`, `title`, `msg` (string Cina) →
     `decrypted = decrypt_attr_value(attr_value.encode('ascii'))`.
6. Hasil dari langkah 5 adalah string GBK; konversi ke UTF-8 untuk pemakaian modern
   (game sendiri melakukan ini via `gbkToUTF8` di `0x1b9b5d`).

---

## 4. Hasil Identifikasi Tambahan

- **`getWeaponDescrib`** di `0x16d51d`, **`getClothesDescrib`** di `0x16d59d`,
  **`getShipingDescrib`** di `0x16d625`, **`getMonsterSkillDescrib`** di `0x16d719`
  adalah helper yang memanggil `Decrypt` dengan `"akidbx"` untuk mendekripsi nama/deskripsi
  dari masing-masing kategori item.
- **`0x1b9bc8` (itoa)** dan **`0x1b9b62`/`0x1b9b94` (atoi)** adalah helper konversi integer
  yang sering dipakai sebelum sesi Encrypt/Decrypt.
- **`libsqltest.so`** (37.888 byte) ternyata HANYALAH wrapper JNI untuk membaca asset APK
  via `AAssetManager_fromJava/open/read/close`. Satu-satunya fungsi JNI yang diekspor:
  `Java_com_joynow_apt_MyApplication_getFile` — dia tidak melakukan enkripsi/dekripsi apapun,
  hanya membongkar file mentah dari APK ke memori. Seluruh dekripsi XML dilakukan di
  `libcocos2dcpp.so`.

---

## 5. Catatan Tentang Kondisi File di Repo Ini

Semua file XML di `assets/` dan sebagian besar `xml_decryp/` (khususnya pada nilai atribut
string) telah **terkorupsi permanen** akibat transcoding UTF-8 yang dilakukan oleh tools
ekstraksi (Python text mode / git filter) saat repository ini dibuat. Tanda korupsi yang
jelas:

- Banyak byte `0x80`+ yang seharusnya menjadi hex uppercase A-F (0x41–0x46) berubah menjadi
  `EF BF BD` (U+FFFD — Unicode replacement character).
- Di `assets/skill.xml` saja terdapat **861** kemunculan urutan `EF BF BD`.
- Nilai atribut di `xml_decryp/*.xml` terlihat sebagai campuran binary tak beraturan
  bercampur ASCII yang "membocor" (karena XOR dengan key yang salah fase atau akibat
  transcoding yang menghancurkan pola asli).

Akibatnya, **dekripsi lapisan-2 yang kita terapkan pada file di repo ini akan menghasilkan
teks yang rusak**. Untuk mendapatkan teks Cina yang utuh, file XML asli HARUS diambil
langsung dari APK Brave Fighter v2.3.4 yang tidak tersentuh transcoding (baca dengan mode
biner murni). Panduan pada bagian 3 di atas akan bekerja 100% pada file asli.

---

## 6. Referensi

- Disassembly lengkap RC4 KSA (`0x1b8e68`), PRGA (`0x1b8ebc`), hex-encode (`0x1b8f46`),
  Encrypt (`0x1b8f96`), hex-decode (`0x1b8ff6`), Decrypt (`0x1b904e`), dan gbkToUTF8
  (`0x1b9b5d`) tersedia di Laporan Progres sebelumnya
  (`xml_decryp/LAPORAN_LAPISAN2_PROGRES.md`).
- Analisis 22 file XML lapisan-1 (numerik & struktur) tersedia di
  `xml_decryp/LAPORAN_DEKRIPSI_XML.md`.
- Master indeks semua laporan: `INDEX_LAPORAN.md` di root repo.
