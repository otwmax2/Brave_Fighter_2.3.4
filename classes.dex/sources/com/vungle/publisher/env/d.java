package com.vungle.publisher.env;

import android.content.Context;
import com.vungle.publisher.bw;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.pf;
import com.vungle.publisher.qg;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class d extends AndroidDevice.DeviceIdStrategy {

    @Inject
    protected Context c;

    @Inject
    protected qg d;

    @Inject
    protected bw e;

    @Inject
    d() {
    }

    @Override // com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy
    protected void d(AndroidDevice androidDevice) {
        this.e.a(e.a(this, androidDevice), bw.b.deviceId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void f(AndroidDevice androidDevice) {
        boolean z = !a(androidDevice);
        if (b(androidDevice) && z) {
            this.d.a(new pf());
        }
    }

    protected boolean a(AndroidDevice androidDevice) {
        return androidDevice.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean b(com.vungle.publisher.env.AndroidDevice r7) {
        /*
            r6 = this;
            r2 = 1
            r0 = 0
            r3 = 0
            boolean r1 = com.vungle.publisher.env.w.a     // Catch: java.lang.Exception -> L77
            if (r1 == 0) goto L37
            android.content.Context r1 = r6.c     // Catch: android.provider.Settings.SettingNotFoundException -> L2c java.lang.Exception -> L77
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: android.provider.Settings.SettingNotFoundException -> L2c java.lang.Exception -> L77
            java.lang.String r4 = "limit_ad_tracking"
            int r4 = android.provider.Settings.Secure.getInt(r1, r4)     // Catch: android.provider.Settings.SettingNotFoundException -> L2c java.lang.Exception -> L77
            if (r4 != r2) goto L2a
        L15:
            java.lang.String r4 = "advertising_id"
            java.lang.String r1 = android.provider.Settings.Secure.getString(r1, r4)     // Catch: java.lang.Exception -> L77 android.provider.Settings.SettingNotFoundException -> L89
        L1b:
            r7.a(r2)     // Catch: java.lang.Exception -> L77
            if (r1 == 0) goto L25
            if (r2 != 0) goto L25
            r7.a(r1)     // Catch: java.lang.Exception -> L77
        L25:
            boolean r0 = r7.b()     // Catch: java.lang.Exception -> L80
        L29:
            return r0
        L2a:
            r2 = r0
            goto L15
        L2c:
            r1 = move-exception
            r2 = r0
        L2e:
            java.lang.String r4 = "VungleDevice"
            java.lang.String r5 = "Error getting Amazon advertising info"
            com.vungle.publisher.log.Logger.w(r4, r5, r1)     // Catch: java.lang.Exception -> L77
            r1 = r3
            goto L1b
        L37:
            boolean r1 = r7.m()     // Catch: java.lang.Exception -> L77
            if (r1 == 0) goto L8b
            java.lang.String r1 = "VungleDevice"
            java.lang.String r2 = "fetching advertising ID and ad tracking preference"
            com.vungle.publisher.log.Logger.d(r1, r2)     // Catch: java.lang.Exception -> L77
            android.content.Context r1 = r6.c     // Catch: java.lang.Exception -> L77
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r2 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r1)     // Catch: java.lang.Exception -> L77
            if (r2 == 0) goto L8b
            java.lang.String r1 = r2.getId()     // Catch: java.lang.Exception -> L77
            boolean r2 = r2.isLimitAdTrackingEnabled()     // Catch: java.lang.Exception -> L77
            java.lang.String r3 = "VungleDevice"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L77
            r4.<init>()     // Catch: java.lang.Exception -> L77
            java.lang.String r5 = "advertising ID "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r4 = r4.append(r1)     // Catch: java.lang.Exception -> L77
            java.lang.String r5 = "; ad tracking enabled "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> L77
            java.lang.StringBuilder r4 = r4.append(r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L77
            com.vungle.publisher.log.Logger.d(r3, r4)     // Catch: java.lang.Exception -> L77
            goto L1b
        L77:
            r1 = move-exception
            java.lang.String r2 = "VungleDevice"
            java.lang.String r3 = "error fetching advertising ID and ad tracking preference"
            com.vungle.publisher.log.Logger.w(r2, r3, r1)
            goto L25
        L80:
            r1 = move-exception
            java.lang.String r2 = "VungleDevice"
            java.lang.String r3 = "error verifying advertising ID"
            com.vungle.publisher.log.Logger.w(r2, r3, r1)
            goto L29
        L89:
            r1 = move-exception
            goto L2e
        L8b:
            r2 = r0
            r1 = r3
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.publisher.env.d.b(com.vungle.publisher.env.AndroidDevice):boolean");
    }
}
