package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TalkingDataGA;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
final class bo {
    private static final String a = "gaandroid.talkingdata.net";
    private static final String c = "http://gaandroid.talkingdata.net/g/d?crc=";
    private static String b = "211.151.121.43";
    private static final CRC32 d = new CRC32();

    bo() {
    }

    static boolean a(String str) throws Throwable {
        bp.b("Send data to server.");
        byte[] bArrB = b(str);
        if (bp.b) {
            bp.b("after gzip size " + bArrB.length);
        }
        d.reset();
        d.update(bArrB);
        try {
            int iA = g.a(TalkingDataGA.getContext(), a, b, c + Long.toHexString(d.getValue()), "", bArrB).a();
            bp.a(new StringBuilder().append("Post data operation response status code: ").append(iA).toString());
            if (iA == 200) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] b(java.lang.String r4) throws java.lang.Throwable {
        /*
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream
            r3.<init>()
            r2 = 0
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L39
            r1.<init>(r3)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L39
            java.lang.String r0 = "UTF-8"
            byte[] r0 = r4.getBytes(r0)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            r1.write(r0)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            if (r1 == 0) goto L1c
            r1.finish()     // Catch: java.io.IOException -> L21
            r1.close()     // Catch: java.io.IOException -> L21
        L1c:
            byte[] r0 = r3.toByteArray()
            return r0
        L21:
            r0 = move-exception
            r0.printStackTrace()
            goto L1c
        L26:
            r0 = move-exception
            r1 = r2
        L28:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L1c
            r1.finish()     // Catch: java.io.IOException -> L34
            r1.close()     // Catch: java.io.IOException -> L34
            goto L1c
        L34:
            r0 = move-exception
            r0.printStackTrace()
            goto L1c
        L39:
            r0 = move-exception
            r1 = r2
        L3b:
            if (r1 == 0) goto L43
            r1.finish()     // Catch: java.io.IOException -> L44
            r1.close()     // Catch: java.io.IOException -> L44
        L43:
            throw r0
        L44:
            r1 = move-exception
            r1.printStackTrace()
            goto L43
        L49:
            r0 = move-exception
            goto L3b
        L4b:
            r0 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.bo.b(java.lang.String):byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.zip.DeflaterOutputStream] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] c(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream
            r3.<init>()
            r2 = 0
            java.util.zip.Deflater r4 = new java.util.zip.Deflater
            r0 = 9
            r1 = 1
            r4.<init>(r0, r1)
            java.util.zip.DeflaterOutputStream r1 = new java.util.zip.DeflaterOutputStream     // Catch: java.io.FileNotFoundException -> L2e java.io.IOException -> L3e java.lang.Throwable -> L4e
            r1.<init>(r3, r4)     // Catch: java.io.FileNotFoundException -> L2e java.io.IOException -> L3e java.lang.Throwable -> L4e
            java.lang.String r0 = "UTF-8"
            byte[] r0 = r5.getBytes(r0)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d java.io.FileNotFoundException -> L5f
            r1.write(r0)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d java.io.FileNotFoundException -> L5f
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L29
        L21:
            r4.end()
            byte[] r0 = r3.toByteArray()
            return r0
        L29:
            r0 = move-exception
            r0.printStackTrace()
            goto L21
        L2e:
            r0 = move-exception
            r1 = r2
        L30:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L39
            goto L21
        L39:
            r0 = move-exception
            r0.printStackTrace()
            goto L21
        L3e:
            r0 = move-exception
            r1 = r2
        L40:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L49
            goto L21
        L49:
            r0 = move-exception
            r0.printStackTrace()
            goto L21
        L4e:
            r0 = move-exception
            r1 = r2
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L56
        L55:
            throw r0
        L56:
            r1 = move-exception
            r1.printStackTrace()
            goto L55
        L5b:
            r0 = move-exception
            goto L50
        L5d:
            r0 = move-exception
            goto L40
        L5f:
            r0 = move-exception
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.bo.c(java.lang.String):byte[]");
    }
}
