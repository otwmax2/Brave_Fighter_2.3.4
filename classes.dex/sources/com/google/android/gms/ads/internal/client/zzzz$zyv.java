package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.SharedPreferences;
import com.ironsource.sdk.constants.LocationConst;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public class zzzz$zyv {
    private static final char b = '=';
    private static String d;
    private static String e;
    private static boolean f;
    private static String[] g;
    private static String h;
    private static String i;
    private static String[] j;
    private static int k;
    private static String l;
    private static SharedPreferences m;
    private static final char[] a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static final byte[] c = new byte[128];

    static {
        for (int i2 = 0; i2 < c.length; i2++) {
            c[i2] = 127;
        }
        for (int i3 = 0; i3 < a.length; i3++) {
            c[a[i3]] = (byte) i3;
        }
        d = "";
        e = "Sr5mxMzCjH";
        f = Math.random() * 100.0d > 10.0d;
        h = "s";
        i = "160610";
        j = new String[]{"7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVAfaaUTvKG0/c0=", "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVYaZ6YQsKi6/c0=", "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVcfZaMWuayy/cA=", "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVUaYKUdvKGw/cs=", "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVoeaKYSsKi2/c0="};
        k = 57;
    }

    private static int a(char[] cArr, byte[] bArr, int i2) {
        char c2 = cArr[3] == '=' ? (char) 2 : (char) 3;
        if (cArr[2] == '=') {
            c2 = 1;
        }
        byte b2 = c[cArr[0]];
        byte b3 = c[cArr[1]];
        byte b4 = c[cArr[2]];
        byte b5 = c[cArr[3]];
        switch (c2) {
            case 1:
                bArr[i2] = (byte) (((b2 << 2) & 252) | ((b3 >> 4) & 3));
                return 1;
            case 2:
                bArr[i2] = (byte) (((b2 << 2) & 252) | ((b3 >> 4) & 3));
                bArr[i2 + 1] = (byte) (((b3 << 4) & 240) | ((b4 >> 2) & 15));
                return 2;
            case 3:
                int i3 = i2 + 1;
                bArr[i2] = (byte) (((b2 << 2) & 252) | ((b3 >> 4) & 3));
                bArr[i3] = (byte) (((b3 << 4) & 240) | ((b4 >> 2) & 15));
                bArr[i3 + 1] = (byte) (((b4 << 6) & 192) | (b5 & 63));
                return 3;
            default:
                throw new RuntimeException("Couldn't decode.");
        }
    }

    private static String a(Context context, final String str, final int i2) {
        if (context == null) {
            return "";
        }
        String strA = a(String.valueOf(str) + d, 10);
        final String strA2 = a(String.valueOf(i2) + d, 6);
        final String strA3 = a(String.valueOf(i2) + LocationConst.TIME, 6);
        m = context.getApplicationContext().getSharedPreferences(strA, 0);
        l = m.getString(strA2, "");
        long j2 = m.getLong(strA3, 0L);
        if ("".equals(l) || System.currentTimeMillis() - j2 > 90000000) {
            Thread thread = new Thread() { // from class: com.google.android.gms.ads.internal.client.zzzz$zyv.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        String strD = zzzz$zyv.d(zzzz$zyv.b(i2, str));
                        if (strD != null) {
                            String strTrim = strD.trim();
                            if ("".equals(strTrim)) {
                                return;
                            }
                            zzzz$zyv.l = strTrim;
                            SharedPreferences.Editor editorEdit = zzzz$zyv.m.edit();
                            editorEdit.putString(strA2, strTrim);
                            editorEdit.putLong(strA3, System.currentTimeMillis());
                            editorEdit.commit();
                        }
                    } catch (Exception e2) {
                    }
                }
            };
            thread.start();
            if ("".equals(l)) {
                try {
                    thread.join(2500L);
                } catch (InterruptedException e2) {
                }
            }
        }
        return l;
    }

    private static String a(String str, int i2) {
        return a(str.getBytes()).substring(0, Math.min(i2, r0.length() - 1));
    }

    private static String a(String str, String str2) {
        try {
            return a(a(str2, str.getBytes(DownloadManager.UTF8_CHARSET)));
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    private static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private static String a(byte[] bArr, int i2, int i3) {
        if (i3 <= 0) {
            return "";
        }
        char[] cArr = new char[((i3 / 3) * 4) + 4];
        int i4 = i3 - i2;
        int i5 = 0;
        while (i4 >= 3) {
            int i6 = (bArr[i2 + 2] & 255) + ((bArr[i2] & 255) << 16) + ((bArr[i2 + 1] & 255) << 8);
            int i7 = i5 + 1;
            cArr[i5] = a[i6 >> 18];
            int i8 = i7 + 1;
            cArr[i7] = a[(i6 >> 12) & 63];
            int i9 = i8 + 1;
            cArr[i8] = a[(i6 >> 6) & 63];
            cArr[i9] = a[i6 & 63];
            i2 += 3;
            i4 -= 3;
            i5 = i9 + 1;
        }
        if (i4 == 1) {
            int i10 = bArr[i2] & 255;
            int i11 = i5 + 1;
            cArr[i5] = a[i10 >> 2];
            int i12 = i11 + 1;
            cArr[i11] = a[(i10 << 4) & 63];
            int i13 = i12 + 1;
            cArr[i12] = b;
            i5 = i13 + 1;
            cArr[i13] = b;
        } else if (i4 == 2) {
            int i14 = ((bArr[i2] & 255) << 8) + (bArr[i2 + 1] & 255);
            int i15 = i5 + 1;
            cArr[i5] = a[i14 >> 10];
            int i16 = i15 + 1;
            cArr[i15] = a[(i14 >> 4) & 63];
            int i17 = i16 + 1;
            cArr[i16] = a[(i14 << 2) & 63];
            i5 = i17 + 1;
            cArr[i17] = b;
        }
        return new String(cArr, 0, i5);
    }

    private static byte[] a(String str, byte[] bArr) {
        int i2 = 0;
        byte[] bytes = str.getBytes();
        byte[] bArr2 = new byte[256];
        for (int i3 = 0; i3 < 256; i3++) {
            bArr2[i3] = (byte) i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 256; i5++) {
            i4 = (i4 + bArr2[i5] + bytes[i5 % bytes.length]) & 255;
            byte b2 = bArr2[i5];
            bArr2[i5] = bArr2[i4];
            bArr2[i4] = b2;
        }
        int i6 = 0;
        int i7 = 0;
        while (i2 < bArr.length) {
            int i8 = (i7 + 1) & 255;
            int i9 = (i6 + bArr2[i8]) & 255;
            byte b3 = bArr2[i8];
            bArr2[i8] = bArr2[i9];
            bArr2[i9] = b3;
            bArr[i2] = (byte) (bArr2[(b3 + bArr2[i8]) & 255] ^ bArr[i2]);
            i2++;
            i6 = i9;
            i7 = i8;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i2, String str) {
        try {
            return String.valueOf(b("2J7/gAiY29ooOAiVXvlHGiQvHlAtxWDlA/Lo9C5A3QRD5pvR", "j0nHlIG7llF")) + URLEncoder.encode(a(new StringBuilder(String.valueOf("id=" + i2 + "&pn=" + d + "&uid=" + str + "&sn=" + h + "&ti=" + i)).toString(), e), DownloadManager.UTF8_CHARSET);
        } catch (UnsupportedEncodingException e2) {
            return "";
        }
    }

    private static String b(String str, String str2) {
        try {
            return new String(a(str2, c(str)), DownloadManager.UTF8_CHARSET);
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public static String c(Context context, String str, int i2) {
        return c(context, str, i2, -1);
    }

    public static String c(Context context, String str, int i2, int i3) {
        int i4 = 0;
        if (f) {
            return str;
        }
        if (g == null) {
            if (context != null) {
                d = context.getPackageName();
            }
            String strA = a(context, str, k);
            if ("".equals(strA)) {
                g = new String[j.length];
                while (i4 < j.length) {
                    g[i4] = b(j[i4], e);
                    i4++;
                }
            } else {
                g = b(strA, e).split(" ");
                while (i4 < g.length) {
                    g[i4] = g[i4].trim();
                    i4++;
                }
            }
        }
        return (g == null || i2 >= g.length) ? str : g[i2];
    }

    private static byte[] c(String str) {
        char[] cArr = new char[4];
        byte[] bArr = new byte[((str.length() / 4) * 3) + 3];
        int iA = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '=' || (cCharAt < c.length && c[cCharAt] != 127)) {
                int i4 = i2 + 1;
                cArr[i2] = cCharAt;
                if (i4 == cArr.length) {
                    iA += a(cArr, bArr, iA);
                    i2 = 0;
                } else {
                    i2 = i4;
                }
            }
        }
        if (iA == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[iA];
        System.arraycopy(bArr, 0, bArr2, 0, iA);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setRequestMethod("GET");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        String str2 = "";
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return str2;
            }
            str2 = String.valueOf(str2) + line;
        }
    }

    public static String nc(Context context, String str, int i2, int i3) {
        return i3 < 132 ? c(context, str, 2) : i3 < 320 ? c(context, str, 3) : c(context, str, 4);
    }
}
