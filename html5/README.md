# 🎮 Brave Fighter HTML5 — Web Port

Konversi **Brave Fighter (萌兽獵人) v2.3.4** menjadi game HTML5 tunggal yang dapat dimainkan langsung di browser (desktop & HP), tanpa perlu install APK, tanpa iklan, dan semua IAP gratis.

## 📂 Isi folder
| File | Deskripsi |
|---|---|
| `index.html` | **File game utama (90 KB)** — buka langsung di browser, tidak perlu server |
| `gamedata.json` | Data game (monster, skill, level, shop) yang diekstrak dari APK |

## ▶ Cara Bermain

### Cara termudah (tanpa server)
1. Copy `index.html` ke HP/laptop
2. Buka dengan browser (Chrome, Safari, Firefox)
3. Klik **開始冒險** → main

### Cara dengan local server (untuk testing di HP)
Server sudah menyala di port **8080** pada preview sandbox.
Jika mau jalankan sendiri:
```bash
cd html5
python3 -m http.server 8080
```
Lalu buka `http://localhost:8080` di browser.

## 🎯 Cara Main

Game ini adalah **side-scrolling auto-battler** (pertarungan otomatis horizontal):

1. **Menu Utama** → mulai baru / lanjutkan save / hapus save
2. **🗺 Pilih Level** → tap stage yang sudah terbuka (kunci 🔒 berarti belum解锁)
3. **🏠 城鎮 (Town)** → atur tim, beli di toko, pelajari skill
4. **⚔ Battle** → hero berjalan & serang otomatis, kamu bisa:
   - Tap **tombol skill bulat** di bawah untuk cast skill aktif
   - Tap **1× / 2× / 3×** untuk atur kecepatan
   - Tap **逃跑** untuk keluar

## ⚔ Sistem Game

| Fitur | Status |
|---|---|
| 12 hero dari game asli (麗蒂雅, 血牙, 艾諾, 庫格, s.d. 斯爾夫 + boss hero) | ✅ |
| 30 skill aktif (治療, 火焰, 冰霜, 地震, 雷霆…) | ✅ |
| 58 level dengan boss battle per 5 stage | ✅ |
| Multiple wave per level | ✅ |
| Sistem 5 slot team (bisa ganti2 hero) | ✅ |
| Level up hero + stat growth (HP/ATK naik per level) | ✅ |
| Toko: gold, gems, potion, scroll, hero pack, equipment bundle | ✅ |
| **Semua IAP real-money GRATIS** (crystal pack jadi gold 0 klik) | ✅ |
| 3 skill hotbar dengan cooldown + MP | ✅ |
| Auto-save ke localStorage browser | ✅ |
| Procedural sprite rendering (tidak butuh asset gambar dari APK) | ✅ |
| Damage number floating text, efek cast/blast/heal | ✅ |
| Speed multiplier 1×/2×/3× | ✅ |
| Scroll kebangkitan (revive saat kalah) | ✅ |

## 🧑‍🤝‍🧑 Class Hero (dari data asli)
| Tipe | Warna | Nama |
|---|---|---|
| 0 | Coklat | 肉盾 (Tank) |
| 1 | Merah | 敏捷 (Agile/Melee) |
| 2 | Biru | 強攻 (Magic/Ranged) |
| 3 | Ungu | 遠攻 (Ranged) |
| 4 | Hijau | 輔助 (Support/Heal) |

## 📊 Kualitas hero (border warna)
| Warna | Kualitas |
|---|---|
| Abu-abu | Common (★) |
| Biru | Rare (★★) |
| Ungu | Epic (★★★) |
| Orange | Legendary (★★★★) |
| Merah | Mythic (★★★★★) |

## 🔧 Data Source
Data game (`monster.xml`, `skill.xml`, `gamelevel.xml`, `shop.xml`) diekstrak langsung dari aset APK Brave_Fighter v2.3.4 setelah decrypt di riset awal.

Stat hero (hp/damage/defense/speed/range), harga, dan skill formula (delt, value, range, attr) **sama dengan data asli APK**.

## 🎮 Controls
- **Di HP**: Tap layar (skill button, tombol, card)
- **Di PC**: Mouse click; tombol keyboard belum di-bind (klik saja)

## 💾 Save System
- Game auto-save setelah setiap perubahan (membeli, upgrade, menang level)
- Data disimpan di `localStorage` browser (key: `bravefighter_html5_save_v1`)
- Reset save dari menu utama "🗑 清除存檔重玩"

## ⚠ Catatan
- Sprite digambar secara **prosedural** (warna + bentuk) karena asset tekstur asli dalam format `.plist + .pvr.ccz` (Cocos2d-x) yang perlu unpack khusus. Bentuk karakter di HTML5 adalah representasi tipe class + kualitas, bukan 100% sama pixel-for-pixel dengan aslinya — tapi game feel (stat, balancing, movement, attack range, skill) mengikuti data asli.
- Audio/musik belum dimasukkan (karena file OGG/MP3 ukuran total ~10 MB dan butuh asset sprite loading logic).
- Battle AI sederhana: nearest-target + auto-range (cukup untuk pengalaman single-player yang adiktif).

## 🚀 Cheat / Test Cepat
Buka DevTools (F12) di browser, jalankan di console:
```js
SAVE.gold = 999999;     // tambah gold
SAVE.gem = 999;         // tambah crystal
SAVE.scrolls = 99;      // revive scroll
SAVE.potions = 99;      // potion
save();                 // simpan
location.reload();
```

## 📝 Roadmap (yang belum dikerjakan)
- [ ] Musik/sound effect OGG dari APK
- [ ] PvP / Defender AI (BattleArea.xml)
- [ ] Equipment & equip upgrade (weapon/clothes/accessory)
- [ ] Achievement system
- [ ] Multiple formation (zhenxing)
- [ ] Real sprite atlas (ekstrak .pvr.ccz → PNG)

---

Selamat bermain!
