# 📂 xml_decryp/english/ — XML versi Inggris yang sudah didekripsi

Folder ini berisi **21 file XML** dari `assets/english/` yang telah didekripsi dengan
XOR key yang sama seperti XML Cina (disesuaikan parameter `skip` dan `phase` per file).

## Status dekripsi per file

| File | Key | skip | phase | Catatan |
|---|---|---|---|---|
| `BattleArea.xml` | `hzkjhstgh` (key1) | 0 | 0 | Tanpa header 9-byte acak |
| `achievement.xml` | key1 | 0 | 3 | Tanpa header; phase=3 seperti mitra Cinanya |
| `activecode.xml` | key1 | 0 | 0 | Daftar kode redeem (8-karakter alfanumerik) |
| `bossdrop.xml` | key1 | 0 | 0 | |
| `data.xml` | key1 | 0 | 0 | Data konfigurasi (sangat pendek, 738 byte) |
| `drop.xml` | key1 | 0 | 3 | |
| `equip.xml` | key1 | 0 | 3 | **Nama weapon 4 awal terbaca plain** (Blade, King sword, Muramasa, Stella Sword); weapon tingkat tinggi namanya masih ter-obfuscasi lapisan-2 (binary garbage di field `name` dan `describ`) |
| `gamelevel.xml` | key1 | 0 | 3 | |
| `items.xml` | key1 | 0 | 0 | |
| `monster.xml` | key1 | 0 | 0 | |
| `monstergroup.xml` | key1 | 0 | 0 | Paling besar (57 KB) |
| `msg.xml` | key1 | 0 | 0 | Pesan tutorial & UI — **banyak yang sudah berbahasa Inggris plain** (contoh: "Move rocker to control your character", "Tap the bottom on the right to attack", "Buy it to reborn your hero!", "Level max", "Not enough gold,go and get some!", "Skill \"Blade storm\" is unlock", "Stamina is full", dll.), tapi beberapa pesan event khusus masih ter-enkripsi lapisan-2 |
| `name.xml` | — | — | — | **Plain text** (tidak dienkripsi) |
| `normalToSkeleton.xml` | — | — | — | **Plain text** |
| `reg.xml` | key1 | 0 | 0 | |
| `roadblock.xml` | key1 | 0 | 0 | |
| `shop.xml` | key1 | 0 | 0 | **Daftar barang toko terbaca!** Nama item shop dalam bahasa Inggris plain: "Team expansion" (40 cry), "Self-regeneration" (20), "Double loot rate" (20), Gold packages 10K-180K, Diamond packages 20-5000 ($1.99-$192.99), Reborn (5), 16 bags (10), Stamina recovery (10) — texturename menunjuk ke `english/shop_goods_*.png` |
| `skill.xml` | key1 | 0 | 3 | **Nama skill plain**: Combat, Swift, Imprisonment, Violence, Flame chop, Shield on, Heal, Defend, Flame, Strong, ... (dengan deskripsi bahasa Inggris yang dapat dibaca) |
| `task.xml` | key1 | 0 | 0 | |
| `title.xml` | key1 | 0 | 0 | |
| `wujinstate.xml` | key1 | 0 | 0 | |

## Temuan dari XML Inggris yang sudah plain

### Skill names (english/skill.xml)
- id 0: **Combat** — "%a% attack twice" (costgold 100, range 120)
- id 1: **Swift** — "Increase %a% unit's move speed around" (range 800)
- id 2: **Imprisonment** — "Durance %a seconds" (stun, delt=2, range 150)
- id 3: **Violence** — "%a% cause 150% damage" (range 800)
- id 4: **Flame chop** — "Cause %a%damage" (delt=120, range 280)
- id 5: **Shield on** — "Increase %a% defence" (range 800)
- id 6: **Heal** — "Recovery %a% health of all units" (range 400)
- id 7: **Defend** — "Increase unit's %a% defence around" (range 800)
- id 8: **Flame** — "Cause %a% damage" (delt=50, range 250)
- id 9: **Strong** — "Increase %a health" (range 800)

### Shop goods (english/shop.xml) — harga dalam crystals/koin
| id | Nama | Harga | Keterangan |
|---|---|---|---|
| (first item rusak) | | 40 | ? (deskripsi terenkripsi, "cooling time" terlihat) |
| 4 | Team expansion | 40 | +2 ruang di tim |
| 5 | Self-regeneration | 20 | 5% HP tiap 4 detik |
| 6 | Double loot rate | 20 | Peluang loot ganda saat buka peti |
| 24 | Gold Bonus | 99 | 100K gold + 20 potion (weekly/daily bundle) |
| 7 | 10000 Gold | 20 | |
| 8 | 30000 Gold | 50 | 25K+5K bonus |
| 9 | 60000 Gold | 90 | 45K+15K bonus |
| 10 | 120000 Gold | 160 | 80K+40K bonus |
| 11 | 180000 Gold | 200 | 100K+80K bonus |
| 22 | Diamonds Bonus | 999 | 350 diamonds + 7K gold + 14 potions (7 hari/weekly card) |
| 12 | 20 Diamonds | 199 | $1.99 |
| 13 | 55 Diamonds | 499 | $4.99 |
| 14 | 120 Diamonds | 999 | $9.99 |
| 15 | 270 Diamonds | 1999 | $19.99 |
| 16 | 840 Diamonds | 4999 | $49.99 (deskripsi 480 diamond — typo developer?) |
| 17 | 2000 Diamonds | 9999 | $99.99 |
| 18 | 5000 Diamonds | 19299 | $192.99 (ini 2500 di Java mSku — lihat `mSku[7]=diamonds_2500.00`; harga 2999 sen di Java — beda! Ada ketidaksesuaian antara Java dan XML Inggris. Java mengatakan `2999`, XML mengatakan `19299` — artinya XML Inggris ini adalah versi lama atau XML Cina yang dipakai) |
| 19 | Reborn | 5 | 5 diamond revive |
| 20 | 16 bags | 10 | Tambah 16 slot tas |
| 21 | Stamina recovery | 10 | Pulihkan semua stamina |

### Nama senjata awal (english/equip.xml)
- id 0: **Blade** — ATK+100, cost 4 gold
- id 1: **King sword** — ATK+180, cost 8 gold
- id 2: **Muramasa** — ATK+320, cost 12 gold
- id 3: **Stella Sword** — ATK+550, cost 18 gold
- id 4+: nama dan deskripsi ter-obfuscasi lapisan-2 (Cina juga demikian di versi root)

### Active codes (english/activecode.xml)
Berisi daftar kode redeem 8-karakter: rG4Q2QO, u1AM87bx, 604573dH, fP444Y6O, 20363a5k, ... (puluhan kode; sama dengan versi Cina)

### Tutorial messages (english/msg.xml)
Pesan tutorial awal game (terbaca penuh dalam bahasa Inggris):
- id 0: "Move rocker to control your character"
- id 1: "Tap the bottom on the right to attack"
- id 2: "Drag icon to exchange position"
- id 3: "Tap the bottom to use your skill"
- id 4: "Tap the potion to heal the hero"
- id 5: "Drag the potion to heal mercenary"
- id 6: "Buy it to reborn your hero!"
- id 7: "Level max"
- id 8: "Not enough gold,go and get some!"
- id 9: "Tap icon twice to equip your weapon"
- id 10: "Tap skill icon to select it"
- id 11: "Not enough stars,collect more stars in level"
- id 12: "Tap avatar and drag it to the right"
- id 13: "You have too much mercenarys in your team"
- id 14: "Mercenary's level can't higher than hero"
- id 15: "Your bag is full,please empty it frist"
- id 33-40: pesan inisialisasi, skill unlock (Blade storm, Blade strike, Dragon blow, Thousands blade), extra dungeon unlock
- id 75: "Stamina is full"
- id 76: "Enter battlefield or dungeon will cost your stamina on the left top."
- id 77: "Get 3 stars rank in the first time,may reward you 1 point stamina."
- id 78: "Endless Mode is unlock ..."
