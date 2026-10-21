package com.moat.analytics.mobile.cha;

import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.ironsource.sdk.precache.DownloadManager;
import com.moat.analytics.mobile.cha.r;
import com.moat.analytics.mobile.cha.t;
import java.net.URLEncoder;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class o extends Exception {

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static Long f144;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static final Long f143 = 60000L;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static Exception f142 = null;

    o(String str) {
        super(str);
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static String m130(String str, Exception exc) {
        return exc instanceof o ? str + " failed: " + exc.getMessage() : str + " failed unexpectedly";
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static void m131(Exception exc) {
        if (t.m165().f184) {
            Log.e("MoatException", Log.getStackTraceString(exc));
        } else {
            m129(exc);
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static void m129(Exception exc) {
        String str;
        String str2;
        String str3;
        String string;
        try {
            if (t.m165().f183 == t.a.f194) {
                int i = t.m165().f186;
                if (i != 0 && (i >= 100 || ((double) i) / 100.0d >= Math.random())) {
                    String str4 = "";
                    String strM155 = "";
                    String str5 = "";
                    StringBuilder sb = new StringBuilder("https://px.moatads.com/pixel.gif?e=0&i=MOATSDK1&ac=1");
                    sb.append("&zt=" + (exc instanceof o ? 1 : 0));
                    sb.append("&zr=" + i);
                    try {
                        sb.append("&zm=" + (exc.getMessage() == null ? "null" : URLEncoder.encode(Base64.encodeToString(exc.getMessage().getBytes(DownloadManager.UTF8_CHARSET), 0), DownloadManager.UTF8_CHARSET)));
                        sb.append("&k=" + URLEncoder.encode(Base64.encodeToString(Log.getStackTraceString(exc).getBytes(DownloadManager.UTF8_CHARSET), 0), DownloadManager.UTF8_CHARSET));
                    } catch (Exception e) {
                    }
                    try {
                        str4 = "CHA";
                        sb.append("&zMoatMMAKv=35d482907bc2811c2e46b96f16eb5f9fe00185f3");
                        str5 = "2.4.1";
                        r.e eVarM145 = r.m145();
                        sb.append("&zMoatMMAKan=" + eVarM145.m156());
                        strM155 = eVarM145.m155();
                        str = "CHA";
                        str2 = strM155;
                        str3 = "2.4.1";
                        string = Integer.toString(Build.VERSION.SDK_INT);
                    } catch (Exception e2) {
                        str = str4;
                        str2 = strM155;
                        str3 = str5;
                        string = "";
                    }
                    sb.append("&d=Android:" + str + ":" + str2 + ":-");
                    sb.append("&bo=" + str3);
                    sb.append("&bd=" + string);
                    Long lValueOf = Long.valueOf(System.currentTimeMillis());
                    sb.append("&t=" + lValueOf);
                    sb.append("&de=" + String.format(Locale.ROOT, "%.0f", Double.valueOf(Math.floor(Math.random() * Math.pow(10.0d, 12.0d)))));
                    sb.append("&cs=0");
                    if (f144 == null || lValueOf.longValue() - f144.longValue() > f143.longValue()) {
                        new Thread() { // from class: com.moat.analytics.mobile.cha.m.2

                            /* JADX INFO: renamed from: ˎ */
                            private /* synthetic */ String f131;

                            AnonymousClass2(String str6) {
                                str = str6;
                            }

                            @Override // java.lang.Thread, java.lang.Runnable
                            public final void run() {
                                try {
                                    m.m109(str);
                                } catch (Exception e3) {
                                }
                            }
                        }.start();
                        f144 = lValueOf;
                    }
                }
            } else {
                f142 = exc;
            }
        } catch (Exception e3) {
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static void m132() {
        if (f142 != null) {
            m129(f142);
            f142 = null;
        }
    }
}
