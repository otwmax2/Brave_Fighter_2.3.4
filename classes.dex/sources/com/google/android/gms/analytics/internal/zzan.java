package com.google.android.gms.analytics.internal;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzan implements zzp {
    public String zzcrv;
    public double aw = -1.0d;
    public int ax = -1;
    public int ay = -1;
    public int az = -1;
    public int aA = -1;
    public Map<String, String> aB = new HashMap();

    public int getSessionTimeout() {
        return this.ax;
    }

    public String getTrackingId() {
        return this.zzcrv;
    }

    public boolean zzaeb() {
        return this.zzcrv != null;
    }

    public boolean zzaec() {
        return this.aw >= 0.0d;
    }

    public double zzaed() {
        return this.aw;
    }

    public boolean zzaee() {
        return this.ax >= 0;
    }

    public boolean zzaef() {
        return this.ay != -1;
    }

    public boolean zzaeg() {
        return this.ay == 1;
    }

    public boolean zzaeh() {
        return this.az != -1;
    }

    public boolean zzaei() {
        return this.az == 1;
    }

    public boolean zzaej() {
        return this.aA == 1;
    }

    public String zzex(String str) {
        String str2 = this.aB.get(str);
        return str2 != null ? str2 : str;
    }

    public String zzr(Activity activity) {
        return zzex(activity.getClass().getCanonicalName());
    }
}
