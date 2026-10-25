/* ============================================================================
 * GHIDRA-STYLE DECOMPILATION (C pseudocode)
 * Brave Fighter: Monster Hunter v2.3.4
 * Library : lib/armeabi/libsqltest.so (37.888 byte)
 *
 * Satu-satunya fungsi non-runtime yang diekspor:
 *   Java_com_joynow_apt_MyApplication_getFile  @0xff8
 *
 * TEMUAN BARU (sebelumnya dikira hanya wrapper AAssetManager):
 *   Fungsi ini melakukan XOR-DEKRIPSI 8-byte key yang diambil dari 8-byte
 *   PERTAMA file yang dibacanya. 8-byte ini menjadi kunci XOR berulang untuk
 *   sisa isi file; setelah dekripsi, isi ditulis ke temporary file "wb+"
 *   dan FILE* dikembalikan ke Java (InputStream).
 * ============================================================================ */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <android/log.h>

FILE* Java_com_joynow_apt_MyApplication_getFile(JNIEnv *env, jobject thiz,
                                               jobject assetMgr, jstring pathJ)
{
    AAssetManager *mgr;
    AAsset *asset;
    const char *path;
    void *buf;
    int   len;
    unsigned char keyBuf[8];
    FILE *fp;
    int   i, ki;
    unsigned char b;

    /* (0x1006) AAssetManager_fromJava */
    mgr = AAssetManager_fromJava(env, assetMgr);
    /* (0x1010) GetStringUTFChars */
    path = (*env)->GetStringUTFChars(env, pathJ, NULL);

    /* (0x1016-0x1024) AAssetManager_open, AAsset_getLength */
    asset = AAssetManager_open(mgr, path, 0);
    len   = AAsset_getLength(asset);

    /* (0x101c) malloc(len + 1) */
    buf   = malloc(len + 1);

    /* (0x1028) AAsset_read(buf, len, asset) */
    AAsset_read(asset, buf, len);

    /* (0x103c-0x1040) GetObjectField dari thiz + fopen("wb+") */
    fp = fopen(resolveInternalPath(), "wb+");
    if (fp == NULL) {
        __android_log_print(ANDROID_LOG_ERROR, "libsqltest",
                            "Cannot open temp file for writing");
        return NULL;
    }

    /* (0x104c-0x1060) COPY 8 BYTE PERTAMA ke keyBuf */
    memset(keyBuf, 0, 8);
    int start = 8;
    if (len >= 8) {
        for (i = 0; i < 8; i++)
            keyBuf[i] = ((unsigned char*)buf)[i];
    } else {
        start = 0;   /* file pendek: tidak ada key header */
    }

    /* (0x1066-0x1092) XOR-DECRYPT body dengan key 8-byte rolling */
    if (len > start) {
        ki = 0;
        for (i = start; i < len; i++) {
            b = ((unsigned char*)buf)[i];
            b ^= keyBuf[ki];
            ((unsigned char*)buf)[i] = b;
            ki++;
            if (ki > 7) ki = 0;
        }
    }

    /* (0x1094) free keyBuf stack (tidak perlu) */
    /* (0x10a2) fwrite(buf+start, 1, len-start, fp) */
    fwrite(((char*)buf) + start, 1, len - start, fp);

    /* (0x10a8-0x10b4) fclose temp file?  AAsset_close + free(buf) */
    AAsset_close(asset);
    free(buf);

    /* Return FILE* (Java akan membaca dari internal storage lewat fd/name) */
    return fp;
}
