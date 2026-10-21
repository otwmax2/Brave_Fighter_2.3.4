package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

/* JADX INFO: loaded from: classes.dex */
public class zzqn {
    private final Object uZ;

    public zzqn(Activity activity) {
        com.google.android.gms.common.internal.zzab.zzb(activity, "Activity must not be null");
        com.google.android.gms.common.internal.zzab.zzb(com.google.android.gms.common.util.zzs.zzavj() || (activity instanceof FragmentActivity), "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead.");
        this.uZ = activity;
    }

    public boolean zzaqm() {
        return this.uZ instanceof FragmentActivity;
    }

    public Activity zzaqn() {
        return (Activity) this.uZ;
    }

    public FragmentActivity zzaqo() {
        return (FragmentActivity) this.uZ;
    }
}
