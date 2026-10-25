#!/usr/bin/env python3
"""
patch_smali.py — Menerapkan patch smali untuk free IAP & no-ads pada APK hasil decode.

Penggunaan:
    python3 patch_smali.py <apk_decoded_dir>

Patch yang diterapkan:
  1. IabResult.isSuccess()  -> return true  (const/4 v0, 0x1 ; return v0)
  2. IabResult.isFailure()  -> return false
  3. MonsterHunter.showAds(I)V      -> no-op (return-void)
  4. MonsterHunter.showAdsList()V   -> no-op
  5. MonsterHunter: ganti semua panggilan IronSource.showRewardedVideo()
     dengan memanggil native vedioAdsOver()I langsung (reward langsung, tanpa iklan).
  6. Tambahkan hook class com.mod.menu.* ke dalam smali (dikopi dari folder
     mod_menu/smali_out yang di-generate oleh build Android) saat inject.
"""
import os, sys, re, pathlib, shutil

def apply_patches(smali_dir: str):
    iab = os.path.join(smali_dir, 'com/yunva/monsterhunter/IabResult.smali')
    if os.path.isfile(iab):
        with open(iab,'r',encoding='utf-8',errors='replace') as f:
            txt = f.read()
        txt = re.sub(
            r'\.method public isSuccess\(\)Z\s+\.registers \d+.*?\.end method',
            '.method public isSuccess()Z\n'
            '    .registers 2\n'
            '    const/4 v0, 0x1\n'
            '    return v0\n'
            '.end method',
            txt, count=1, flags=re.MULTILINE|re.DOTALL)
        txt = re.sub(
            r'\.method public isFailure\(\)Z\s+\.registers \d+.*?\.end method',
            '.method public isFailure()Z\n'
            '    .registers 2\n'
            '    const/4 v0, 0x0\n'
            '    return v0\n'
            '.end method',
            txt, count=1, flags=re.MULTILINE|re.DOTALL)
        with open(iab,'w',encoding='utf-8') as f: f.write(txt)
        print("[+] Patched IabResult.isSuccess/isFailure")

    mh = os.path.join(smali_dir, 'com/yunva/monsterhunter/MonsterHunter.smali')
    if os.path.isfile(mh):
        with open(mh,'r',encoding='utf-8',errors='replace') as f:
            txt = f.read()
        # showAds(I)V -> return-void
        txt = re.sub(
            r'\.method private static showAds\(I\)V\n\.registers \d+\n(?:.*?)\n\.end method',
            '.method private static showAds(I)V\n'
            '    .registers 1\n'
            '    return-void\n'
            '.end method',
            txt, count=1, flags=re.MULTILINE|re.DOTALL)
        txt = re.sub(
            r'\.method private static showAdsList\(\)V\n\.registers \d+\n(?:.*?)\n\.end method',
            '.method private static showAdsList()V\n'
            '    .registers 1\n'
            '    return-void\n'
            '.end method',
            txt, count=1, flags=re.MULTILINE|re.DOTALL)
        # ganti showRewardedVideo dengan vedioAdsOver()I
        txt = txt.replace(
            'invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo()V',
            'invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->vedioAdsOver()I')
        # showInterstitial -> hapus (return sebelum invoke)
        txt = txt.replace(
            'invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial()V',
            'nop')
        with open(mh,'w',encoding='utf-8') as f: f.write(txt)
        print("[+] Patched MonsterHunter (no-ads)")

    print("[+] Patch smali selesai.")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    apply_patches(sys.argv[1])
