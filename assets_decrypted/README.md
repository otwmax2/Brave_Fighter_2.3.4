# assets_decrypted/ — Semua XML Brave Fighter v2.3.4 sudah didekripsi 100%

Folder ini berisi **43 file XML UTF-8 bersih** hasil dekripsi penuh APK asli
`com.joynow.monster.gp` v2.3.4 (26,3 MB) menggunakan algoritma yang ditemukan
lewat reverse engineering `libcocos2dcpp.so`.

## Algoritma lapisan-1 (XOR 9-byte rolling key)

Tiga varian dipakai di APK asli (script `decrypt/extract_and_decrypt.py`
mendeteksinya otomatis dengan brute-force atas 2 kunci × 9 fase × 4 prefix):

| Variasi | File | Key | Fase | Prefix |
|---|---|---|---|---|
| A | BattleArea, items, msg, shop, task, title, monster, monstergroup, (semua english/ yang terenkripsi) | `hzkjhstgh` | 0 | 0 |
| B | EnemyGroup | `kmshtatsk` | 0 | 0 |
| C | equip, skill, drop, achievement, gamelevel | `hzkjhstgh` | 3 | 3 byte (`\x87\xC1\xD4`) |

## Algoritma lapisan-2 (RC4 + hex uppercase)

- Kunci RC4: `"akidbx"` (6 byte)
- Diberlakukan hanya pada atribut string (`content`, `name`, `des`, `describ`, `title`, `text`, `tips`, `musicname`).
- Atribut numerik (`id`, `value`, `hp`, `damage`, `price`, `quality`, `cgindex0`, `dropindex*`, `random*`, `getgold`, `opengold`, `battleValue`, `movespeed`, `attackDelt`, dll.) di-skip.
- Hasil dekripsi dalam GBK → dikonversi ke UTF-8.

## File english/

File di folder `english/` adalah terjemahan Inggris dari set yang sama,
disimpan dengan nama `english_<nama>.xml` di folder ini untuk menghindari
konflik nama. 7 file english (name.xml, normalToSkeleton.xml, activecode,
bossdrop, data, reg, roadblock, wujinstate) adalah plain UTF-8 tanpa enkripsi.

## Kredensial/CD key yang terungkap (activecode.xml)

File `activecode.xml` dan `english_activecode.xml` berisi **25 kode redeem**
(termasuk `77F574bB`, `t42nyp0F`, `b5gJ3HS2`, dll.) — ini kode gift/cheat
bawaan game.

## Penggunaan

File-file ini dapat langsung dibuka dengan text editor/XML viewer, atau di-feed
ke parser XML (beberapa file tidak memiliki root-element tunggal karena gaya
penulisan XML game yang hanya berupa deretan elemen di level atas — tidak kurang
satu bungkus root, namun semua tag sudah tertutup benar).
