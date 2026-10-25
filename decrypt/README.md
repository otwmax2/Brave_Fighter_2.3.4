# decrypt/ — Pipeline Dekripsi XML Brave Fighter v2.3.4

Folder ini berisi tool **siap pakai** untuk mengekstrak dan mendekripsi aset XML dari APK
Brave Fighter v2.3.4 ASLI. Setelah APK asli tersedia, jalankan satu perintah dan semua
22 file XML di `assets/` akan bersih menjadi XML UTF-8 yang dapat dibaca.

## Algoritma (terbukti dari reverse engineering `libcocos2dcpp.so`)

### Lapisan-1 — XOR rolling key 9-byte
- Kunci: `"hzkjhstgh"` (dari `.rodata:0x50f516`)
- Setiap byte `plain[i] = cipher[i] ^ key[(i + phase) % 9]`
- `phase` dideteksi otomatis dengan mencari magic header `"<?xml"` (hasilnya `phase=0`
  untuk semua file yang telah diuji).
- Dua byte pertama ciphertext selalu `"TE"` (marker).

### Lapisan-2 — RC4 + hex uppercase (hanya atribut string)
- Kunci RC4: `"akidbx"` (6 byte, dari `.rodata:0x50f516`)
- Untuk atribut bertipe string (`content=`, `name=`, `des=`, `title=`, `text=`, dst.),
  nilainya dienkripsi RC4 kemudian di-encode menjadi hex UPPERCASE (`[0-9A-F]{2n}`).
- Atribut numerik (`id=`, `value=`, `lv=`, `type=`, `price=`, dst.) ditulis PLAIN
  (tidak di-RC4) — ini divalidasi dari pemanggilan `Decrypt` yang hanya dijalankan
  ketika atribut bukan `value`/`id`.
- Hasil dekripsi RC4 adalah teks GBK; dikonversi ke UTF-8.

### Lapisan-3 — XOR 8-byte (khusus APK asset read)
- Di `libsqltest.so` JNI `getFile()`. Berlaku saat membaca file dari dalam APK
  (`AAssetManager_read`), TIDAK diterapkan ke file di `/data/data/`.
- Pipeline ini otomatis menangani lapisan ini dengan membaca file TERKOMPRESI
  langsung dari ZIP APK (melewati jalur JNI di perangkat).

## Cara Pakai (setelah APK asli tersedia)

```bash
python3 decrypt/extract_and_decrypt.py Brave_Fighter_2.3.4.apk apk_decrypted
```

Struktur output:
```
apk_decrypted/
├── apk/           ── ekstrak mentah assets/*.xml dari APK (ciphertext TE... apa adanya)
├── l1/            ── setelah XOR lapisan-1 (header XML sudah terbaca, nilai CN masih hex RC4)
├── l2/            ── SETELAH LAPISAN-2 (XML UTF-8 bersih, nama/deskripsi/teks Cina kebaca)
└── report.txt     ── ringkasan per file (status, ukuran, fase, jumlah atribut didekripsi)
```

## Status perbaikan file di repo saat ini (2026-10-25)

Dari 22 file XML di `assets/` repo:

| Grup | Jumlah | Status | File |
|---|---:|---|---|
| **A. Plain ASCII (tidak terenkripsi)** | 7 | ✅ Sudah bersih tanpa dekripsi apa pun | `activecode.xml`, `bossdrop.xml`, `data.xml`, `name.xml`, `normalToSkeleton.xml`, `reg.xml`, `roadblock.xml`, `wujinstate.xml` |
| **B. Struktur RC4 bisa didekode, ciphertext SEHAT** | 6 | ✅ Dapat didekripsi PENUH dengan script ini JIKA diberi APK asli | `title.xml`, `msg.xml`, `shop.xml`, `items.xml`, `task.xml`, `BattleArea.xml` |
| **C. Ciphertext rusak parah (EF BF BD transcoding)** | 9 | ❌ TIDAK DAPAT dipulihkan dari repo; APK asli WAJIB | `monster.xml`, `monstergroup.xml`, `equip.xml`, `skill.xml`, `gamelevel.xml`, `achievement.xml`, `EnemyGroup.xml`, `drop.xml` |

Penyebab kerusakan grup C: pada saat repo ini dibuat, ciphertext uppercase hex
(`0x30..0x46` + sisa bytes 0x80+) ditranskode secara salah ke UTF-8; setiap byte
≥0x80 diubah menjadi `EF BF BD` (U+FFFD) sehingga informasi byte asli hilang
permanen. Header XML (yang hanya berisi byte <0x80) tetap utuh dan membuktikan
bahwa kunci lapisan-1 `hzkjhstgh` fase-0 adalah benar.

## Savegame (`/data/data/com.joynow.monster.gp/files/monster_data.db`)

Database SQLite dengan 2 tabel (`herodata` dan `herodata1`), masing-masing 305
record `(id INTEGER PK, value TEXT)`. Nilai `value` dikodekan:

```python
import struct
def decode_val(hex_str):
    raw = bytes.fromhex(hex_str)
    dec = bytes(b ^ 0x8A for b in raw)
    return struct.unpack('<i', dec)[0]
```

Contoh: `59622D8A` → 11.004.115 (gold/id currency).
Shared preferences menggunakan key obfuscasi `fuck1..fuck24` (22 dari 24 dipakai);
nilai `MA==` = Base64 dari string `"0"`.

## Dependensi

Script hanya memakai Python 3 standar (`zipfile`, `struct`, `re`, `os`, `sys`) —
tidak perlu `pip install` apa pun.
