package com.google.android.gms.internal;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzady {
    Map<String, Object> aCf;
    private final Map<String, Object> aCg;
    private final zzaea aDr;
    private String avB;
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzaoa;

    public zzady(Context context) {
        this(context, new HashMap(), new zzaea(context), com.google.android.gms.common.util.zzh.zzavi());
    }

    zzady(Context context, Map<String, Object> map, zzaea zzaeaVar, com.google.android.gms.common.util.zze zzeVar) {
        this.avB = null;
        this.aCf = new HashMap();
        this.mContext = context;
        this.zzaoa = zzeVar;
        this.aDr = zzaeaVar;
        this.aCg = map;
    }

    public void zzps(String str) {
        this.avB = str;
    }
}
