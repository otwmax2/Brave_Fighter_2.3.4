package com.moat.analytics.mobile.vng;

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
class o implements LocationListener {
    private static o a = null;
    private ScheduledExecutorService b;
    private ScheduledFuture<?> c;
    private ScheduledFuture<?> d;
    private LocationManager e;
    private boolean f;
    private Location g;
    private boolean h;

    private o() {
        try {
            this.f = ((k) MoatAnalytics.getInstance()).c;
            if (this.f) {
                p.a(3, "LocationManager", this, "Moat location services disabled");
            } else {
                this.b = Executors.newScheduledThreadPool(1);
                this.e = (LocationManager) a.a().getSystemService("location");
                if (this.e.getAllProviders().size() == 0) {
                    p.a(3, "LocationManager", this, "Device has no location providers");
                } else {
                    e();
                }
            }
        } catch (Exception e) {
            m.a(e);
        }
    }

    static o a() {
        if (a == null) {
            a = new o();
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        try {
            p.a(3, "LocationManager", this, "stopping location fetch");
            h();
            i();
            if (z) {
                k();
            } else {
                j();
            }
        } catch (Exception e) {
            m.a(e);
        }
    }

    private static boolean a(Location location) {
        if (location == null) {
            return false;
        }
        return !(location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) && location.getAccuracy() >= 0.0f && b(location) < 600.0f;
    }

    static boolean a(Location location, Location location2) {
        if (location == location2) {
            return true;
        }
        return (location == null || location2 == null || location.getTime() != location2.getTime()) ? false : true;
    }

    private static boolean a(String str) {
        return ContextCompat.checkSelfPermission(a.a().getApplicationContext(), str) == 0;
    }

    private static float b(Location location) {
        return (System.currentTimeMillis() - location.getTime()) / 1000;
    }

    private static Location b(Location location, Location location2) {
        boolean zA = a(location);
        boolean zA2 = a(location2);
        if (zA) {
            return (!zA2 || location.getAccuracy() < location.getAccuracy()) ? location : location2;
        }
        if (zA2) {
            return location2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (this.f || this.e == null) {
                return;
            }
            if (this.h) {
                p.a(3, "LocationManager", this, "already updating location");
            }
            p.a(3, "LocationManager", this, "starting location fetch");
            Location locationB = b();
            if (locationB == null) {
                g();
            } else {
                p.a(3, "LocationManager", this, "Have a valid location, won't fetch = " + locationB.toString());
                k();
            }
        } catch (Exception e) {
            m.a(e);
        }
    }

    private Location f() {
        Location lastKnownLocation = null;
        try {
            boolean zL = l();
            boolean zM = m();
            if (zL && zM) {
                lastKnownLocation = b(this.e.getLastKnownLocation("gps"), this.e.getLastKnownLocation("network"));
            } else if (zL) {
                lastKnownLocation = this.e.getLastKnownLocation("gps");
            } else if (zM) {
                lastKnownLocation = this.e.getLastKnownLocation("network");
            }
        } catch (SecurityException e) {
            m.a(e);
        }
        return lastKnownLocation;
    }

    private void g() {
        try {
            if (this.h) {
                return;
            }
            p.a(3, "LocationManager", this, "Attempting to start update");
            if (l()) {
                p.a(3, "LocationManager", this, "start updating gps location");
                this.e.requestLocationUpdates("gps", 0L, 0.0f, this, Looper.getMainLooper());
                this.h = true;
            }
            if (m()) {
                p.a(3, "LocationManager", this, "start updating network location");
                this.e.requestLocationUpdates("network", 0L, 0.0f, this, Looper.getMainLooper());
                this.h = true;
            }
            if (this.h) {
                i();
                this.d = this.b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.vng.o.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            p.a(3, "LocationManager", this, "fetchTimedOut");
                            o.this.a(true);
                        } catch (Exception e) {
                            m.a(e);
                        }
                    }
                }, 60L, TimeUnit.SECONDS);
            }
        } catch (SecurityException e) {
            m.a(e);
        }
    }

    private void h() {
        try {
            p.a(3, "LocationManager", this, "Stopping to update location");
            if (!n() || this.e == null) {
                return;
            }
            this.e.removeUpdates(this);
            this.h = false;
        } catch (SecurityException e) {
            m.a(e);
        }
    }

    private void i() {
        if (this.d == null || this.d.isCancelled()) {
            return;
        }
        this.d.cancel(true);
        this.d = null;
    }

    private void j() {
        if (this.c == null || this.c.isCancelled()) {
            return;
        }
        this.c.cancel(true);
        this.c = null;
    }

    private void k() {
        p.a(3, "LocationManager", this, "Resetting fetch timer");
        j();
        Location locationB = b();
        this.c = this.b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.vng.o.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    p.a(3, "LocationManager", this, "fetchTimerCompleted");
                    o.this.e();
                } catch (Exception e) {
                    m.a(e);
                }
            }
        }, (long) (locationB != null ? Math.max(600.0f - b(locationB), 0.0f) : 600.0f), TimeUnit.SECONDS);
    }

    private boolean l() {
        return a("android.permission.ACCESS_FINE_LOCATION") && this.e.getProvider("gps") != null && this.e.isProviderEnabled("gps");
    }

    private boolean m() {
        return n() && this.e.getProvider("network") != null && this.e.isProviderEnabled("network");
    }

    private static boolean n() {
        return a("android.permission.ACCESS_FINE_LOCATION") || a("android.permission.ACCESS_COARSE_LOCATION");
    }

    @Nullable
    Location b() {
        if (this.f || this.e == null) {
            return null;
        }
        try {
            this.g = b(this.g, f());
            return this.g;
        } catch (Exception e) {
            m.a(e);
            return null;
        }
    }

    void c() {
        e();
    }

    void d() {
        a(false);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        try {
            p.a(3, "LocationManager", this, "Received an updated location = " + location.toString());
            float fB = b(location);
            if (!location.hasAccuracy() || location.getAccuracy() > 100.0f || fB >= 600.0f) {
                return;
            }
            this.g = b(this.g, location);
            p.a(3, "LocationManager", this, "fetchCompleted");
            a(true);
        } catch (Exception e) {
            m.a(e);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
