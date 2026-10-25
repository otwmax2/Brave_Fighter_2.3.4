#!/usr/bin/env python3
"""
signapk.py — Tanda tangani APK secara v1 (JAR signing) + v2 (APK Signature Scheme v2)
menggunakan library `apksig` yang tersedia via pip atau uber-apk-signer.

Penggunaan:
    python3 signapk.py <apk_unsigned> [apk_signed]

Dependensi:
    pip install apksig   (jika tersedia), atau gunakan uber-apk-signer.jar yang
    akan di-download otomatis jika Java tersedia.
"""
import sys, os, subprocess, zipfile, shutil, tempfile

def try_python_sign(in_path, out_path):
    try:
        from apksig import sign
        sign(in_path, out_path)
        return True
    except Exception as e:
        print(f"[!] Python apksign gagal: {e}")
        return False

def try_uber_signer(in_path, out_path):
    """Download uber-apk-signer.jar jika perlu lalu jalankan."""
    jar = os.path.join(os.path.dirname(__file__), 'uber-apk-signer.jar')
    if not os.path.exists(jar):
        import urllib.request
        url = 'https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar'
        print(f"[+] Download uber-apk-signer dari {url}...")
        try:
            urllib.request.urlretrieve(url, jar)
        except Exception as e:
            print(f"[!] Download gagal: {e}"); return False
    java = shutil.which('java')
    if not java:
        print("[!] Java tidak tersedia; tanda tangan v2 tidak bisa dibuat.")
        return False
    cmd = [java, '-jar', jar, '-a', in_path, '-o', os.path.dirname(out_path)]
    if out_path.endswith('_signed.apk') or not out_path.endswith('.apk'):
        pass
    subprocess.run(cmd, check=False)
    return os.path.exists(out_path)

def main():
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    inp = sys.argv[1]
    base = inp[:-4] if inp.endswith('.apk') else inp
    out = sys.argv[2] if len(sys.argv) > 2 else base + '_signed.apk'
    if try_python_sign(inp, out):
        print(f"[+] Signed (python-apksig): {out}")
        return
    if try_uber_signer(inp, out):
        print(f"[+] Signed (uber-apk-signer): {out}")
        return
    print("[!] Gagal menandatangani APK. Install Java & jalankan uber-apk-signer secara manual.")
    sys.exit(2)

if __name__ == '__main__':
    main()
