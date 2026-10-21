package com.tendcloud.tenddata.game;

import android.content.Context;
import android.support.v4.media.TransportMediator;
import com.facebook.internal.FacebookRequestErrorClassification;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static final String h = "td-cache";
    private static final String i = "td-%.zip";
    private static final String j = "td.tmp-";
    private static final String k = "pref_longtime";
    private static final String l = "td.sdk.digest.";
    private static final byte[] m = {-28, 9, -58, 3, -27, -5, 116, 68, -91, -13, -54, -53, -38, -51, 101, 30, -75, -67, -2, 32, -80, -13, -122, 37, -20, -58, 73, -71, 76, 2, 39, 78, 3, -119, -72, 47, 30, -42, -89, 69, -112, 30, -50, 117, -107, 120, 22, 3, -103, 39, -55, -118, 16, -95, 22, 85, -68, 54, 45, 39, -58, 20, 57, -122, -64, 44, 13, 121, 126, -45, -54, 102, 50, 21, -121, 30, 25, -70, 27, -12, 17, -10, 81, -35, -1, 98, -60, -108, 94, 60, 49, -105, 82, 23, 82, 118, 86, -105, 10, 107, -74, -45, 31, 0, -118, -18, 12, -18, 17, -50, 16, -61, -108, 104, 107, 115, -112, 41, 61, -103, -124, -58, -86, -89, -34, 74, 45, -20, 92, 43, 109, -69, 52, -105, -61, 90, 0, -60, -128, -24, -123, -119, -97, -35, -83, 17, -24, -28, 46, -20, 7, -15, -25, 54, -87, 78, -10, -108, 20, 99, -122, -66, -76, -60, -7, 124, 114, 27, -81, 119, -47, -91, -127, -94, 119, 82, 108, -112, 80, -109, 104, 81, 19, -3, -59, 127, -6, 5, 67, 27, 26, -94, 19, 18, 3, 119, -95, -26, 73, 95, 97, 53, -54, 85, -106, -10, -15, 121, 56, 46, -118, -4, -6, 32, 12, -26, 17, -40, -76, -98, -80, 67, -11, 0, -116, 62, -62, -85, -15, 48, -110, 63, 35, 54, 85, 11, 82, -58, 74, -65, 68, -58, -106, -46, -70, -9, -76, 58, 111, -94, 124, 59, 124, 78, 92, -17, 5, -107, 95, -66, -81, 51, -56, -98, -83, 75, 120, 56, 80, 32, -39, 111, -91, -88, -68, -29, -123, 92, -88, -71, 121, 55, 49, -98, 88, 57, 95, 8, 95, 59, 16, 55, -101, 90, -29, -51, 117, -45, -55, 45, 37, 12, -49, -69, 16, 89, -51, 16, -97, 85, 120, 109, 23, -36, 45, 32, -83, 30, 95, -9, -92, 82, 96, -27, 49, -75, -120, 83, -23, 2, 13, -83, 67, 20, -16, 116, 28, -33, 61, -32, 31, -53, 110, 47, -56, -90, 33, -62, -6, -51, -105, -93, 52, -47, -19, -118, -114, -125, 75, 9, -125, 11, -93, 34, -5, -7, 8, 74, -19, 81, -91, 39, -53, 119, -12, -30, -30, 62, 13, 126, 19, 53, 120, -10, 41, 80, -12, -48, -4, 59, 7, 26, -17, 115, -31, 29, 54, 101, 72, -98, -39, -96, 88, -27, 57, 9, -118, 8, 98, -17, 26, -84, 0, 66, -38, -33, 72, -120, -79, 26, -109, -40, 61, 3, 84, 19, 74, 87, 47, 69, 68, -100, 86, -11, 94, 37, -20, -73, 18, 55, -25, 45, -125, -82, -39, 97, -88, 50, 82, 121, -13, -124, -17, 48, 95, 82, 65, 125, -61, 118, -25, -90, -5, -57, 82, 21, -112, 59, 63, 107, -73, 19, 93, -44, 64, -22, -92, 69, -94, -75, 121, -77, 6, -28, -47, 124, -15, -14, 34, 113, -72, -49, -119, -10, -32, -106, -1, -46, -90, -28, -69, -48, -108, -92, -122, 110, 88, -23, 68, 68, 115, -16, 8, -92, 57, -33, -89, 12, 90, -123, 41, -8, -100, -117, -87, 119, -25, 6, 124, 4, 62, -53, 36, -40, 68, 63, 61, -42, 53, 14, -5, -23, -56, -4, -18, -78, 80, -3, 17, 90, 74, 46, 22, 98, 72, 57, 8, -85, -115, -44, 36, 78, -87, 116, 24, 51, -80, 48, -98, 14, 5, 25, 49, -100, -93, -110, 6, 73, 47, 28, 26, -16, 118, -84, -16, -49, 63, -68, -98, -43, -51, -26, 103, -58, -113, 65, -88, 10, 89, 23, 39, 93, -57, -95, -61, -32, 49, 79, 61, -90, -16, -119, -110, 0, -68, -125, -65, -115, 106, -52, -103, -31, -72, 46, 31, -68, -12, -45, 26, 19, -115, -49, 56, 104, 9, -39, 64, 113, -35, -48, 89, 124, 107, -82, -61, 86, 8, -40, 15, -37, -87, 113, 15, -22, -5, -22, 35, -59, 79, 57, 41, 10, -1, 102, 105, -122, 102, -122, -117, 124, 92, 33, -60, 66, 93, -15, -115, -73, 96, -22, 75, -52, -59, -72, -7, 41, -48, -108, -25, 104, 93, -6, 72, -50, -122, -109, 3, 32, -26, -109, -43, 79, -63, -119, 9, -50, -122, 103, -62, 71, 29, -120, 68, 49, 81, 35, -62, 121, 26, -25, 49, 84, -20, -56, -74, 69, 70, -36, 76, 51, -89, -61, 91, 90, -95, 63, 47, -45, 31, 31, 120, -7, -86, -64, 94, -77, 36, 53, 120, 31, -15, -125, 105, -97, 72, 122, 119, 123, 36, 23, -91, -123, 104, -91, 2, -56, -109, 47, 117, -97, 74, 14, 1, -5, -55, 17, -12, -93, 108, -35, 73, -46, -80, -125, -46, -28, 41, 66, 16, 19, -88, -106, 25, -65, 59, 48, 54, 99, -56, 112, 80, -88, -43, -17, 19, -49, -62, 117, 92, 33, -118, 116, 13, 112, -123, 119, -115, -112, -109, 98, 21, -66, 72, -33, -102, -63, 1, 92, -63, -34, -62, 74, 50, 83, 7, 49, 111, 120, -4, -31, 94, -9, -101, 34, 5, -79, -118, 32, 63, -1, 28, 80, -117, 110, 30, 12, 65, -19, 80, -106, -72, -119, 41, 38, 70, -112, -38, -95, -87, 117, -62, 60, 78, -46, -124, -40, -120, 53, -83, 71, -3, 56, -45, 116, 29, 74, 124, -120, 81, 5, -13, -99, 76, -112, 85, -72};
    private static final int[] n = {48, 174, 179, 57, 117, 158, 111, 77, 5, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 185, 241, 57, 21, 216, 178, 37, 2, 95, 166};
    private static final int[] o = {104, 169, 91, 102, 66, 239, 22, 20, 116, 6, 95, 8, 9, 28, 206, 160, 123, 152, 33, TransportMediator.KEYCODE_MEDIA_PLAY};
    s a;
    Context b;
    String c;
    String d;
    String e;
    String f;
    volatile boolean g = false;

    /* JADX INFO: Access modifiers changed from: private */
    public s a(String str) {
        try {
            File dir = this.b.getDir(h, 0);
            File file = new File(dir, this.d);
            if (a(file)) {
                return (s) new DexClassLoader(file.getAbsolutePath(), dir.getAbsolutePath(), null, q.class.getClassLoader()).loadClass(str).newInstance();
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(s sVar) {
        File dir;
        File file;
        String strA;
        sVar.a("");
        URL url = new URL(sVar.d());
        url.getHost();
        if (url.getPort() == -1) {
            url.getDefaultPort();
        }
        String str = new String(aa.a(aa.a(n, o), m));
        String strA2 = g.a(sVar.d(), str, false);
        if (aa.b(strA2) || strA2.trim().equalsIgnoreCase(sVar.b()) || (strA = g.a(sVar.e(), str, (file = new File((dir = this.b.getDir(h, 0)), this.e)))) == null) {
            return;
        }
        try {
            File file2 = new File(dir, this.d);
            file2.delete();
            file.renameTo(file2);
            t.a(this.b, k, this.f, strA);
            sVar.f();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(2:35|3)|(2:37|4)|(3:5|(1:7)(1:39)|11)|12|29|13|11|(2:(1:32)|(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.io.File r8) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            r2 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L4c
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L4c
            java.lang.String r2 = "MD5"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r2)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
        L11:
            int r4 = r1.read(r3)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            r5 = -1
            if (r4 == r5) goto L22
            r5 = 0
            r2.update(r3, r5, r4)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            goto L11
        L1d:
            r2 = move-exception
        L1e:
            r1.close()     // Catch: java.lang.Throwable -> L46
        L21:
            return r0
        L22:
            byte[] r2 = r2.digest()     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            java.lang.String r2 = com.tendcloud.tenddata.game.aa.a(r2)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            android.content.Context r3 = r7.b     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            java.lang.String r4 = "pref_longtime"
            java.lang.String r5 = r7.f     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            java.lang.String r6 = ""
            java.lang.String r3 = com.tendcloud.tenddata.game.t.b(r3, r4, r5, r6)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            boolean r0 = r3.equals(r2)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L4a
            r1.close()     // Catch: java.lang.Throwable -> L3e
            goto L21
        L3e:
            r1 = move-exception
            goto L21
        L40:
            r0 = move-exception
            r1 = r2
        L42:
            r1.close()     // Catch: java.lang.Throwable -> L48
        L45:
            throw r0
        L46:
            r1 = move-exception
            goto L21
        L48:
            r1 = move-exception
            goto L45
        L4a:
            r0 = move-exception
            goto L42
        L4c:
            r1 = move-exception
            r1 = r2
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.q.a(java.io.File):boolean");
    }

    public synchronized s a(Context context, String str, String str2, Class cls, Class cls2, String str3) {
        if (this.a == null) {
            this.b = context.getApplicationContext();
            this.c = str2;
            this.d = i.replace("%", str2);
            this.e = j + str2;
            this.f = l + str2;
            synchronized (this) {
                try {
                    new Thread(new r(this, str3)).start();
                    wait(500L);
                } catch (InterruptedException e) {
                }
                if (this.a == null) {
                    this.g = true;
                    this.a = (s) cls2.newInstance();
                }
                this.a.a(context, str);
            }
        }
        return this.a;
    }
}
