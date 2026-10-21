package com.moat.analytics.mobile.iro;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.FloatRange;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class p {

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static String f369;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static long f368 = 9141242330850693853L;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static b f371 = null;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static a f370 = null;

    p() {
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static double m322() {
        try {
            AudioManager audioManager = (AudioManager) com.moat.analytics.mobile.iro.a.m194().getSystemService(m323("㇕ꍩ\uf102߆嗠殛").intern());
            return ((double) m313()) / ((double) audioManager.getStreamMaxVolume(3));
        } catch (Exception e) {
            o.m311(e);
            return 0.0d;
        }
    }

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private static int m313() {
        try {
            return ((AudioManager) com.moat.analytics.mobile.iro.a.m194().getSystemService(m323("㇕ꍩ\uf102߆嗠殛").intern())).getStreamVolume(3);
        } catch (Exception e) {
            o.m311(e);
            return 0;
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static void m315(final Application application) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.iro.p.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(application);
                        if (!advertisingIdInfo.isLimitAdTrackingEnabled()) {
                            String unused = p.f369 = advertisingIdInfo.getId();
                            com.moat.analytics.mobile.iro.b.m203(3, "Util", this, "Retrieved Advertising ID = " + p.f369);
                        } else {
                            com.moat.analytics.mobile.iro.b.m203(3, "Util", this, "User has limited ad tracking");
                        }
                    } catch (Exception e) {
                        o.m311(e);
                    }
                }
            });
        } catch (Exception e) {
            o.m311(e);
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static String m323(String str) {
        char[] charArray = str.toCharArray();
        char c = charArray[0];
        char[] cArr = new char[charArray.length - 1];
        int i = 1;
        while (true) {
            switch (i < charArray.length ? 'K' : (char) 11) {
                case 'K':
                    cArr[i - 1] = (char) (((long) (charArray[i] ^ (i * c))) ^ f368);
                    i++;
                    break;
                default:
                    return new String(cArr);
            }
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static String m321() {
        return f369;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static Context m317() {
        WeakReference<Context> weakReference = ((j) MoatAnalytics.getInstance()).f340;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static b m318() {
        if (f371 == null || !f371.f382) {
            f371 = new b((byte) 0);
        }
        return f371;
    }

    static class b {

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private String f379;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private String f380;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        private String f381;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private boolean f382;

        /* synthetic */ b(byte b) {
            this();
        }

        private b() {
            this.f382 = false;
            this.f380 = "_unknown_";
            this.f379 = "_unknown_";
            this.f381 = "_unknown_";
            try {
                Context contextM317 = p.m317();
                if (contextM317 != null) {
                    this.f382 = true;
                    PackageManager packageManager = contextM317.getPackageManager();
                    this.f379 = contextM317.getPackageName();
                    this.f380 = packageManager.getApplicationLabel(contextM317.getApplicationInfo()).toString();
                    this.f381 = packageManager.getInstallerPackageName(this.f379);
                } else {
                    com.moat.analytics.mobile.iro.b.m203(3, "Util", this, "Can't get app name, appContext is null.");
                }
            } catch (Exception e) {
                o.m311(e);
            }
        }

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        final String m326() {
            return this.f380;
        }

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        final String m325() {
            return this.f379;
        }

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        final String m327() {
            return this.f381 != null ? this.f381 : "_unknown_";
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static a m314() {
        if (f370 == null || !f370.f378) {
            f370 = new a((byte) 0);
        }
        return f370;
    }

    static class a {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        String f373;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        String f374;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        Integer f375;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        boolean f376;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        boolean f377;

        /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
        boolean f378;

        /* synthetic */ a(byte b) {
            this();
        }

        private a() {
            this.f374 = "_unknown_";
            this.f373 = "_unknown_";
            this.f375 = -1;
            this.f376 = false;
            this.f377 = false;
            this.f378 = false;
            try {
                Context contextM317 = p.m317();
                if (contextM317 != null) {
                    this.f378 = true;
                    TelephonyManager telephonyManager = (TelephonyManager) contextM317.getSystemService("phone");
                    this.f374 = telephonyManager.getSimOperatorName();
                    this.f373 = telephonyManager.getNetworkOperatorName();
                    this.f375 = Integer.valueOf(telephonyManager.getPhoneType());
                    this.f376 = p.m316();
                    this.f377 = p.m320(contextM317);
                }
            } catch (Exception e) {
                o.m311(e);
            }
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static boolean m320(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    static /* synthetic */ boolean m316() {
        int i;
        WeakReference<Context> weakReference = ((j) MoatAnalytics.getInstance()).f340;
        Context context = weakReference != null ? weakReference.get() : null;
        switch (context == null ? '9' : 'X') {
            case '9':
                i = 0;
                break;
            default:
                switch (Build.VERSION.SDK_INT < 17 ? (char) 14 : 'J') {
                    case 'J':
                        i = Settings.Global.getInt(context.getContentResolver(), m323("涓Ｏ䦟\uda06Ⓨ녧ρ涹︧䢚픆⟨").intern(), 0);
                        break;
                    default:
                        i = Settings.Secure.getInt(context.getContentResolver(), m323("涓Ｏ䦟\uda06Ⓨ녧ρ涹︧䢚픆⟨").intern(), 0);
                        break;
                }
                break;
        }
        switch (i != 1 ? 'c' : '/') {
            case 'c':
                return false;
            default:
                return true;
        }
    }
}
