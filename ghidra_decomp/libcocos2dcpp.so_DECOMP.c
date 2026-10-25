/* ============================================================================
 * GHIDRA-STYLE DECOMPILATION (C pseudocode)
 * Brave Fighter: Monster Hunter v2.3.4 (com.joynow.monster.gp)
 * Library : lib/armeabi/libcocos2dcpp.so
 *
 * Tipe data native ARM Thumb, calling convention AAPCS:
 *   r0 = this / param 1 / return value
 *   r1 = param 2, r2 = param 3, r3 = param 4
 * ============================================================================
 */

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/* ----------------------------------------------------------------------
 * CONSTANTS / STRING POOL (diresolve dari literal pool .rodata)
 *   Alamat key RC4 utama  : 0x50f516 = "akidbx"
 *   Alamat filter atribut : 0x50fc9f = "value"
 * ---------------------------------------------------------------------- */
#define KEY_RC4         "akidbx"      /* 6 byte, kunci RC4 lapisan-2 XML */
#define ATTR_VALUE_STR  "value"       /* atribut numerik yang TIDAK dienkripsi */

/* ============================================================
 * 1. RC4 KEY SCHEDULING ALGORITHM  (rc4KSA @ 0x1b8e68)
 * ============================================================ */
int rc4KSA(const uint8_t *key, int keylen, uint8_t S[256])
{
    int i, j = 0;
    if (key == NULL || keylen == 0) return 0;
    for (i = 0; i < 256; i++) S[i] = (uint8_t)i;
    for (i = 0; i < 256; i++) {
        uint8_t k = key[i % keylen];
        j = (j + S[i] + k) & 0xff;
        uint8_t tmp = S[i]; S[i] = S[j]; S[j] = tmp;
    }
    return 1;
}

/* ============================================================
 * 2. RC4 PRGA — enkripsi/dekripsi simetris  (rc4Crypt @ 0x1b8ebc)
 * ============================================================ */
int32_t rc4Crypt(const uint8_t *in, int inlen, const char *key,
                uint8_t *out, int *poutlen)
{
    uint8_t S[256];
    int i, j = 0, outlen = 0;
    if (key == NULL || in == NULL || inlen == 0) return 0;
    if (!rc4KSA((const uint8_t*)key, strlen(key), S)) return 0;
    i = j = 0;
    for (int n = 0; n < inlen; n++) {
        i = (i + 1) & 0xff;
        j = (j + S[i]) & 0xff;
        uint8_t t = S[i]; S[i] = S[j]; S[j] = t;
        uint8_t kstream = S[(S[i] + S[j]) & 0xff];
        out[n] = in[n] ^ kstream;
        outlen++;
    }
    if (poutlen) *poutlen = outlen;
    return -1;
}

/* ============================================================
 * 3. HEX ENCODE UPPERCASE  (hexEncode_upper @ 0x1b8f46)
 * ============================================================ */
char *hexEncode_upper(const uint8_t *bin, int len)
{
    if (bin == NULL) return NULL;
    char *s = (char*)malloc((size_t)len * 2 + 1);
    if (!s) return NULL;
    for (int i = 0; i < len; i++) {
        uint8_t hi = (bin[i] >> 4) & 0xf;
        uint8_t lo = bin[i] & 0xf;
        s[i*2]   = (hi <= 9) ? ('0' + hi) : ('7' + hi);
        s[i*2+1] = (lo <= 9) ? ('0' + lo) : ('7' + lo);
    }
    s[len*2] = '\0';
    return s;
}

/* ============================================================
 * 4. ENCRYPT — lapisan-2 XML  (Encrypt @ 0x1b8f96)
 *    char *Encrypt(str, key) = RC4 -> hexEncode
 * ============================================================ */
char *Encrypt(const char *plain, const char *key)
{
    int plainlen; uint8_t *rc4buf; int rc4len; char *hexstr;
    if (plain == NULL || key == NULL) return NULL;
    plainlen = strlen(plain);
    if (plainlen == 0) return NULL;
    rc4buf = (uint8_t*)malloc((size_t)plainlen);
    if (!rc4buf) return NULL;
    rc4Crypt((const uint8_t*)plain, plainlen, key, rc4buf, &rc4len);
    hexstr = hexEncode_upper(rc4buf, rc4len);
    free(rc4buf);
    return hexstr;
}

/* ============================================================
 * 5. HEX DECODE UPPERCASE  (hexDecode_upper @ 0x1b8ff6)
 * ============================================================ */
uint8_t *hexDecode_upper(const char *hex)
{
    int hexlen;
    if (hex == NULL) return NULL;
    hexlen = strlen(hex);
    if (hexlen == 0 || (hexlen & 1)) return NULL;
    int binlen = hexlen / 2;
    uint8_t *bin = (uint8_t*)malloc((size_t)binlen);
    if (!bin) return NULL;
    for (int i = 0; i < binlen; i++) {
        char hc = hex[i*2], lc = hex[i*2+1];
        int hi, lo;
        if      (hc >= '0' && hc <= '9') hi = hc - '0';
        else if (hc >= 'A' && hc <= 'F') hi = hc - '7';
        else { free(bin); return NULL; }
        if      (lc >= '0' && lc <= '9') lo = lc - '0';
        else if (lc >= 'A' && lc <= 'F') lo = lc - '7';
        else { free(bin); return NULL; }
        bin[i] = (uint8_t)((hi << 4) | lo);
    }
    return bin;
}

/* ============================================================
 * 6. DECRYPT — lapisan-2 XML  (Decrypt @ 0x1b904e)
 *    char* Decrypt(hex_ct, key) = hexDecode -> RC4 -> null-term
 * ============================================================ */
char *Decrypt(const char *hex_ct, const char *key)
{
    uint8_t *raw; int hexlen, rawlen; char *out; int outlen;
    if (hex_ct == NULL || key == NULL) return NULL;
    hexlen = strlen(hex_ct);
    if (hexlen == 0 || (hexlen & 1)) return NULL;
    raw = hexDecode_upper(hex_ct);
    if (!raw) return NULL;
    rawlen = hexlen / 2;
    out = (char*)malloc((size_t)rawlen + 1);
    if (!out) { free(raw); return NULL; }
    if (!rc4Crypt(raw, rawlen, key, (uint8_t*)out, &outlen)) {
        free(raw); free(out); return NULL;
    }
    out[outlen] = '\0';
    free(raw);
    return out;
}

/* ============================================================
 * 7. gbkToUTF8  (@ 0x1b9b5d)
 *    Wrapper iconv mengubah string GBK hasil Decrypt() menjadi
 *    UTF-8 untuk ditampilkan di UI.
 * ============================================================ */
const char *gbkToUTF8(const char *gbk_str);  /* via iconv */

/* ============================================================
 * 8. Pembaca atribut XML  (XmlAttrDecoder_read @ 0x173518)
 *    Loop atribut tinyxml2: skip "value" (numerik), whitelist
 *    atribut referensi, sisanya Decrypt("akidbx")->gbkToUTF8.
 * ============================================================ */
void XmlAttrDecoder_read(void *elem)
{
    /* ...iterasi atribut XML... */
    /* if strcmp(name, "value") == 0 → atoi(); set int value */
    /* else if isPlaintextAttr(name) → set string */
    /* else:
        char *dec = Decrypt(val, KEY_RC4);
        const char *u8 = gbkToUTF8(dec);
        setObject(CCString::create(u8), name);
        free(dec); */
}

/* ============================================================
 * Helper deskripsi item (getWeaponDescrib @ 0x16d51d dkk.)
 * ============================================================ */
const char *getWeaponDescrib(int id) {
    const char *hex = lookupField(id, "describ");
    char *gbk = Decrypt(hex, KEY_RC4);
    const char *u8 = gbkToUTF8(gbk);
    free(gbk);
    return u8;
}
