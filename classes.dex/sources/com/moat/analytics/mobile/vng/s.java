package com.moat.analytics.mobile.vng;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.support.annotation.FloatRange;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* JADX INFO: loaded from: classes.dex */
class s {
    private static String a;

    static class a {
        private boolean a = false;
        private String b = "_unknown_";
        private String c = "_unknown_";

        a() {
        }

        private void c() {
            try {
                Context contextC = s.c();
                if (contextC != null) {
                    PackageManager packageManager = contextC.getPackageManager();
                    this.c = contextC.getPackageName();
                    this.b = packageManager.getApplicationLabel(contextC.getApplicationInfo()).toString();
                    this.a = true;
                } else {
                    p.a(3, "Util", this, "Can't get app name, appContext is null.");
                }
            } catch (Exception e) {
                m.a(e);
            }
        }

        String a() {
            if (this.a) {
                return this.b;
            }
            c();
            return this.b;
        }

        String b() {
            if (this.a) {
                return this.c;
            }
            c();
            return this.c;
        }
    }

    s() {
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    static double a() {
        try {
            AudioManager audioManager = (AudioManager) com.moat.analytics.mobile.vng.a.a().getSystemService("audio");
            return ((double) e()) / ((double) audioManager.getStreamMaxVolume(3));
        } catch (Exception e) {
            m.a(e);
            return 0.0d;
        }
    }

    static void a(final Context context) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.vng.s.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                            p.a(3, "Util", this, "User has limited ad tracking");
                        } else {
                            String unused = s.a = advertisingIdInfo.getId();
                            p.a(3, "Util", this, "Retrieved Advertising ID = " + s.a);
                        }
                    } catch (Exception e) {
                        m.a(e);
                    }
                }
            });
        } catch (Exception e) {
            m.a(e);
        }
    }

    static String b() {
        return a;
    }

    static Context c() {
        return ((k) MoatAnalytics.getInstance()).e.get();
    }

    private static int e() {
        try {
            return ((AudioManager) com.moat.analytics.mobile.vng.a.a().getSystemService("audio")).getStreamVolume(3);
        } catch (Exception e) {
            m.a(e);
            return 0;
        }
    }
}
