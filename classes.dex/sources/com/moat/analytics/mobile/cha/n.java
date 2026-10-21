package com.moat.analytics.mobile.cha;

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
final class n implements LocationListener {

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static n f132 = null;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private Location f133;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private ScheduledExecutorService f134;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private boolean f135;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private ScheduledFuture<?> f136;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private ScheduledFuture<?> f137;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private LocationManager f138;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private boolean f139;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static n m117() {
        if (f132 == null) {
            f132 = new n();
        }
        return f132;
    }

    private n() {
        try {
            this.f135 = ((f) MoatAnalytics.getInstance()).f59;
            if (this.f135) {
                a.m15(3, "LocationManager", this, "Moat location services disabled");
            } else {
                this.f134 = Executors.newScheduledThreadPool(1);
                this.f138 = (LocationManager) c.m36().getSystemService("location");
                if (this.f138.getAllProviders().size() == 0) {
                    a.m15(3, "LocationManager", this, "Device has no location providers");
                } else {
                    m115();
                }
            }
        } catch (Exception e) {
            o.m131(e);
        }
    }

    @Nullable
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final Location m126() {
        if (this.f135 || this.f138 == null) {
            return null;
        }
        return this.f133;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m127() {
        m115();
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m128() {
        m122(false);
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        try {
            a.m15(3, "LocationManager", this, "Received an updated location = " + location.toString());
            float fCurrentTimeMillis = (System.currentTimeMillis() - location.getTime()) / 1000;
            if (location.hasAccuracy() && location.getAccuracy() <= 100.0f && fCurrentTimeMillis < 600.0f) {
                this.f133 = m120(this.f133, location);
                a.m15(3, "LocationManager", this, "fetchCompleted");
                m122(true);
            }
        } catch (Exception e) {
            o.m131(e);
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
    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    public void m115() {
        try {
            if (!this.f135 && this.f138 != null) {
                if (this.f139) {
                    a.m15(3, "LocationManager", this, "already updating location");
                }
                a.m15(3, "LocationManager", this, "starting location fetch");
                this.f133 = m120(this.f133, m112());
                if (this.f133 != null) {
                    a.m15(3, "LocationManager", this, "Have a valid location, won't fetch = " + this.f133.toString());
                    m118();
                } else {
                    m110();
                }
            }
        } catch (Exception e) {
            o.m131(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    public void m122(boolean z) {
        try {
            a.m15(3, "LocationManager", this, "stopping location fetch");
            m111();
            m114();
            if (z) {
                m118();
            } else {
                m125();
            }
        } catch (Exception e) {
            o.m131(e);
        }
    }

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private Location m112() {
        Location lastKnownLocation = null;
        try {
            boolean zM119 = m119();
            boolean zM124 = m124();
            if (zM119 && zM124) {
                lastKnownLocation = m120(this.f138.getLastKnownLocation("gps"), this.f138.getLastKnownLocation("network"));
            } else if (zM119) {
                lastKnownLocation = this.f138.getLastKnownLocation("gps");
            } else if (zM124) {
                lastKnownLocation = this.f138.getLastKnownLocation("network");
            }
        } catch (SecurityException e) {
            o.m131(e);
        }
        return lastKnownLocation;
    }

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private void m110() {
        try {
            if (!this.f139) {
                a.m15(3, "LocationManager", this, "Attempting to start update");
                if (m119()) {
                    a.m15(3, "LocationManager", this, "start updating gps location");
                    this.f138.requestLocationUpdates("gps", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f139 = true;
                }
                if (m124()) {
                    a.m15(3, "LocationManager", this, "start updating network location");
                    this.f138.requestLocationUpdates("network", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f139 = true;
                }
                if (this.f139) {
                    m114();
                    this.f137 = this.f134.schedule(new Runnable() { // from class: com.moat.analytics.mobile.cha.n.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                a.m15(3, "LocationManager", this, "fetchTimedOut");
                                n.this.m122(true);
                            } catch (Exception e) {
                                o.m131(e);
                            }
                        }
                    }, 60L, TimeUnit.SECONDS);
                }
            }
        } catch (SecurityException e) {
            o.m131(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m111() {
        /*
            r5 = this;
            r1 = 1
            r0 = 0
            r2 = 3
            java.lang.String r3 = "LocationManager"
            java.lang.String r4 = "Stopping to update location"
            com.moat.analytics.mobile.cha.a.m15(r2, r3, r5, r4)     // Catch: java.lang.SecurityException -> L44
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.cha.c.m36()     // Catch: java.lang.SecurityException -> L44
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.SecurityException -> L44
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)     // Catch: java.lang.SecurityException -> L44
            if (r2 != 0) goto L40
            r2 = r1
        L1b:
            if (r2 != 0) goto L30
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.cha.c.m36()     // Catch: java.lang.SecurityException -> L44
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
            android.location.LocationManager r0 = r5.f138     // Catch: java.lang.SecurityException -> L44
            if (r0 == 0) goto L3f
            android.location.LocationManager r0 = r5.f138     // Catch: java.lang.SecurityException -> L44
            r0.removeUpdates(r5)     // Catch: java.lang.SecurityException -> L44
            r0 = 0
            r5.f139 = r0     // Catch: java.lang.SecurityException -> L44
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
            com.moat.analytics.mobile.cha.o.m131(r0)
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.n.m111():void");
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private void m114() {
        if (this.f137 != null && !this.f137.isCancelled()) {
            this.f137.cancel(true);
            this.f137 = null;
        }
    }

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private void m125() {
        if (this.f136 != null && !this.f136.isCancelled()) {
            this.f136.cancel(true);
            this.f136 = null;
        }
    }

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private void m118() {
        float fMax = 600.0f;
        a.m15(3, "LocationManager", this, "Resetting fetch timer");
        m125();
        if (this.f133 != null) {
            fMax = Math.max(600.0f - ((System.currentTimeMillis() - this.f133.getTime()) / 1000), 0.0f);
        }
        this.f136 = this.f134.schedule(new Runnable() { // from class: com.moat.analytics.mobile.cha.n.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    a.m15(3, "LocationManager", this, "fetchTimerCompleted");
                    n.this.m115();
                } catch (Exception e) {
                    o.m131(e);
                }
            }
        }, (long) fMax, TimeUnit.SECONDS);
    }

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private boolean m119() {
        return (ContextCompat.checkSelfPermission(c.m36().getApplicationContext(), "android.permission.ACCESS_FINE_LOCATION") == 0) && this.f138.getProvider("gps") != null && this.f138.isProviderEnabled("gps");
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static Location m120(Location location, Location location2) {
        boolean zM123 = m123(location);
        boolean zM1232 = m123(location2);
        if (zM123) {
            return (zM1232 && location.getAccuracy() >= location.getAccuracy()) ? location2 : location;
        }
        if (!zM1232) {
            return null;
        }
        return location2;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static boolean m123(Location location) {
        if (location == null) {
            return false;
        }
        return !(location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) && location.getAccuracy() >= 0.0f && ((float) ((System.currentTimeMillis() - location.getTime()) / 1000)) < 600.0f;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static boolean m116(Location location, Location location2) {
        if (location == location2) {
            return true;
        }
        return (location == null || location2 == null || location.getTime() != location2.getTime()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m124() {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.cha.c.m36()
            android.content.Context r3 = r3.getApplicationContext()
            int r2 = android.support.v4.content.ContextCompat.checkSelfPermission(r3, r2)
            if (r2 != 0) goto L40
            r2 = r0
        L13:
            if (r2 != 0) goto L28
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            android.app.Application r3 = com.moat.analytics.mobile.cha.c.m36()
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
            android.location.LocationManager r2 = r4.f138
            java.lang.String r3 = "network"
            android.location.LocationProvider r2 = r2.getProvider(r3)
            if (r2 == 0) goto L46
            android.location.LocationManager r2 = r4.f138
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
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.n.m124():boolean");
    }
}
