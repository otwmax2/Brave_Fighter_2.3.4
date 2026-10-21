package com.moat.analytics.mobile.cha;

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
final class r {

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static String f162;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static int[] f163 = {-39340411, 1646369784, -593413711, -1069164445, -50787683, -1327220997, 423245644, -742130253, 54775946, -495304555, 1880137505, 1742082653, 65717847, 1497802820, 828947133, -614454858, 941569790, -1897799303};

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static int f161 = 0;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private static int f158 = 1;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static e f159 = null;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static d f160 = null;

    r() {
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static double m152() {
        try {
            AudioManager audioManager = (AudioManager) c.m36().getSystemService(m149(new int[]{-1741845568, 995393484, -1443163044, -1832527325}, 5).intern());
            return ((double) m143()) / ((double) audioManager.getStreamMaxVolume(3));
        } catch (Exception e2) {
            o.m131(e2);
            return 0.0d;
        }
    }

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private static int m143() {
        try {
            return ((AudioManager) c.m36().getSystemService(m149(new int[]{-1741845568, 995393484, -1443163044, -1832527325}, 5).intern())).getStreamVolume(3);
        } catch (Exception e2) {
            o.m131(e2);
            return 0;
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static void m150(final Application application) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.cha.r.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(application);
                        if (!advertisingIdInfo.isLimitAdTrackingEnabled()) {
                            String unused = r.f162 = advertisingIdInfo.getId();
                            a.m15(3, "Util", this, "Retrieved Advertising ID = " + r.f162);
                        } else {
                            a.m15(3, "Util", this, "User has limited ad tracking");
                        }
                    } catch (Exception e2) {
                        o.m131(e2);
                    }
                }
            });
        } catch (Exception e2) {
            o.m131(e2);
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static String m148() {
        return f162;
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static Context m151() {
        WeakReference<Context> weakReference = ((f) MoatAnalytics.getInstance()).f58;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static e m145() {
        if (f159 == null || !f159.f173) {
            f159 = new e((byte) 0);
        }
        return f159;
    }

    static class e {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        private String f171;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private String f172;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        private boolean f173;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private String f174;

        /* synthetic */ e(byte b) {
            this();
        }

        private e() {
            this.f173 = false;
            this.f171 = "_unknown_";
            this.f172 = "_unknown_";
            this.f174 = "_unknown_";
            try {
                Context contextM151 = r.m151();
                if (contextM151 != null) {
                    this.f173 = true;
                    PackageManager packageManager = contextM151.getPackageManager();
                    this.f172 = contextM151.getPackageName();
                    this.f171 = packageManager.getApplicationLabel(contextM151.getApplicationInfo()).toString();
                    this.f174 = packageManager.getInstallerPackageName(this.f172);
                } else {
                    a.m15(3, "Util", this, "Can't get app name, appContext is null.");
                }
            } catch (Exception e) {
                o.m131(e);
            }
        }

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        final String m156() {
            return this.f171;
        }

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        final String m155() {
            return this.f172;
        }

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        final String m157() {
            return this.f174 != null ? this.f174 : "_unknown_";
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static String m149(int[] iArr, int i) {
        char[] cArr = new char[4];
        char[] cArr2 = new char[iArr.length << 1];
        int[] iArr2 = (int[]) f163.clone();
        int i2 = 0;
        while (true) {
            switch (i2 < iArr.length ? (char) 0 : (char) 1) {
                case 1:
                    return new String(cArr2, 0, i);
                default:
                    cArr[0] = iArr[i2] >>> 16;
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = iArr[i2 + 1] >>> 16;
                    cArr[3] = (char) iArr[i2 + 1];
                    com.chartboost.sdk.impl.b.a(cArr, iArr2, false);
                    cArr2[i2 << 1] = cArr[0];
                    cArr2[(i2 << 1) + 1] = cArr[1];
                    cArr2[(i2 << 1) + 2] = cArr[2];
                    cArr2[(i2 << 1) + 3] = cArr[3];
                    i2 += 2;
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static d m146() {
        if (f160 == null || !f160.f165) {
            f160 = new d((byte) 0);
        }
        return f160;
    }

    static class d {

        /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
        boolean f165;

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        boolean f166;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        boolean f167;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        String f168;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        String f169;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        Integer f170;

        /* synthetic */ d(byte b) {
            this();
        }

        private d() {
            this.f168 = "_unknown_";
            this.f169 = "_unknown_";
            this.f170 = -1;
            this.f167 = false;
            this.f166 = false;
            this.f165 = false;
            try {
                Context contextM151 = r.m151();
                if (contextM151 != null) {
                    this.f165 = true;
                    TelephonyManager telephonyManager = (TelephonyManager) contextM151.getSystemService("phone");
                    this.f168 = telephonyManager.getSimOperatorName();
                    this.f169 = telephonyManager.getNetworkOperatorName();
                    this.f170 = Integer.valueOf(telephonyManager.getPhoneType());
                    this.f167 = r.m142();
                    this.f166 = r.m147(contextM151);
                }
            } catch (Exception e) {
                o.m131(e);
            }
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static boolean m147(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    static /* synthetic */ boolean m142() {
        int i;
        WeakReference<Context> weakReference = ((f) MoatAnalytics.getInstance()).f58;
        Context context = weakReference != null ? weakReference.get() : null;
        switch (context == null ? (char) 0 : (char) 1) {
            case 0:
                i = 0;
                break;
            default:
                int i2 = f158 + 27;
                f161 = i2 % 128;
                if (i2 % 2 != 0) {
                }
                switch (Build.VERSION.SDK_INT < 17 ? (char) 22 : (char) 19) {
                    case 22:
                        i = Settings.Secure.getInt(context.getContentResolver(), m149(new int[]{-474338915, -1244865125, 562481890, 44523707, -1306238932, 74746991}, 11).intern(), 0);
                        break;
                    default:
                        int i3 = f158 + 87;
                        f161 = i3 % 128;
                        if (i3 % 2 != 0) {
                        }
                        i = Settings.Global.getInt(context.getContentResolver(), m149(new int[]{-474338915, -1244865125, 562481890, 44523707, -1306238932, 74746991}, 11).intern(), 0);
                        break;
                }
                break;
        }
        switch (i != 1 ? (char) 0 : (char) 1) {
            case 1:
                int i4 = f161 + 33;
                f158 = i4 % 128;
                if (i4 % 2 == 0) {
                }
                return true;
            default:
                return false;
        }
    }
}
