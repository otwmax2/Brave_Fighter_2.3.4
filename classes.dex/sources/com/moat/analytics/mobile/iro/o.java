package com.moat.analytics.mobile.iro;

import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.ironsource.sdk.precache.DownloadManager;
import com.moat.analytics.mobile.iro.p;
import com.moat.analytics.mobile.iro.t;
import java.net.URLEncoder;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class o extends Exception {

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static Long f366;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static final Long f367 = 60000L;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static Exception f365 = null;

    o(String str) {
        super(str);
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static String m310(String str, Exception exc) {
        return exc instanceof o ? str + " failed: " + exc.getMessage() : str + " failed unexpectedly";
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static void m311(Exception exc) {
        if (t.m340().f404) {
            Log.e("MoatException", Log.getStackTraceString(exc));
        } else {
            m309(exc);
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static void m309(Exception exc) {
        String str;
        String str2;
        String str3;
        String string;
        try {
            if (t.m340().f402 == t.c.f419) {
                int i = t.m340().f400;
                if (i != 0 && (i >= 100 || ((double) i) / 100.0d >= Math.random())) {
                    String str4 = "";
                    String strM325 = "";
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
                        str4 = "IRO";
                        sb.append("&zMoatMMAKv=2bc3418b93f01686fcbd1ebebcc04694651821b2");
                        str5 = "2.4.0";
                        p.b bVarM318 = p.m318();
                        sb.append("&zMoatMMAKan=" + bVarM318.m326());
                        strM325 = bVarM318.m325();
                        str = "IRO";
                        str2 = strM325;
                        str3 = "2.4.0";
                        string = Integer.toString(Build.VERSION.SDK_INT);
                    } catch (Exception e2) {
                        str = str4;
                        str2 = strM325;
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
                    if (f366 == null || lValueOf.longValue() - f366.longValue() > f367.longValue()) {
                        new Thread() { // from class: com.moat.analytics.mobile.iro.l.1

                            /* JADX INFO: renamed from: ˎ */
                            private /* synthetic */ String f355;

                            AnonymousClass1(String str6) {
                                str = str6;
                            }

                            @Override // java.lang.Thread, java.lang.Runnable
                            public final void run() {
                                try {
                                    l.m307(str);
                                } catch (Exception e3) {
                                }
                            }
                        }.start();
                        f366 = lValueOf;
                    }
                }
            } else {
                f365 = exc;
            }
        } catch (Exception e3) {
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static void m308() {
        if (f365 != null) {
            m309(f365);
            f365 = null;
        }
    }
}
