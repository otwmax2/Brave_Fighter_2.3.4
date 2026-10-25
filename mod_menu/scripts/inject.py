#!/usr/bin/env python3
"""
inject.py — Menggabungkan APK game asli dengan APK mod menu hasil build.

Cara kerja:
  1. Buka APK asli + APK mod-menu.
  2. Keluarkan isi APK asli ke folder kerja.
  3. Tambahkan smali/classes baru dari mod-menu (com.mod.menu.*) ke classes.dex
     — karena kita tidak punya smali/baksmali, maka file DEX terpisah
       (classes2.dex / classes3.dex, ...) DITAMBAHKAN jika APK mod-menu
       mempunyai classes2.dex (umumnya multidex dengan AndroidX).
  4. Tambahkan library native libmodmenu.so ke lib/armeabi-v7a/.
  5. Modifikasi AndroidManifest.xml (pakai Manifest patcher atau gunakan
     AndroidManifest dari mod-menu dan merge activity/service) — karena
     patching binary manifest sulit, dianjurkan pakai apktool decode/encode.
  6. Patch smali yang sudah ada (com/yunva/monsterhunter/*) via patch_smali.py
     (folder smali di-patch jika tersedia).

Penggunaan:
    python3 inject.py <game_apk> <modmenu_apk> <output_apk>
"""
import sys, os, zipfile, shutil, tempfile, subprocess

def copy_classes(src_apk, dst_dir):
    """Salin classes*.dex dari src_apk ke dst_dir, menghindari bentrok nama."""
    with zipfile.ZipFile(src_apk,'r') as z:
        existing = {n for n in z.namelist() if n.startswith('classes') and n.endswith('.dex')}
        next_idx = len(existing) + 1
        # classes.dex dari menu disalin sebagai classesN.dex
        for name in z.namelist():
            if name.endswith('.dex') and name.startswith('classes'):
                data = z.read(name)
                target = f'classes{next_idx}.dex'
                # Jika hanya 1 classes.dex, rename jadi classes2.dex
                out = os.path.join(dst_dir, target)
                with open(out,'wb') as f: f.write(data)
                print(f"[+] Copied {name} -> {target}")
                next_idx += 1

def copy_native_libs(src_apk, dst_dir):
    """Salin lib/**/*.so dari mod (khusus libmodmenu.so) ke lib/armeabi-v7a/."""
    libdir = os.path.join(dst_dir, 'lib', 'armeabi-v7a')
    os.makedirs(libdir, exist_ok=True)
    with zipfile.ZipFile(src_apk,'r') as z:
        for n in z.namelist():
            if n.startswith('lib/') and n.endswith('.so') and ('modmenu' in n or 'dobby' in n or 'kitty' in n):
                data = z.read(n)
                out = os.path.join(libdir, os.path.basename(n))
                with open(out,'wb') as f: f.write(data)
                print(f"[+] Copied native lib: {n}")

def merge_apk(game_apk, mod_apk, out_apk):
    tmp = tempfile.mkdtemp(prefix='bfmod_inject_')
    # 1. Ekstrak game APK
    with zipfile.ZipFile(game_apk,'r') as z:
        z.extractall(tmp)
    # 2. Tambahkan classes dari mod
    copy_classes(mod_apk, tmp)
    copy_native_libs(mod_apk, tmp)
    # 3. Tambahkan resources dari mod (layout/values menu)
    with zipfile.ZipFile(mod_apk,'r') as z:
        for n in z.namelist():
            if n.startswith('res/') or n.startswith('assets/'):
                # Skip AndroidManifest dan classes
                target = os.path.join(tmp, n)
                os.makedirs(os.path.dirname(target), exist_ok=True)
                with open(target,'wb') as f: f.write(z.read(n))
    # 4. Repack
    if os.path.exists(out_apk): os.remove(out_apk)
    with zipfile.ZipFile(out_apk,'w',zipfile.ZIP_DEFLATED) as zout:
        for root, dirs, files in os.walk(tmp):
            for fn in files:
                fp = os.path.join(root, fn)
                arc = os.path.relpath(fp, tmp)
                zout.write(fp, arc)
    shutil.rmtree(tmp, ignore_errors=True)
    print(f"[+] Merged APK saved: {out_apk} ({os.path.getsize(out_apk)} bytes)")
    print("[!] CATATAN: AndroidManifest.xml dari game ASLI yang dipakai.")
    print("    Jalankan patch_smali.py pada hasil decode apktool sebelum repack")
    print("    agar mod menu activity+service ikut terdaftar.")

if __name__ == '__main__':
    if len(sys.argv) < 4:
        print(__doc__); sys.exit(1)
    merge_apk(sys.argv[1], sys.argv[2], sys.argv[3])
