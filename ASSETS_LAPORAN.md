# 📦 LAPORAN INVENTARIS & ANALISIS FOLDER `assets/`
## Brave Fighter v2.3.4 — 2.472 file aset game

> Tanggal analisis: 2026-10-21

---

## 📊 RINGKASAN STATISTIK FOLDER `assets/`

Folder `assets/` berisi **2.472 file** — seluruh konten game yang di-bundle di APK. Tipe file:

| Ekstensi | Jumlah | Ukuran tipikal | Keterangan |
|---|---|---|---|
| `.png` | **1.811** | 0.5 KB – 100 KB | Sprite, ikon, frame animasi, UI element, portrait, background (kebanyakan PNG dengan alpha transparan) |
| `.bin` | **388** | 1 – 200 KB | Data biner: animasi frame (anim0.bin~anim188.bin = 189 file), map tile (map0.bin~map90.bin = 91 file), scene/cutscene (scn0.bin~scn90.bin = 91 file), sprite sheet i0.png~i247.png memiliki pasangan ui/ui index (.bin), UI text (utext0/1.bin, ttext.bin, ctext.bin), cinema (cinema.bin), data binary lain |
| `.json` | **154** | 1 – 30 KB | File layout UI CocoStudio (`*View_*.json`, `Rally_*.json`, `RegisterView_*.json`) |
| `.ogg` | **48** | 3 – 150 KB | Efek suara (SFX) dan background music (BGM) dalam format Ogg Vorbis |
| `.xml` | **43** | 0.3 – 50 KB | Data terstruktur game (monster, hero, item, level, dll.) — 22 ter-enkripsi XOR (sudah didekripsi) |
| `.jpg` | **19** | 10 – 200 KB | Background (town_bg.jpg, mapX_2.jpg, public_bg.jpg), splash |
| `.plist` | **8** | 1 – 15 KB | Sprite sheet metadata (plist = peta koordinat frame dalam PNG besar) + partikel effect (baozha.plist = ledakan, fire.plist = api, xuehua*.plist = salju, end.plist = efek akhir) |

Total: **~2.472 file**

---

## 📁 STRUKTUR KATEGORI ASET

Folder `assets/` adalah **flat** (tidak banyak subdirektori) — sebagian besar file langsung di root `assets/`. Hanya sedikit subfolder khusus:

| Subfolder | Isi |
|---|---|
| `assets/Loading/` | Asset loading screen |
| `assets/MainView/` | Asset menu utama |
| `assets/battle/` | Asset battle/pertempuran |
| `assets/embattle/` | Asset formasi/barisan hero |
| `assets/english/` | Lokalisasi Inggris — duplikat penuh aset (XML, JSON, PNG, BIN) dengan teks bahasa Inggris; dipilih saat device non-Cina |
| `assets/flop/` | Asset mini-game kartu terbalik (memory card) |
| `assets/hero/` | Sprite hero/karakter |
| `assets/monster/` | Sprite monster |
| `assets/pay/` | Asset halaman pembayaran (IAP) |
| `assets/rally/` | ??? (rally/summon/recruit hero) |
| `assets/ranking/` | Asset leaderboard |
| `assets/register/` | Asset pendaftaran / pembuatan karakter pertama kali |
| `assets/shop/` | Asset toko |
| `assets/success/` | Asset animasi kemenangan |
| `assets/task/` | Asset misi/tugas |
| `assets/tollgate/` | Asset stage/tollgate (level) |
| `assets/townres/` | Resource kota (town) |

---

## 🎵 MUSIK DAN EFEK SUARA (48 file OGG)

### Background Music (BGM)
| File | Keterangan |
|---|---|
| `music_battle.ogg` | Musik pertempuran default |
| `music_battle_0.ogg` | Variasi musik battle lain |
| `music_battle_1.ogg` | Variasi musik battle |
| `music_scene.ogg` | Musik kota/scene (tenang) |
| `music_cinma.ogg` | Musik cutscene (cinema) |

> **Catatan dari reverse engineering native:** BGM dimainkan lewat OpenSL ES engine. Variabel global `musicPlayer` mengelola stream BGM.

### Efek Suara (SFX) — Combat
| File | Keterangan |
|---|---|
| `atk_mon_1.ogg` ~ `atk_mon_8.ogg` | Suara serangan monster (8 variasi) |
| `hit_0.ogg` ~ `hit_2.ogg` | Suara terkena serangan |
| `sound_attack_hand.ogg` | Serangan tangan/tinju |
| `sound_attack_weapon.ogg` | Serangan dengan senjata |
| `sound_attack_magic.ogg` | Serangan sihir |
| `sound_release_skill.ogg` | Suara saat mengeluarkan skill |
| `sound_zhujue_attack_0.ogg` ~ `attack_2.ogg` | Serangan protagonis (3 variasi) |
| `sound_zhujue_skill1.ogg` ~ `skill4.ogg` | Suara 4 skill pahlawan |
| `sound_zhujue_skill_4_1.ogg` | Variasi skill 4 |
| `sound_battle_getgold.ogg` / `_1.ogg` | Suara mengambil emas di battle |
| `sound_showboss.ogg` | Suara bos muncul |
| `sound_lose.ogg` | Suara kalah |
| `sound_win.ogg` | Suara menang |
| `dicijiguan.ogg` | Efek jebakan (刺机关 = duri) |
| `huoyanjiguan.ogg` | Efek jebakan api (火焰机关 = perangkap api) |
| `sound_addhp.ogg` | Tambah HP (healing) |

### Efek Suara — UI/Menu
| File | Keterangan |
|---|---|
| `sound_click.ogg` | Klik tombol |
| `sound_changescene.ogg` | Pindah scene |
| `sound_click_levelup.ogg` | Naik level |
| `sound_chengjiu.ogg` | Achievements (成就) |
| `sound_getmon.ogg` | Dapat monster baru |
| `sound_getreward.ogg` | Dapat hadiah |
| `sound_levelup_success.ogg` | Level up selesai |
| `sound_sell_equip.ogg` | Jual peralatan |
| `sound_wear_equip.ogg` | Pakai peralatan |
| `sound_zhujue_death.ogg` | Pahlawan mati |
| `sound_zhujue_levelup.ogg` | Protagonis level up |
| `sound_zhujue_run.ogg` | Suara lari hero |

---

## 🖼️ SPRITE DAN GAMBAR — KLASIFIKASI BERDASARKAN AWALAN NAMA

Game memakai **ratusan sprite** yang dikelompokkan berdasarkan awalan nama file:

### Ikon HUD (Heads-Up Display) di Battle
| Awalan file | Jumlah | Kegunaan |
|---|---|---|
| `ico_attack.png`, `ico_blood.png`, `ico_defense.png` | 3 | Ikon status (serang, darah, pertahanan) |
| `img_hp.png`, `img_hpwarm.png` | 2 | Bar HP (normal/warning merah) |
| `img_blood.png`/`0_blood.png` | 2 | Percikan darah |
| `battle_gold.png`, `battle_gold_1.png` | 2 | Emas di arena pertempuran |
| `battle_skill_box_shadow.png` | 1 | Bayangan kotak skill |
| `img_joystick.png`, `img_joystick_bg.png` | 2 | Joystick virtual (gerakan) |
| `img_goldfly.png` | 1 | Animasi angka emas terbang |
| `img_hits.png`, `num_combo.png` | 2 | Angka combo hit |
| `score_num.png`, `num1.png`, `num2.png`, `num3.png` | 4 | Font angka (bitmap font) |
| `att_num1.png`, `att_num2.png` | 2 | Angka attribut |
| `embattle_num.png` | 1 | Angka untuk formasi |

### Tombol UI (btn_*)
| Awalan file | Kegunaan |
|---|---|
| `btn_play.png`/`btn_play1.png` | Tombol mainkan |
| `btn_exit.png`/`btn_exit2.png`/`btn_exit2_0.png` | Tombol keluar |
| `btn_activecode0.png`/`1.png` | Tombol tukar kode hadiah |
| `btn_add_1.png`/`2.png` | Tombol tambah |
| `btn_more.png`/`btn_more1.png` | Tombol lainnya |
| `btn_moregame_0.png`/`1.png` | Tombol lihat game lain (cross-promo) |
| `btn_bangzhu_0.png` | Tombol bantuan |
| `btn_clouse_1.png`/`2.png` | Tombol tutup (close) |
| `btn_chuanqi_1.png`/`2.png` | Tombol legendary (传奇) |
| `btn_equipgift_1.png`/`2.png` | Tombol hadiah equip |
| `btn_guanyu_0.png` | Tombol tentang (关于) |
| `btn_shengyin_0.png`/`1.png` | Tombol SFX on/off (音效) |
| `btn_yinyue_0.png`/`1.png` | Tombol musik on/off (音乐) |
| `btn_stop_1.png`/`2.png` | Tombol stop |
| `announce_btn_1.png`/`_1_0.png`/`announce_btn_2.png`/`_2_0.png` | Tombol pengumuman |
| `ad_box.png`, `ad_bth_1.png`/`2.png` | Banner iklan + tombol |
| `ingameAds_1.png` | Iklan di dalam game |
| `hutui_bg.png` | Background cross-promo (互推) |

### Item equipment (`img_weapon_*.png`, `img_clothes_*.png`, `img_shiping_*.png`)
| Awalan | Range jumlah | Kegunaan |
|---|---|---|
| `img_weapon_0.png` ~ `img_weapon_100.png` | 101 file | Berbagai senjata (pedang, pisau, kapak, tombak, tongkat, busur) |
| `img_clothes_0.png` ~ `img_clothes_23.png` | 24 file | Armor/baju/zirah |
| `img_shiping_0.png` ~ `img_shiping_47.png` | 48 file | Consumable item (药品/消耗品/食品=shiping) |
| `img_bsx_0.png` ~ `img_bsx_19.png` | 20 file | Gambar BOS/X (宝石? / boss xiang? kemungkinan item perhiasan/aksesoris/necklace/ring) |
| `img_zbs_1.png`~`3.png` | 3 file | ? (装备图 / zhuanbeishijie — world equipment?) |
| `taozhuang_1.png`, `taozhuang_2.png` | 2 | Set armor/set package (套装) |
| `epic_2.png` | 1 | Barang epic (warna ungu) |

### Sprite hero & monster
| Awalan | Jumlah | Kegunaan |
|---|---|---|
| `i0.png` ~ `i247.png` | **248 file** | **Frame sprite terpotong** dari sprite sheet besar (i = item/image individual frame). Pasangan file `ui0.bin`/`ui1.bin` berisi metadata koordinat frame di gambar gabungan. |
| `mo_0.png` ~ `mo_11.png` | 12 file | Sprite monster (monster portraits/icons) |
| `mo_s_0.png` ~ `mo_s_11.png` | 12 file | Sprite monster shadow/kecil (selected?) |
| `mh1.png`, `mh2.png` | 2 | Gambar judul game "Monster Hunter" (logo MH) |
| `img_name_0.png`~`img_name_19.png` | 20 | Gambar nama tertulis (nama hero/monster di kartu) |
| `hero/` (folder) | — | Animasi sprite hero (frame sequence) |
| `monster/` (folder) | — | Animasi sprite monster (frame sequence) |

### Peta/Map tile
| File | Kegunaan |
|---|---|
| `map0.bin` ~ `map90.bin` (91 file) | Data tilemap binary (posisi tile, collision, musuh) |
| `map0_2.jpg` / `map1_2.jpg` / `map2_2.jpg` / `map3_2.jpg` / `map5_2.jpg` (5 jpg) | Background gambar peta (layer bawah) |
| `map0_5.png` / `map1_3.png` / `map2_3.png` / `map4_2.png` (4 png) | Gambar tile set (kumpulan tile yang dirujuk bin) |

### Animasi
| File | Kegunaan |
|---|---|
| `anim0.bin` ~ `anim188.bin` (189 file) | Data animasi frame binary (clip animasi: walk/attack/idle/death) |

### Efek partikel
| File | Kegunaan |
|---|---|
| `baozha.plist` + `baozha.png` | Ledakan (爆炸) |
| `fire.plist` + `fire.png` | Efek api |
| `end.plist` + —— ? (lihat apakah ada end.png) | Efek akhir stage |
| `xing_bloom.plist` + `xing_bloom.png` | Efek bintang mekar (star bloom / reward) |
| `xuehua.png` + `xuehuaFast.plist` + `xuehuaSlow.plist` | Efek salju (雪花) |
| `Comet.png` | Efek komet |
| `img_guang.png` | Efek cahaya (光) |
| `img_light.png` | Efek cahaya terang |
| `img_kp.png`, `kp.png` | Efek? |

### Sprite efek tampilan nama/skor
| File | Kegunaan |
|---|---|
| `img_cs0.png`, `img_cs1.png`, `img_cs2.png`, `cs.png` | Counter/skor CS |
| `img_newpaiming.png`, `img_newscore.png` | Notif peringkat/skor baru |
| `img_rankup.png` | Naik peringkat |
| `img_star.png`, `star1.png` | Bintang (rating level) |
| `month.png`, `month_text.png` | Elemen UI hadiah bulanan |
| `img_phone.png` | Ikon telepon (tombol?) |
| `img_pj.png`, `jp.png` | Ikon? (paijian/pinjia?) |
| `zbs.png` | Ikon? |
| `zhujie_0.png` | Elemen UI (注解?/猪街?) |
| `yuan_img_1.png` | Elemen koin |
| `show_1.png`, `show_2.png` | Showcase |
| `cd_1.png`, `cd_2.png` | Cooldown indikator |
| `fan_1.png`, `fan_2.png` | Tombol kembali (返) |
| `fengxiang1.png`, `fengxiang2.png` | Arah angin/arrow (风向) |
| `sk_0.png`~`sk_23.png` | 24 skill icon |
| `hsk_0.png`~`hsk_3.png` | H-sk icons (hero skill?) |
| `buy1.png`, `buy1_499.png`, `buy1_999.png`, `buy2.png`, `buy2_499.png`, `buy2_999.png`, `buy3.png`, `buy4.png` | Tombol beli dengan harga (499=4.99 dollar, 999=9.99) |
| `hotsale_img.png` | Banner hot sale |
| `shop_yuan.png` | Mata uang yuan (mata uang toko) |
| `img_tili.png` | Stamina/tili (体力) |
| `img_tasknumbg.png` | Background nomor tugas |
| `img_teach_labbg.png` | Background label tutorial |
| `img_toastbg.png` | Background toast notifikasi |
| `img_cleardata_load.png` | Tombol hapus data |
| `img_dialogbg.png` | Background dialog |
| `img_mh2.png` | Logo MH varian |
| `logo.png` | Logo aplikasi |
| `public_bg.jpg`/`public_bg_1.png`~`4.png` | Background umum |
| `public_choose.png`/`_1.png`/`_2.png` | Seleksi publik |
| `public_gold.png`, `public_jewel.png` | Ikon emas/permata |
| `public_juanzhuo.png` | Ikon gelang (装备) |
| `public_lock.png` | Gembok/terkunci |
| `public_power.png` | Ikon power/kekuatan |
| `public_word_x.png` | X/tutup |
| `img_embattle_lvbg.png`, `img_embattle_selected.png`, `img_embattle_star0.png`~`3.png` | Formasi UI |
| `tollgate_btn_libao_0.png`/`1.png` | Tombol hadiah di gerbang (礼包=gift pack) |
| `shop_goods_0.png`~`31.png` (+variasi *_1.png) | Barang dagangan (50+ variasi) |
| `shop_goods_new.png` | Label produk baru |
| `shop_bg.png` | Background toko |
| `zuanshi_enter_3.png`/`4.png` | Tombol masuk kristal (钻石) |
| `img_anhei_anima0.png`~`2.png` | Animasi Dark Set (暗黑) |
| `2p.png` | ? (2 pemain?) |
| `content_1.png`/`2.png` | Konten umum |
| `task_1.png`/`task_2.png` | Ikon task/misi |

### Natal (Christmas event)
| File | Kegunaan |
|---|---|
| `ChristmasView_1.json` | Layout UI natal |
| `Christmas_bg_1.png`, `Christmas_ok_1.png`/`2.png` | Asset background & tombol natal |
> Berarti game pernah memiliki event musiman natal.

### Adshutui (互推 = cross-promo)
| File | Kegunaan |
|---|---|
| `Adshutui_1.json` | Layout cross-promo |
| `btn_moregame_0.png`/`1.png` | Tombol "lebih banyak game" |
| `hutui_bg.png` | Background promo |
| URL promo (dari MonsterHunter.java): `https://play.google.com/store/apps/developer?id=JOYNOWSTUDIO` |

---

## 📄 FILE XML DATA GAME (43 file) — skema ringkas

| File XML | Status dekripsi | Isi (setelah didekripsi/dari skema RE) |
|---|---|---|
| `data.xml` | **plain** | Konfigurasi utama game (versi, default value, setting) |
| `msg.xml` | **plain** | Pesan/notifikasi (string pendek game) |
| `BattleArea.xml` | XOR key1 | Area pertempuran (nama area, latar, batas level) |
| `achievement.xml` | XOR key1 | Data achievement (syarat, hadiah, tipe) |
| `activecode.xml` | XOR key1 | Daftar kode redeem (kode, tipe reward, nilai, expire) |
| `bossdrop.xml` | XOR key1 | Tabel drop boss (boss id, item id, rate) |
| `drop.xml` | XOR key1 | Tabel drop musuh biasa |
| `equip.xml` | XOR key1 | Data equipment (id, nama, slot, atk/def/hp, level req, harga) |
| `gamelevel.xml` | XOR key1 | Konfigurasi level (musuh, hadiah, tilemap, stamina cost) |
| `items.xml` | XOR key1 | Data item consumable (hp pot, exp boost, dll) |
| `monster.xml` | XOR key1 | Data monster (id, nama, hp, atk, def, skill, drop, anim) |
| `monstergroup.xml` | XOR key1 | Kelompok monster per level |
| `EnemyGroup.xml` | **XOR key2** (kmshtatsk) | Formasi musuh dalam satu stage (urutan, posisi, level) |
| `name.xml` | XOR key1 | Nama-nama string (hero/monster/item — sebagian ter-obfuscasi lapisan 2) |
| `normalToSkeleton.xml` | XOR key1 | Konversi monster normal jadi skeleton (transformasi) |
| `reg.xml` | XOR key1 | Konfigurasi registrasi / starting character |
| `roadblock.xml` | XOR key1 | Hambatan/rintangan di map (damage, tipe) |
| `shop.xml` | XOR key1 | Daftar barang toko (id, harga emas/crystal, tipe) |
| `skill.xml` | XOR key1 | Data skill hero & monster (id, damage, cooldown, target type) |
| `task.xml` | XOR key1 | Daftar task harian & misi |
| `title.xml` | XOR key1 | Data gelar/title (syarat buka, bonus stat) |
| `wujinstate.xml` | XOR key1 | Konfigurasi endless mode (Wujin/无尽) |
| (22 XML lain, lihat `xml_decryp/`) | — | Telah didekripsi dan dilaporkan di `xml_decryp/LAPORAN_DEKRIPSI_XML.md` |

**Catatan penting:** String nama/deskripsi berbahasa Cina di dalam XML masih ter-obfuscasi pada **lapisan ke-2** (setelah XOR 9-byte). Fungsi dekripsinya ada di native code, kemungkinan dijalankan saat XML di-load oleh C++ (bukan Java). Lihat laporan native untuk detailnya.

---

## 🗂️ FILE UI JSON (CocoStudio Layout — 154 file)

Semua file JSON layout dibuat dengan **CocoStudio** (editor UI Cocos2d-x). File-file ini berisi struktur widget (Button, ImageView, Label, Panel, ScrollView, ProgressBar, dll.) berserta posisi, ukuran, gambar, dan tag ID yang dikenali native code.

### Daftar file JSON per-scene/view:

| Scene (dari C++ class) | File JSON |
|---|---|
| MainScene/MainView | `MainView_1.json`, `MainView_2.json` |
| Loading/CCLoadingScene | `LoadingView_1.json` |
| CCBattleArea/BattleView | `BattleView_1.json`~`14.json` (ada `_3_0` varian), total 15 |
| TownScene/TownView | `TownView_1.json`, `_2.json`, `_3.json`, `_6.json` |
| CCHeroScene/HeroView | `HeroView_1.json`~`_8.json` (8 halaman hero: 1=utama, 2=equip, 3=skill, 4=level, dst.) |
| CMonsterScene/MonsterView | `MonsterView_1.json`, `_2.json` |
| CCShopScene/ShopView | `ShopView_1.json`~`_4.json` (4 tab toko) |
| PayView/CPauseScene (pay dialog) | `PayView_1.json`~`_6.json` (6 halaman bayar) |
| CSelectLevelScene/TollgateView | `TollgateView_1.json`~`_9.json` (9 page daftar stage) |
| CRankingView | `RankingView_1.json`, `_2.json` |
| CCTaskView/Task | `Task_1.json`, `Task_2.json` |
| CPokerView/FlopView | `FlopView_1.json` (flop = balik kartu) |
| CCJiangliScene/SuccessView | `SuccessView_1.json`, `_2.json`, `_3.json` |
| CAchiveScene? / Rally (summon) | `Rally_1.json`~`_12.json` (total 12 — halaman summon/rekrut hero) |
| Embattle (formasi) | `EmbattleView_1.json`, `_2.json`, `_3.json` (3 formasi) |
| Register (pembuatan karakter) | `RegisterView_1.json`~`_4.json` (4 langkah) |
| Adshutui (cross-promo) | `Adshutui_1.json` |
| Christmas event | `ChristmasView_1.json` |
| (Lain-lain) | file kecil/duplikat |

> Tag/nama node di JSON berbahasa Cina (e.g. 金币=gold, 水晶=crystal, 返回=back, 强化=enhance). Cocos2d-x membaca JSON ini lewat `cocostudio::GUIReader` dan membuat tree widget C++ secara dinamis.

---

## 📦 FILE BINARY (388 file .bin) — KATEGORI

File `.bin` adalah data binary yang dimuat native code via `fread`/`AAsset_read`. Dikelompokkan dari prefix namanya:

| Prefix | Jumlah | Ukuran | Kegunaan |
|---|---|---|---|
| `animN.bin` (N=0..188) | 189 | 1–50 KB | Data animasi skeletal/frame (jumlah frame, durasi, posisi per frame, nama clip: walk/attack/idle/death/skill) |
| `mapN.bin` (N=0..90) | 91 | 2–30 KB | Tilemap data biner (koordinat tile di grid, collision layer, object placement, spawn musuh, pos awal hero) |
| `scnN.bin` (N=0..90) | 91 | 1–10 KB | Data scene/cutscene (dialog sequence, posisi kamera, naskah cinematic) |
| `ui0.bin`, `ui1.bin` | 2 | ~200 KB | Sprite sheet metadata (koordinat frame i0.png~i247.png di atlas tekstur — offset, width, height, rotasi) |
| `img.bin` | 1 | ~? | Indeks gambar |
| `utext0.bin`, `utext1.bin` | 2 | ~? | Teks UI ter-enkripsi (lapisan-2 Cina) |
| `ttext.bin`, `ctext.bin` | 2 | ~? | Teks lain (town text? cutscene text?) |
| `human.bin` | 1 | — | Data hero utama (protagonis stats base) |
| `str.bin` | 1 | — | String constant table |
| `cinema.bin` | 1 | — | Data cutscene/cinema (pemicu adegan) |
| `mod.bin` | 1 | — | Model/module data |
| `satp.bin` | 1 | — | Save/temp? |
| `addi.bin` | 1 | — | Data tambahan/add-on/additional info |
| `task.bin` | 1 | — | Data tugas biner (temp cache) |
| `idata.bin` | **(tidak ada di assets/)** | — | File ini ada DI DALAM APK (terkemas) tapi tidak terlihat sebagai asset biasa — dibaca & XOR-decrypt oleh `libsqltest.so` → diekstrak ke storage. Berisi indeks data gabungan. |

**Catatan teknis**: File `anim*.bin`, `map*.bin`, `scn*.bin` penomorannya berurutan dan selaras dengan ID di XML (e.g. map5.bin dipakai oleh gamelevel yang merujuk map id=5).

---

## 🖼️ SPRITE SHEET PLIST (8 file)

File `.plist` adalah metadata Apple plist (XML format) yang dibaca `CCSpriteFrameCache::addSpriteFramesWithFile()`. Setiap plist berisi dictionary `<frame>` dengan nama frame + rect (x,y,w,h) di PNG induknya:

| Plist | PNG pasangan | Kegunaan |
|---|---|---|
| `MonsterHunter0.plist` | — (menggunakan atlas di u1.bin?) | Sprite sheet utama halaman 0 (UI) |
| `MonsterHunter1.plist` | — | Sprite sheet utama halaman 1 |
| `baozha.plist` | `baozha.png` | Animasi ledakan (爆炸) |
| `fire.plist` | `fire.png` | Animasi api |
| `end.plist` | — | Animasi akhir stage |
| `xing_bloom.plist` | `xing_bloom.png` | Efek bintang mekar |
| `xuehuaFast.plist` | `xuehua.png` | Partikel salju cepat |
| `xuehuaSlow.plist` | `xuehua.png` | Partikel salju lambat |

> **Rahasia dari reverse engineering native:** Ada variabel global `ZipUtils::s_uEncryptionKey` (4096-byte) di `.bss` — game mendukung pemuatan **plist/PNG terenkripsi** via ZipUtils. Tapi di build ini sebagian besar aset plain (tidak terkompresi ZIP terenkripsi).

---

## 🌐 LOKALISASI — DUA BAHASA PENUH

Game mendukung **2 bahasa penuh** (Cina Tradisional dan Inggris) dengan aset terpisah:

| Bahasa | Folder | Cara dipilih |
|---|---|---|
| **Cina Tradisional (default)** | `assets/` (root) | Jika device `Locale.getDefault().getLanguage().equals("zh_TW")` atau `"zh"` → `setLanguage(0)` |
| **Inggris** | `assets/english/` | Selain locale Cina → `setLanguage(1)` |

**Folder `assets/english/` berisi DUPLIKAT SET ASET LENGKAP** yang dialihbahasakan (mirror struktur `assets/` root):
- 22 XML data (monster, item, skill, equip, shop, activecode, dsb.) dengan nama/deskripsi bahasa Inggris
- 92 JSON layout CocoStudio (teks UI di dalamnya sudah bahasa Inggris)
- 200+ gambar PNG tombol/label berisi tulisan Inggris (btn, shop_goods_*, img_name_0..19 untuk nama hero/monster, img_shiping, dll.)
- `data.xml`, `msg.xml`, `cinema.bin`, `ctext.bin` versi Inggris
- Subfolder serupa: `battle/`, `embattle/`, `flop/`, `hero/`, `monster/`, `pay/`, `rally/`, `ranking/`, `register/`, `shop/`, `success/`, `task/`, `tollgate/`, `townres/`, `Loading/`, `MainView/`
- Beberapa aset tambahan khusus Inggris: `num_moner.png`, `public_block.png`, `public_new.png`, `shop_goods_15.png`, `Task_3.json`

> Mekanisme switching: native C++ kemungkinan mem-prefix path dengan `"english/"` saat bahasa Inggris aktif, karena struktur folder persis sama dengan `assets/` root. Jadi string Cina tidak diterjemahkan secara real-time; game memuat file aset yang berbeda tergantung bahasa.

Dari kode Java `MonsterHunter.java`, semua pesan Toast/Dialog juga punya dua versi hardcoded (Cina Tradisional aksara 繁體 dan Inggris). Contoh:
- "確定退出遊戲?" / "exit the game?"
- "沒有可用的廣告..." / "no available ads"
- "鑽石 X2" / "Diamonds X2"
- "恭喜您獲得金幣1500" / "You have got 1500 Gold"
- "提示" / "title"

---

## 📂 FILE HIDDEN / EKSTRA-APK

File berikut **TIDAK ADA di `assets/`** tapi di-referensikan oleh kode:
- `idata.bin` — diekstrak dari APK asset (tersembunyi di `resources.arsc` atau dikemas dalam native?) dan di-dekripsi XOR oleh `libsqltest.so.getFile()` lalu disimpan ke `/data/data/com.joynow.monster.gp/files/idata.bin` saat aplikasi pertama berjalan. File ini adalah indeks data besar yang berisi lookup table untuk nama item/monster.
- `odex/monster.apk` & `odex/monster.dex` — dihapus saat `onCreate()` (anti-tamper? membersihkan file odex/dex sementara).
- Database SQLite: dibuat di native (DBUtil) saat inisialisasi (biasanya di `/data/data/com.joynow.monster.gp/databases/`).
- SharedPreferences `PREFS_KEYCODE` — menyimpan kode redeem yang sudah dipakai (agar tidak bisa dipakai ulang).

---

## 🔧 CARA MODIFIKASI ASET

Untuk modding:
1. **File PNG/JPG/OGG** — dapat diedit langsung (ganti dengan yang resolusi sama, pertahankan alpha channel).
2. **File JSON UI** — dapat diedit dengan editor teks (atur posisi/warna/harga).
3. **File XML** — sudah didekripsi di folder `xml_decryp/`, edit lalu **XOR-encrypt ulang** dengan key yang sama jika ingin dipakai di APK yang di-rebuild. Perhatikan padding 9 byte random di header (yang dibuang).
4. **File `.bin` anim/map/scn** — butuh penelusuran lebih lanjut untuk menemukan format biner; tapi nilainya bisa di-patch via hex editor (mis. ubah HP monster di mapN.bin).
5. **Plist** — format XML plist, mudah diedit (tambah frame, ubah rect).
6. **Musik/SFX (OGG)** — dapat diganti dengan file OGG lain dengan sample rate/channel yang sama.
7. **String bahasa Inggris** — ada di folder `english/`, bisa diedit untuk terjemahan yang lebih baik.

---

*Catatan: Total 2.472 file tercatat; beberapa file di `assets/` ada yang berawalan `i*.png` (248 frame) yang merupakan frame terpotong dari atlas besar. Jika digabung ukuran aset kemungkinan sekitar 40–60 MB (sebelum dikompres APK).*
