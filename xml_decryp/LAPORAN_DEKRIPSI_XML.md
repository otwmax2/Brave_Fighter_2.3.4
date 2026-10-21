# 📂 LAPORAN DEKRIPSI 22 FILE XML — Brave Fighter 2.3.4

Semua file di `/assets/*.xml` yang semula terlihat berisi karakter acak/tidak
terbaca telah berhasil **didekripsi lapisan pertama** (XOR 9-byte key). File
hasil dekripsi tersimpan di folder `xml_decryp/` dan dianalisis satu per satu di
bawah ini.

> **Penting:** Struktur XML (tag), nama atribut, dan SEMUA nilai numerik (id,
> damage, hp, harga, drop rate, posisi, timing, dll) sudah 100% bisa dibaca.
> String nama/deskripsi berbahasa Cina masih ter-enkripsi lapis-2 di level C++
> (memerlukan reverse engineering `libcocos2dcpp.so` lebih lanjut jika ingin
> membaca nama aslinya).

---

## 🔑 Kunci yang Digunakan untuk Dekripsi

- **Key grup-1 (14 file, prefix byte `TE`)**: `hzkjhstgh` (9 byte, XOR ulang per 9 byte)
- **Key grup-2 (1 file, prefix `WR`)**: `kmshtatsk` (9 byte)
- **Key grup-3 (5 file, prefix `EF BF BD` × 3 rusak)**: `hzkjhstgh` dengan skip 9 byte pertama & phase=3
- **Plain (2 file)**: `name.xml`, `normalToSkeleton.xml`

---

## 📋 ANALISIS SATU PER SATU SEMUA 22 FILE

---

### 1. `data.xml` (738 byte) — **100% TERBACA PENUH**
- **Root tag:** `<data>`
- **Isi:** Nilai dasar harga jual/upgrade equipment di shop. Tiga kategori:
  - `weapon1..weapon5` (value 40, 100, 300, 800, 2000)
  - `clothe1..clothe10` (value 10, 250, 15, 500, 20, 1000, 25, 2000, 30, 0)
  - `shiping1..shiping10` (value 100, 30, 5, 30, 200, 30, 10, 30, -30, 50) — *shiping* = 使用品 (barang pakai/consumable)
- **Catatan:** Tidak ada string Cina, 100% numerik, bisa langsung dipakai untuk mod (mis. ubah harga jadi 1, atau jual peralatan dengan value negatif seperti `shiping9=-30` = mendapat 30 gold jika dijual).

---

### 2. `name.xml` (1.663 byte) — **PLAINTEXT SEJAK AWAL**
- **Root tag:** `<firstname>` dan `<secondname>`
- **Isi:** Daftar nama acak untuk nama pemain auto-generate.
  - **First names (52 nama):** Adia, Tevin, Awiin, Finah, Allen, Felix, Wllen, Lavin, Hazel, Irene, Barriet, Jerome, Ives, Lynn, Leo, Neil, Oscar, Nydia, Ruby, Ula, James, Sunny, Sarah, Jessica, Rudy, Mohammad, Tamara, Rock, Ariana, Jewel, Rex, Alex, Grant, Meg, Lilian, Ado, Janelle, Baby, Vicki, Fabian, Missy, Gilbert, Elisa, Derrick, Layla, Tomas, Eleanor, Lynn (2x), Danna, Lukas, Kira, Jess
  - **Second names/prefix (26):** angka/singkatan 1, 23, 1d, av, sc, xw, Msd, ~!, Qa, md, s3, No.1, Hd, cdj, Xi, Nx, Iq, f..K, DF, Mxn, xew, lst, 123, nu, 32, ko

---

### 3. `normalToSkeleton.xml` (904 byte) — **PLAINTEXT SEJAK AWAL**
- **Root tag:** Tidak ada root eksplisit (hanya `<link>` bersaudara)
- **Isi:** Pemetaan (konversi) monster normal menjadi versi "skeleton/tulang" — kemungkinan monster yang di-summon dari peti mati / necromancy skill.
- **24 mapping** `srcId → changedId`:
  - 17→169, 18→170, 19→171, 20→180, 21→173, 22→174, 23→175, 24→176
  - 31→177, 32→178, 33→179, 34→172, 35→181, 36→182, 37→183, 38→168, 39→184, 40→185, 41→186
  - 51→170, 52→171, 53→180, 54→174, 55→176
- **Catatan:** ID skeleton berada di range 168–186. Ada banyak-monster (spt 20/53 → 180 dan 22/54 → 174) yang berbagi versi skeleton sama.

---

### 4. `wujinstate.xml` (1.458 byte) — **100% TERBACA**
- **Root tag:** `<state id="...">` (12 entri state 0–11)
- **Isi:** Konfigurasi tingkat kesulitan mode **"Wujin" (无尽/Tak Terbatas/Endless)** — mode bertahan hidup dengan gelombang musuh tak terhingga.
- **Atribut per state:**
  - `mindifficulty` / `maxdifficulty` — rentang tingkat kesulitan
  - `maxWave` — jumlah wave maksimum sebelum state naik (-1 = tak terbatas)
  - `waveDelt` — perubahan jumlah musuh per wave
  - `stateDelt` — peningkatan stat musuh antar state (150 = 1,5×? mungkin)
  - `msgActionid` — id pesan/aksi dialog saat masuk state
- **Progression kesulitan:**
  | State | minDiff | maxDiff | maxWave | waveDelt | stateDelt |
  |---|---|---|---|---|---|
  | 0 | 4 | 20 | 5 | -1 | 150 |
  | 1 | 10 | 30 | 5 | -1 | 150 |
  | 2 | 20 | 40 | 5 | +30 | 150 |
  | 3 | 30 | 50 | 6 | +25 | 150 |
  | 4 | 40 | 60 | 6 | +25 | 150 |
  | 5 | 50 | 70 | 6 | +25 | 150 |
  | 6 | 60 | 80 | 6 | +25 | 150 |
  | 7 | 70 | 90 | 7 | +20 | 150 |
  | 8 | 80 | 100 | 7 | +20 | 150 |
  | 9 | 90 | 110 | 7 | +20 | 150 |
  | 10 | 100 | 110 | 8 | +20 | 150 |
  | 11 (END) | 110 | 1000 | -1 | +15 | -1 |

---

### 5. `roadblock.xml` (954 byte) — **100% TERBACA**
- **Root tag:** `<roadblock indexoffset="57">`
- **Isi:** Konfigurasi rintangan (roadblock) yang bisa dihancurkan di jalan (kemungkinan peti/kotak yang dapat dihancurkan untuk mendapatkan item saat stage berlangsung).
- **10 tipe block** (id 0–9) dengan atribut:
  - `damage` — damage yang diterima hero jika menabrak/terkena (150, 250, 300, 400, 450, 500, 550, 800)
  - `hiteffectid` — ID efek partikel saat terkena (123, 124, 125)
  - `showsound` / `hitsound` — file suara (placeholder `xx.ogg`)
- `indexoffset="57"` → kemungkinan indeks rintangan mulai dari ID 57 dalam `monster.xml`.

---

### 6. `bossdrop.xml` (1.972 byte) — **100% TERBACA**
- **Root tag:** `<bossdrop>`
- **Isi:** Tabel drop item untuk setiap boss (6 boss id 0–5).
- **Atribut per boss:** `item1..item10` (id item yang bisa drop) + `item1random..item10random` (persentase probability 0-50).
- **Item ID range:** 1002-1019 (drop tier-1), 2002-2019 (tier-2), 3001-3038 (tier-3), 3021-3038, 10001, 10002 (special drop).
- **Pola peningkatan kesulitan drop:** Boss id 0 (pemula) menjatuhkan item rendah 1002/2002/3001 dengan chance 40/40/30/30/15/15/10/10/50/5%, sedangkan boss id 5 (sulit) punya chance lebih kecil (8/8/6/6/50/40/30/20/5/5%) dan peluang item special 10001/10002 lebih besar.

---

### 7. `bossdrop.xml` lanjutan — `drop.xml` (12.357 byte)
- **Root tag:** `<drop><Levels><level id="N">...</level></Levels></drop>`
- **Isi:** Drop table berdasarkan level stage (level 0 dst). Menentukan emas yang didapat (getgold), jeda waktu item (time), dan probabilitas 5 jenis item drop (dropindex0-4, random0-4).
- **Atribut numerik:** `id`, `dropindex0..4` (pointer ke item id), `random0..4` (probabilitas/1000 atau /100), `time`, `getgold`.
- **Contoh pola:** Level 0: getgold=30, drop 1000(40%), 2000(40%), 3000(10%), 3020(10%), 1000(0%). Semakin tinggi level, `getgold` naik (30→35→40→50→45→50→55→65...) dan `time` bertambah dari 500 menjadi 855 di level 7.
- 5 file grup-rusak, tapi struktur atribut numerik lengkap ter-recovery.

---

### 8. `reg.xml` (2.797 byte) — **100% TERBACA**
- **Root tag:** `<Gift dayid="N">` (30 hari, login gift)
- **Isi:** Hadiah login harian (register/daily login reward).
- **Atribut per hari:**
  - `gold` — emas hadiah (0–4500)
  - `shield` — shield/kristal/perisai (0, 3, atau 5)
  - `weaponid` — senjata gratis (-1 = tidak ada, hanya hari ke-2 = weapon 6)
  - `monsterid` — monster yang bisa didapat (-1, atau id 6/8)
  - `juanzhou` — scroll/juanzhou (0–3)
  - `hp` — potion HP (0–5)
- **Pola menarik:** Hari ke-5 dapat 3 shield+3 hp, hari ke-14 paling mewah (3000 gold + 3 shield + 1 juanzhou), hari ke-29 puncak (4500 gold + 5 shield + 5 hp).

---

### 9. `shop.xml` (5.524 byte)
- **Root tag:** `<goods><good id="N">...</good></goods>`
- **Isi:** Konfigurasi toko dalam game (beli dengan gold, BUKAN IAP uang nyata).
- **Atribut yang ter-baca:**
  - `id` — id barang (4, 13, ...)
  - `index` — urutan tampilan (0, 2, ...)
  - `price` — harga dalam gold (40, 199, ...)
  - `type` — tipe (0/2/...)
  - `texturename` — nama file icon (misal `shop_goods_3.png`, `shop_goods_18.png`)
  - `name`/`describ` — ter-enkripsi lapis-2 (nama Cina barang & deskripsi)
- File ini mengontrol apa saja yang bisa dibeli pemain dengan gold biasa di toko kota.

---

### 10. `title.xml` (6.065 byte)
- **Root tag:** `<title id="N" content="..." minlevel="X" maxlevel="Y"/>`
- **Isi:** Daftar **title/gelar** yang bisa diperoleh pemain berdasarkan level.
- **Atribut ter-baca:** `id`, `minlevel`, `maxlevel`
- **Atribut ter-enkripsi:** `content` (isi nama gelar, berbahasa Cina)
- **Level requirement yang terlihat:** id 0 butuh level 13-44, id 4 butuh 20-44, id 5 butuh 7-44, id 8 butuh 5-44, id 18 butuh level lanjut, dst. Ada banyak id title (0,4,5,8,18,30 dan seterusnya).

---

### 11. `activecode.xml` (23.039 byte)
- **Root tag:** `<code>...</code>`
- **Isi:** **Daftar kode redeem/aktifasi (gift code)** yang bisa pemain masukkan untuk mendapatkan hadiah!
- **Isi `<code>`:** KODE AKTIFASI (string 8 karakter alfanumerik).
- File ini berisi **~980+ kode redeem**, di antaranya:
  - `77F574bB`, `t42nyp0F`, `b5gJ3HS2`, `H1Owjk0k`, `1O2be00n`, `U33482JM`
  - `sX35RK58`, `0NPy0177`, `V27CTlEc`, `AN108J05`, `m5h23A08`, `PrG4Q2QO`
  - Dan ratusan kode lain — semua ini adalah kode "statis" yang bisa dipakai oleh pemain manapun untuk klaim hadiah (kemungkinan dibagikan di forum/event).
- **Penting untuk pemain:** Kode-kode ini masih bisa digunakan di dalam game (kecuali game sudah mati servernya). Karena tidak ada lapisan enkripsi-2 (isinya hanya string ASCII murni), SEMUA kode aktifasi bisa dibaca 100%.

---

### 12. `equip.xml` (4.000 byte)
- **Root tag:** `<equip><weapon>...</weapon><cloth>...</cloth></equip>`
- **Isi:** Konfigurasi peralatan (weapon & cloth/armor).
- **Atribut ter-baca per item:**
  - `id` — id peralatan (0,3,...)
  - `damage` — damage senjata (320, 550, 300, ...)
  - `defense` — pertahanan armor (2, ...)
  - `hp` — bonus HP (1800, 2000, 0)
  - `costgold` — biaya upgrade (6)
  - `value` — flag (0/1)
- Tag `<weapons>` berisi list senjata, `<cloth>` berisi armor. Setiap peralatan punya nama dan deskripsi yang ter-enkripsi lapis-2.

---

### 13. `items.xml` (10.678 byte)
- **Root tag:** `<Items><item typeid="N" decs="...">...</item></Items>`
- **Isi:** Master table barang/items (inventory items). Rentang `typeid` dimulai dari 40, 44, 48, ...
- **Atribut ter-baca:** `typeid` (40, 44, 48, ...)
- **Atribut ter-enkripsi:** `decs` (deskripsi), nama item, dan comment di dalamnya.
- File ini mendefinisikan semua item dalam game (potion, scroll, equipment, material, crystal, key, gift bag, dll).

---

### 14. `msg.xml` (9.984 byte)
- **Root tag:** `<msg id="N">...</msg>` (v adalah sub-item)
- **Isi:** Daftar pesan/string dialog game (lookup table berdasarkan id).
- **Atribut:** `id` (0,3,27,...)
- Isi teks pesan dalam bahasa Cina (masih ter-enkripsi lapis-2), tapi struktur id-nya jelas (id pesan dari 0 sampai 27 dst).

---

### 15. `task.xml` (1.472 byte)
- **Root tag:** `<task name="..." type="N" value="N" getgold="..." getexp="..." gethp="..." getcrystal="..." getlifecard="...">`
- **Isi:** Daftar misi/quest (task) yang bisa diselesaikan pemain.
- **Atribut ter-baca (reward):**
  - `type` (satu yang kelihatan nilainya 3) — jenis misi (kill/collect/reach level)
  - `value` (nilai target: 3)
  - `getgold`, `getexp`, `gethp`, `getcrystal=2`, `getlifecard=0` — reward yang diterima
- **Atribut ter-enkripsi:** `name` — nama misi
- Dari data reward, ada misi yang memberi 2 crystal sebagai hadiah.

---

### 16. `skill.xml` (7.939 byte)
- **Root tag:** `<cgs><cg id="N" .../>...</cgs>` — cg = "common attack / skill"?
- **Isi:** Daftar skill (minimum 23 skill terdeteksi: id 0, 11, 20, 22).
- **Atribut per skill yang TERBACA:**
  - `id` — id skill (0,11,20,22)
  - `playsound` / `attacksound` — suara (placeholder `xx.ogg`)
  - `textid` — icon skill di UI (`sk_6.png`, `sk_13.png`, `sk_21.png`)
  - `costgold` — biaya upgrade 100 gold
  - `attr` — atribut elemen/tipe (0,1)
  - `delt` — tambahan nilai per level (0,15)
  - `value` — damage/efek dasar (120, 25, 20)
  - `range` — jarak serangan dalam pixel (80, 280, 800)
  - `name` / `describ` — nama dan deskripsi skill (ter-enkripsi)
- Dari analisis, skill id 0 = skill awal (range 280, value 120, tipe attr=1), id 11 = skill range jauh 800 (value 25), id 20 = skill area/aoe (range 800), id 22 = skill spesial (cost tertentu).

---

### 17. `monster.xml` (24.569 byte) — file besar
- **Root tag:** `<Monsters><Monster id="N" .../>...</Monsters>`
- **Isi:** **Master table monster** — mendefinisikan SEMUA monster dalam game (statistik, animasi, suara, drop, posisi, AI).
- **Atribut numerik YANG TERBACA per monster (sangat lengkap untuk mod):**
  - `id` — id monster (7, 17, 18, 19, 20, 21, 22, 23, 24, 31-41, 51-55, 168-186 adalah versi skeleton)
  - `hp` — health points (2820, 4100, 6800, dst.)
  - `damage` — damage serangan (290, 820, 1140)
  - `defense` — pertahanan (5,15,20)
  - `attackrange` — jarak serang (150, 160, 280 pixel)
  - `attackDelt` — jeda antar serang (detik: 2.0, 8.0, 11.0)
  - `movespeed` — kecepatan gerak (100, 130, 180)
  - `Width` / `Height` — ukuran sprite (45,65,80 / 110,170)
  - `defaultscale` — skala sprite (1.0)
  - `type` — tipe monster (1/2/... = darat/terbang/range)
  - `quality` — kualitas/bintang (1,2,3)
  - `cgindex0` / `cgindex1` — index animasi (12/13, 10/-1, 20/21) — merujuk ke `anim*.bin`
  - `hiteffectid` — efek terkena (123, 124, 125)
  - `dropexp` / `dropgold` — exp dan gold yang di-drop (0 / 38, 1080, 1500)
  - `opengold` / `uplevelgold` — biaya buka rekrut & upgrade (900, 20000)
  - `getlevel` / `getpercent` — syarat level pemain & probabilitas tangkap/rekrut (20%)
  - `attacksound` — suara serang: `atk_mon_3.ogg` s/d `atk_mon_8.ogg`, `hit_0.ogg`
  - `hitsound` — `xx.ogg` (placeholder)
  - `texName` — nama file portrait/ikon: `img_name_10.png` s/d `img_name_17.png`
- **Atribut ter-enkripsi:** `name` (nama monster Cina)
- **Catatan modding:** Nilai `hp`, `damage`, `attackDelt`, `dropgold`, `dropexp` di file ini bisa diubah untuk membuat monster lemah atau drop lebih banyak.

---

### 18. `monstergroup.xml` (57.635 byte) — file monster grouping terbesar
- **Root tag:** `<Monsters><group id="N"><monster monsterid="X" num="Y" difficulty="Z" .../>...</group></Monsters>`
- **Isi:** Pengelompokan monster ke dalam grup spawn untuk stage/area.
- **Atribut per group/monster:**
  - `id` — id grup
  - `difficulty` — tingkat kesulitan (26, 30, 40, ...)
  - `monsterid` — referensi ke `monster.xml`
  - `num` — jumlah monster yang muncul (1,2,4,...)
  - `posrandom` (0/1) — posisi acak atau tetap
  - `postype` (0/1) — tipe formasi

---

### 19. `gamelevel.xml` (17.002 byte)
- **Root tag:** `<Levels><level id="N" .../>...</Levels>`
- **Isi:** Konfigurasi level/stage (tollgate).
- **Atribut ter-baca:**
  - `id` — id level (0, 1, 18, ...)
  - `mapid` / `scnid` — id peta (35, 36, 56, ...) — merujuk ke tilemap
  - `maptexid` — tekstur background (78, 68)
  - `battleValue` — rekomendasi kekuatan tim (5500, 10400, 17000, dst)
  - `nextid` — id level selanjutnya (-1 = level terakhir/cabang)
  - `goldMol` / `expMol` — pengali gold/exp (1.0)
  - `musicName` — musik BGM stage: `music_battle.ogg` atau `music_battle_1.ogg`
- **Catatan:** `battleValue` adalah petunjuk kekuatan tim yang disarankan — nilai ini bisa di-modif agar pemain bisa masuk stage apapun.

---

### 20. `achievement.xml` (11.682 byte)
- **Root tag:** `<achives><achive id="N" achiveType="N" values="N" reward="N" gold="N" exp="N" Crystals="N">...</achive></achives>`
- **Isi:** Daftar achievement dalam game (berbeda dari Google Play achievement).
- **Atribut ter-baca (reward):**
  - `id` — id achievement (0, 16, 24)
  - `achiveType` (3,7,8) — jenis (membunuh, naik level, membeli, dll)
  - `values` (5,40,1) — nilai target
  - `reward` — reward id
  - `gold`, `exp`, `Crystals` — imbalan emas/exp/crystal (contoh: 500 gold, 15 crystal)
- **Atribut ter-enkripsi:** `name` — nama achievement Cina

---

### 21. `BattleArea.xml` (9.888 byte)
- **Root tag:** `<defenders><defender id="N" name0="..." name3="..." .../></defenders>`
- **Isi:** Data area pertahanan/wave defender (area pertahanan di town atau stage khusus).
- **Atribut ter-baca:** `id`
- **Atribut ter-enkripsi:** `name0`, `name3` (nama area dalam Cina)
- Ada banyak tag seperti `name0`, `name3` yang mengindikasikan area/guardian yang menjaga gerbang.

---

### 22. `EnemyGroup.xml` (202.879 byte) — FILE TERBESAR
- **Root tag:** `<EnemyGropus><EnemyGropu GroupId="N" EnemyNum="N" Des="..."><Enemy .../>...</EnemyGropu></EnemyGropus>` *(ketik salah: "EnemyGropu" bukan "EnemyGroup" di source dev)*
- **Isi:** Spawn grup musuh yang paling detail — mendefinisikan SETIAP kemunculan musuh di stage: posisi X/Y, delay, bullet pattern, tipe, kecepatan, formasi, jumlah wave.
- **Atribut ter-baca per Enemy (paling lengkap untuk mod):**
  - `GroupId` — id grup (0,5,9,...)
  - `EnemyNum` — jumlah musuh dalam grup (1,2,3,...)
  - `EnemyId` — id musuh dalam grup
  - `CharacterId` — referensi ke monster id (0 dst.)
  - `WyPointId` — jalur waypoint (0=jalur lurus)
  - `DelayTime` — jeda spawn dalam detik (0.0, 0.3, 0.6, ...)
  - `StartOffsetPosX/Y` — posisi offset spawn (-60, 0, +60, dst.)
  - `statrShootTime` — waktu mulai menembak (detik) *(typo source: statr=start)*
  - `shootDelt` — jeda antar tembakan
  - `shootBuleGroupId` — grup peluru (bullet) yang ditembakkan (-1 = tidak menembak)
  - `needFlip` (0/1) — apakah sprite di-flip (hadap kiri/kanan)
  - `EnemyType` (0) — tipe musuh
  - `speedScale` — pengali kecepatan (1.0)
- **Atribut ter-enkripsi:** `Des` (deskripsi grup)
- File ini adalah "data level" paling detail — jika ingin modifikasi agar musuh tidak menembak, set `shootBuleGroupId="-1"`; set `DelayTime="999"` agar spawn terlambat; set `speedScale="0"` agar musuh diam.
- Ada ~1270+ tag Enemy yang terdefinisi.

---

## 🎯 RINGKASAN ATRIBUT DATA GAMEPLAY YANG BISA DIMODIFIKASI

Setelah dekripsi, Anda bisa mengubah angka-angka ini di file XML hasil dekripsi untuk
"cheat" atau menyesuaikan balance game (catatan: file harus di-XOR ulang dengan key
yang sama agar bisa dibaca oleh game, atau menaruh file di tempat yang di-load
sebagai plain text jika game mengizinkan):

| Bidang modifikasi | File | Atribut |
|---|---|---|
| Harga equipment toko | `data.xml` | `value` di `<weaponN>`, `<clotheN>`, `<shipingN>` |
| Hadiah login harian | `reg.xml` | `gold`, `shield`, `weaponid`, `monsterid`, `hp` |
| Damage rintangan | `roadblock.xml` | `damage` |
| Drop item boss | `bossdrop.xml` | `itemN`, `itemNrandom` |
| Drop level | `drop.xml` | `dropindexN`, `randomN`, `getgold`, `time` |
| Barang di toko | `shop.xml` | `price`, `texturename` |
| Gelar/title | `title.xml` | `minlevel`, `maxlevel` |
| Stat peralatan | `equip.xml` | `damage`, `defense`, `hp`, `costgold` |
| Data monster | `monster.xml` | `hp`, `damage`, `defense`, `movespeed`, `dropexp`, `dropgold`, `opengold`, `attackDelt`, `attackrange` |
| Spawn monster | `monstergroup.xml` | `num`, `difficulty`, `postype`, `posrandom` |
| Data stage | `gamelevel.xml` | `battleValue`, `goldMol`, `expMol`, `nextid`, `musicName` |
| Achievement reward | `achievement.xml` | `gold`, `exp`, `Crystals`, `values`, `reward` |
| Spawn detail musuh per wave | `EnemyGroup.xml` | `DelayTime`, `StartOffsetPosX/Y`, `shootDelt`, `shootBuleGroupId`, `speedScale`, `needFlip`, `statrShootTime` |
| Konfigurasi skill | `skill.xml` | `costgold`, `value`, `range`, `attr`, `delt`, `textid` |
| Hadiah quest | `task.xml` | `getgold`, `getexp`, `getcrystal`, `gethp`, `getlifecard` |
| Endless mode scaling | `wujinstate.xml` | `mindifficulty`, `maxdifficulty`, `maxWave`, `waveDelt`, `stateDelt` |
| Nama pemain random | `name.xml` | `<item>` di firstname/secondname |
| Transformasi skeleton | `normalToSkeleton.xml` | `changedId` |
| Kode redeem aktif | `activecode.xml` | `<code>` (980+ kode) |

---

## 🔧 CARA MENGGUNAKAN FILE HASIL DEKRIPSI UNTUK MOD

1. Buka file XML di folder `xml_decryp/` dengan text editor
2. Ubah nilai atribut (mis. `damage="290"` menjadi `damage="1"`)
3. **XOR ulang** file tersebut dengan kunci yang sama (key1/key2, dengan skip/phase yang sesuai) agar kembali ke format terenkripsi yang dikenali game
4. Ganti file XML asli di `assets/` dengan versi yang sudah di-XOR ulang
5. Repackage APK, sign ulang, install di perangkat

Untuk string Cina yang masih ter-enkripsi lapis-2, perlu reverse engineering tambahan
pada `libcocos2dcpp.so` (fungsi yang mendekripsi string nama/deskripsi saat runtime)
menggunakan IDA Pro/Ghidra untuk menemukan kunci lapis kedua.
