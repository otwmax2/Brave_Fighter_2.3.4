#!/usr/bin/env bash
# build.sh — Bangun APK mod menu dan inject ke game asli.
set -e
cd "$(dirname "$0")/.."

echo "[+] Menjalankan Gradle assembleDebug..."
./gradlew assembleDebug

MOD_APK="app/build/outputs/apk/debug/app-debug.apk"
if [ ! -f "$MOD_APK" ]; then
    echo "[!] Build gagal: $MOD_APK tidak ditemukan"
    exit 1
fi

GAME_APK="${1:-../Brave_Fighter.apk}"
OUT_APK="${2:-../Brave_Fighter_MOD.apk}"

echo "[+] Inject ke $GAME_APK -> $OUT_APK"
python3 scripts/inject.py "$GAME_APK" "$MOD_APK" "$OUT_APK"

echo "[+] Sign APK..."
python3 scripts/signapk.py "$OUT_APK"

echo "[+] Selesai. APK ter-sign siap diinstal via adb install -r ${OUT_APK%.apk}_signed.apk"
