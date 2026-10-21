package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.HandlerThread;
import com.facebook.ads.AudienceNetworkActivity;
import com.ironsource.sdk.constants.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
final class bh {
    static final int a = 0;
    static final int b = 1;
    static final int c = 2;
    static final int d = 3;
    static Handler g;
    private static String h = AudienceNetworkActivity.WEBVIEW_ENCODING;
    private static final CRC32 i = new CRC32();
    private static String j = "-----BEGIN CERTIFICATE-----\nMIIDyDCCArACCQD9bypp/+5VujANBgkqhkiG9w0BAQUFADCBpDELMAkGA1UEBhMC\nQ04xEDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxGDAWBgNVBAoM\nD1RhbGtpbmdEYXRhLmNvbTEYMBYGA1UECwwPVGFsa2luZ0RhdGEuY29tMRIwEAYD\nVQQDDAl4ZHJpZy5jb20xKTAnBgkqhkiG9w0BCQEWGmhpZXJhcmNoLnBhbkB0ZW5k\nY2xvdWQuY29tMCAXDTE0MDUxNjA4MzkxMFoYDzIxMTQwNDIyMDgzOTEwWjCBpDEL\nMAkGA1UEBhMCQ04xEDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcx\nGDAWBgNVBAoMD1RhbGtpbmdEYXRhLmNvbTEYMBYGA1UECwwPVGFsa2luZ0RhdGEu\nY29tMRIwEAYDVQQDDAl4ZHJpZy5jb20xKTAnBgkqhkiG9w0BCQEWGmhpZXJhcmNo\nLnBhbkB0ZW5kY2xvdWQuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC\nAQEArssg6Iz/jp1/5I20O0aCUcF7Vqrce6DdwblXCbcT44CRYUSwyGteQfPUYGPA\n/2kyk/H/maK5UC6SkI9TOeDs+CBz1oCvxLUd20kMF3J3FT2XENE3fwCmlcppYpdO\nHTZBn72GyYuVLj4lI3MRm8DZoPzYYj0TaZxrX3qpy8cNV4LC7BiBnJtExqAvB0q7\nfUzeDIKrhkFxPbzOUE5txNwwRLu+/neOQJQ48UPesMH3QbYLhCh+l8f9G6TQ1pND\ndcwACsDrVjFPab0w+N1jeev/k+bd5YLxEaQ3HtZvmgOXBL+kREZyKhctaHqcwbWK\nAwJHQeYmJbzw/V4/NQCIGhnlFQIDAQABMA0GCSqGSIb3DQEBBQUAA4IBAQCRp0QL\nydMOemUDkk7n+zIPGa1Ndt2BXJYIgzMbpuWI9h2rVXfz7K9k8PZs9stt1S5ek6TQ\nbWxnrQxanyx2jFf4h+erds0jwAcJrDRG8kFcRsLdx/BjKcBG91HjYuC65RD9eyt+\nXzrmdF8UCvDo2LrL+nkAbufd5XnbBa8I7Jucsu2wOkCa8oatnuorgnh/soEL6zcb\nbLgnCqqXUBKCg5U+mS2WFqEoBnJJoeKDRp08T5juhAJNF/EynX63qn9dS3IqxqeZ\nJ/urMkKVxUCffyZdbezTeljqaaxsQ8xFSK58TSVYFEr9jAGO+jKUWb0tKMSUr/tN\n82L5ZccC8n6eg0YU\n-----END CERTIFICATE-----";
    static long e = 300000;
    static long f = 120000;
    private static final HandlerThread k = new HandlerThread("NetWorkThread");

    static {
        g = null;
        k.start();
        g = new bi(k.getLooper());
    }

    bh() {
    }

    static final Handler a() {
        return g;
    }

    static String a(List list) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(Constants.RequestParameters.LEFT_BRACKETS);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(Constants.RequestParameters.RIGHT_BRACKETS);
            if (bp.b) {
                bp.a("List2JsonString()# \n" + sb.toString());
            }
            return sb.toString();
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.zip.DeflaterOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] a(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream
            r3.<init>()
            r2 = 0
            java.util.zip.Deflater r4 = new java.util.zip.Deflater
            r0 = 9
            r1 = 1
            r4.<init>(r0, r1)
            java.util.zip.DeflaterOutputStream r1 = new java.util.zip.DeflaterOutputStream     // Catch: java.io.FileNotFoundException -> L32 java.lang.Throwable -> L4a java.lang.Throwable -> L62
            r1.<init>(r3, r4)     // Catch: java.io.FileNotFoundException -> L32 java.lang.Throwable -> L4a java.lang.Throwable -> L62
            java.lang.String r0 = "UTF-8"
            byte[] r0 = r5.getBytes(r0)     // Catch: java.lang.Throwable -> L73 java.lang.Throwable -> L75 java.io.FileNotFoundException -> L77
            r1.write(r0)     // Catch: java.lang.Throwable -> L73 java.lang.Throwable -> L75 java.io.FileNotFoundException -> L77
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L29
        L21:
            r4.end()
            byte[] r0 = r3.toByteArray()
            return r0
        L29:
            r0 = move-exception
            boolean r1 = com.tendcloud.tenddata.game.bp.b
            if (r1 == 0) goto L21
            r0.printStackTrace()
            goto L21
        L32:
            r0 = move-exception
            r1 = r2
        L34:
            boolean r2 = com.tendcloud.tenddata.game.bp.b     // Catch: java.lang.Throwable -> L73
            if (r2 == 0) goto L3b
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L73
        L3b:
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L41
            goto L21
        L41:
            r0 = move-exception
            boolean r1 = com.tendcloud.tenddata.game.bp.b
            if (r1 == 0) goto L21
            r0.printStackTrace()
            goto L21
        L4a:
            r0 = move-exception
            r1 = r2
        L4c:
            boolean r2 = com.tendcloud.tenddata.game.bp.b     // Catch: java.lang.Throwable -> L73
            if (r2 == 0) goto L53
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L73
        L53:
            if (r1 == 0) goto L21
            r1.close()     // Catch: java.io.IOException -> L59
            goto L21
        L59:
            r0 = move-exception
            boolean r1 = com.tendcloud.tenddata.game.bp.b
            if (r1 == 0) goto L21
            r0.printStackTrace()
            goto L21
        L62:
            r0 = move-exception
            r1 = r2
        L64:
            if (r1 == 0) goto L69
            r1.close()     // Catch: java.io.IOException -> L6a
        L69:
            throw r0
        L6a:
            r1 = move-exception
            boolean r2 = com.tendcloud.tenddata.game.bp.b
            if (r2 == 0) goto L69
            r1.printStackTrace()
            goto L69
        L73:
            r0 = move-exception
            goto L64
        L75:
            r0 = move-exception
            goto L4c
        L77:
            r0 = move-exception
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.bh.a(java.lang.String):byte[]");
    }

    private static boolean b(String str) {
        if (bp.b) {
            bp.b("PostData()#Send data to server." + str);
        }
        try {
            if (bp.b) {
                bp.b("before zlib size " + str.getBytes(h).length);
            }
            byte[] bArrA = a(str);
            if (bp.b) {
                bp.b("after zlib size " + bArrA.length);
            }
            i.reset();
            i.update(bArrA);
            StringBuilder sb = new StringBuilder("https://xdrig.com/push");
            sb.append("/" + az.e);
            sb.append("/" + Long.toHexString(i.getValue()));
            bp.b("Send pushEvent");
            if (bp.b) {
                bp.b("Push Send()#Post Event URL--------" + sb.toString());
            }
            int iA = g.a(az.a, "xdrig.com", az.c, sb.toString(), j, bArrA).a();
            if (iA == 200) {
                return true;
            }
            bp.c("Send pushEvent# response status code: " + iA);
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        try {
            if (o.c(az.a)) {
                if (az.a == null) {
                    if (bp.b) {
                        bp.a("PushController.mContext is null...");
                        return;
                    }
                    return;
                }
                List listA = bg.a();
                if (listA == null || listA.size() <= 0) {
                    return;
                }
                boolean zB = b(a(listA));
                if (zB) {
                    bc.a().sendEmptyMessage(104);
                } else {
                    if (!g.hasMessages(1)) {
                        a().sendEmptyMessageDelayed(1, e);
                    }
                    bc.a().sendEmptyMessage(105);
                }
                bp.b("Send pushEvent success : " + zB);
            }
        } catch (Throwable th) {
            bp.b("Send pushEvent error : " + th.getMessage());
        }
    }
}
