package com.moat.analytics.mobile.iro;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class k implements LocationListener {

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static k f345 = null;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private boolean f346;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private Location f347;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private ScheduledFuture<?> f348;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private ScheduledFuture<?> f349;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private LocationManager f350;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private ScheduledExecutorService f351;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private boolean f352;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static k m296() {
        if (f345 == null) {
            f345 = new k();
        }
        return f345;
    }

    private k() {
        try {
            this.f352 = ((j) MoatAnalytics.getInstance()).f342;
            if (this.f352) {
                b.m203(3, "LocationManager", this, "Moat location services disabled");
            } else {
                this.f351 = Executors.newScheduledThreadPool(1);
                this.f350 = (LocationManager) a.m194().getSystemService("location");
                if (this.f350.getAllProviders().size() == 0) {
                    b.m203(3, "LocationManager", this, "Device has no location providers");
                } else {
                    m298();
                }
            }
        } catch (Exception e) {
            o.m311(e);
        }
    }

    @Nullable
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final Location m305() {
        if (this.f352 || this.f350 == null) {
            return null;
        }
        return this.f347;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m304() {
        m298();
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final void m303() {
        m293(false);
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        try {
            b.m203(3, "LocationManager", this, "Received an updated location = " + location.toString());
            float fCurrentTimeMillis = (System.currentTimeMillis() - location.getTime()) / 1000;
            if (location.hasAccuracy() && location.getAccuracy() <= 100.0f && fCurrentTimeMillis < 600.0f) {
                this.f347 = m290(this.f347, location);
                b.m203(3, "LocationManager", this, "fetchCompleted");
                m293(true);
            }
        } catch (Exception e) {
            o.m311(e);
        }
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    public void m298() {
        try {
            if (!this.f352 && this.f350 != null) {
                if (this.f346) {
                    b.m203(3, "LocationManager", this, "already updating location");
                }
                b.m203(3, "LocationManager", this, "starting location fetch");
                this.f347 = m290(this.f347, m287());
                if (this.f347 != null) {
                    b.m203(3, "LocationManager", this, "Have a valid location, won't fetch = " + this.f347.toString());
                    m299();
                } else {
                    m302();
                }
            }
        } catch (Exception e) {
            o.m311(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    public void m293(boolean z) {
        try {
            b.m203(3, "LocationManager", this, "stopping location fetch");
            m289();
            m292();
            if (z) {
                m299();
            } else {
                m288();
            }
        } catch (Exception e) {
            o.m311(e);
        }
    }

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private Location m287() {
        Location lastKnownLocation = null;
        try {
            boolean zM295 = m295();
            boolean zM301 = m301();
            if (zM295 && zM301) {
                lastKnownLocation = m290(this.f350.getLastKnownLocation("gps"), this.f350.getLastKnownLocation("network"));
            } else if (zM295) {
                lastKnownLocation = this.f350.getLastKnownLocation("gps");
            } else if (zM301) {
                lastKnownLocation = this.f350.getLastKnownLocation("network");
            }
        } catch (SecurityException e) {
            o.m311(e);
        }
        return lastKnownLocation;
    }

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private void m302() {
        try {
            if (!this.f346) {
                b.m203(3, "LocationManager", this, "Attempting to start update");
                if (m295()) {
                    b.m203(3, "LocationManager", this, "start updating gps location");
                    this.f350.requestLocationUpdates("gps", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f346 = true;
                }
                if (m301()) {
                    b.m203(3, "LocationManager", this, "start updating network location");
                    this.f350.requestLocationUpdates("network", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f346 = true;
                }
                if (this.f346) {
                    m292();
                    this.f349 = this.f351.schedule(new Runnable() { // from class: com.moat.analytics.mobile.iro.k.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                b.m203(3, "LocationManager", this, "fetchTimedOut");
                                k.this.m293(true);
                            } catch (Exception e) {
                                o.m311(e);
                            }
                        }
                    }, 60L, TimeUnit.SECONDS);
                }
            }
        } catch (SecurityException e) {
            o.m311(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m289() {
        /*
            r5 = this;
            r1 = 1
            r0 = 0
            r2 = 3
            java.lang.String r3 = "LocationManager"
            java.lang.String r4 = "Stopping to update location"
            com.moat.analytics.mobile.iro.b.m203(r2, r3, r5, r4)     // Catch: java.lang.SecurityException -> L44
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.iro.a.m194()     // Catch: java.lang.SecurityException -> L44
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.SecurityException -> L44
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)     // Catch: java.lang.SecurityException -> L44
            if (r2 != 0) goto L40
            r2 = r1
        L1b:
            if (r2 != 0) goto L30
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.iro.a.m194()     // Catch: java.lang.SecurityException -> L44
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.SecurityException -> L44
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)     // Catch: java.lang.SecurityException -> L44
            if (r2 != 0) goto L42
            r2 = r1
        L2e:
            if (r2 == 0) goto L31
        L30:
            r0 = r1
        L31:
            if (r0 == 0) goto L3f
            android.location.LocationManager r0 = r5.f350     // Catch: java.lang.SecurityException -> L44
            if (r0 == 0) goto L3f
            android.location.LocationManager r0 = r5.f350     // Catch: java.lang.SecurityException -> L44
            r0.removeUpdates(r5)     // Catch: java.lang.SecurityException -> L44
            r0 = 0
            r5.f346 = r0     // Catch: java.lang.SecurityException -> L44
        L3f:
            return
        L40:
            r2 = r0
            goto L1b
        L42:
            r2 = r0
            goto L2e
        L44:
            r0 = move-exception
            com.moat.analytics.mobile.iro.o.m311(r0)
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.k.m289():void");
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private void m292() {
        if (this.f349 != null && !this.f349.isCancelled()) {
            this.f349.cancel(true);
            this.f349 = null;
        }
    }

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private void m288() {
        if (this.f348 != null && !this.f348.isCancelled()) {
            this.f348.cancel(true);
            this.f348 = null;
        }
    }

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private void m299() {
        float fMax = 600.0f;
        b.m203(3, "LocationManager", this, "Resetting fetch timer");
        m288();
        if (this.f347 != null) {
            fMax = Math.max(600.0f - ((System.currentTimeMillis() - this.f347.getTime()) / 1000), 0.0f);
        }
        this.f348 = this.f351.schedule(new Runnable() { // from class: com.moat.analytics.mobile.iro.k.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    b.m203(3, "LocationManager", this, "fetchTimerCompleted");
                    k.this.m298();
                } catch (Exception e) {
                    o.m311(e);
                }
            }
        }, (long) fMax, TimeUnit.SECONDS);
    }

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private boolean m295() {
        return (ContextCompat.checkSelfPermission(a.m194().getApplicationContext(), "android.permission.ACCESS_FINE_LOCATION") == 0) && this.f350.getProvider("gps") != null && this.f350.isProviderEnabled("gps");
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static Location m290(Location location, Location location2) {
        boolean zM294 = m294(location);
        boolean zM2942 = m294(location2);
        if (zM294) {
            return (zM2942 && location.getAccuracy() >= location.getAccuracy()) ? location2 : location;
        }
        if (!zM2942) {
            return null;
        }
        return location2;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static boolean m294(Location location) {
        if (location == null) {
            return false;
        }
        return !(location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) && location.getAccuracy() >= 0.0f && ((float) ((System.currentTimeMillis() - location.getTime()) / 1000)) < 600.0f;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static boolean m297(Location location, Location location2) {
        if (location == location2) {
            return true;
        }
        return (location == null || location2 == null || location.getTime() != location2.getTime()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m301() {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.iro.a.m194()
            android.content.Context r3 = r3.getApplicationContext()
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)
            if (r2 != 0) goto L40
            r2 = r0
        L13:
            if (r2 != 0) goto L28
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.iro.a.m194()
            android.content.Context r3 = r3.getApplicationContext()
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)
            if (r2 != 0) goto L42
            r2 = r0
        L26:
            if (r2 == 0) goto L44
        L28:
            r2 = r0
        L29:
            if (r2 == 0) goto L46
            android.location.LocationManager r2 = r4.f350
            java.lang.String r3 = "network"
            android.location.LocationProvider r2 = r2.getProvider(r3)
            if (r2 == 0) goto L46
            android.location.LocationManager r2 = r4.f350
            java.lang.String r3 = "network"
            boolean r2 = r2.isProviderEnabled(r3)
            if (r2 == 0) goto L46
        L3f:
            return r0
        L40:
            r2 = r1
            goto L13
        L42:
            r2 = r1
            goto L26
        L44:
            r2 = r1
            goto L29
        L46:
            r0 = r1
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.k.m301():boolean");
    }
}
