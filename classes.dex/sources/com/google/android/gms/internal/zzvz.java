package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zzvz {
    private final String AA;
    private final String Ay;
    private WorkSource acv;
    private final PowerManager.WakeLock auA;
    private final int auB;
    private final String auC;
    private boolean auD;
    private int auE;
    private int auF;
    private final Context mContext;
    private static String TAG = "WakeLock";
    private static String auz = "*gcore*:";
    private static boolean DEBUG = false;

    public zzvz(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzvz(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzvz(Context context, int i, String str, String str2, String str3, String str4) {
        this.auD = true;
        com.google.android.gms.common.internal.zzab.zzh(str, "Wake lock name can NOT be empty");
        this.auB = i;
        this.auC = str2;
        this.AA = str4;
        this.mContext = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.Ay = str;
        } else {
            String strValueOf = String.valueOf(auz);
            String strValueOf2 = String.valueOf(str);
            this.Ay = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        }
        this.auA = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (com.google.android.gms.common.util.zzz.zzco(this.mContext)) {
            this.acv = com.google.android.gms.common.util.zzz.zzr(context, com.google.android.gms.common.util.zzw.zzic(str3) ? context.getPackageName() : str3);
            zzc(this.acv);
        }
    }

    private void zzd(WorkSource workSource) {
        try {
            this.auA.setWorkSource(workSource);
        } catch (IllegalArgumentException e) {
            Log.wtf(TAG, e.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:13:0x001f, B:14:0x0042, B:9:0x0017, B:11:0x001b), top: B:19:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:13:0x001f, B:14:0x0042, B:9:0x0017, B:11:0x001b), top: B:19:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzk(java.lang.String r13, long r14) {
        /*
            r12 = this;
            boolean r0 = r12.zznj(r13)
            java.lang.String r6 = r12.zzp(r13, r0)
            monitor-enter(r12)
            boolean r1 = r12.auD     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L17
            int r1 = r12.auE     // Catch: java.lang.Throwable -> L44
            int r2 = r1 + 1
            r12.auE = r2     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L1f
            if (r0 != 0) goto L1f
        L17:
            boolean r0 = r12.auD     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L42
            int r0 = r12.auF     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L42
        L1f:
            com.google.android.gms.common.stats.zzh r1 = com.google.android.gms.common.stats.zzh.zzave()     // Catch: java.lang.Throwable -> L44
            android.content.Context r2 = r12.mContext     // Catch: java.lang.Throwable -> L44
            android.os.PowerManager$WakeLock r0 = r12.auA     // Catch: java.lang.Throwable -> L44
            java.lang.String r3 = com.google.android.gms.common.stats.zzf.zza(r0, r6)     // Catch: java.lang.Throwable -> L44
            r4 = 7
            java.lang.String r5 = r12.Ay     // Catch: java.lang.Throwable -> L44
            java.lang.String r7 = r12.AA     // Catch: java.lang.Throwable -> L44
            int r8 = r12.auB     // Catch: java.lang.Throwable -> L44
            android.os.WorkSource r0 = r12.acv     // Catch: java.lang.Throwable -> L44
            java.util.List r9 = com.google.android.gms.common.util.zzz.zzb(r0)     // Catch: java.lang.Throwable -> L44
            r10 = r14
            r1.zza(r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L44
            int r0 = r12.auF     // Catch: java.lang.Throwable -> L44
            int r0 = r0 + 1
            r12.auF = r0     // Catch: java.lang.Throwable -> L44
        L42:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L44
            return
        L44:
            r0 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L44
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvz.zzk(java.lang.String, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020 A[Catch: all -> 0x0045, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:13:0x0020, B:14:0x0043, B:9:0x0017, B:11:0x001b), top: B:19:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017 A[Catch: all -> 0x0045, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:13:0x0020, B:14:0x0043, B:9:0x0017, B:11:0x001b), top: B:19:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzni(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = r9.zznj(r10)
            java.lang.String r5 = r9.zzp(r10, r0)
            monitor-enter(r9)
            boolean r1 = r9.auD     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L17
            int r1 = r9.auE     // Catch: java.lang.Throwable -> L45
            int r1 = r1 + (-1)
            r9.auE = r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L20
            if (r0 != 0) goto L20
        L17:
            boolean r0 = r9.auD     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L43
            int r0 = r9.auF     // Catch: java.lang.Throwable -> L45
            r1 = 1
            if (r0 != r1) goto L43
        L20:
            com.google.android.gms.common.stats.zzh r0 = com.google.android.gms.common.stats.zzh.zzave()     // Catch: java.lang.Throwable -> L45
            android.content.Context r1 = r9.mContext     // Catch: java.lang.Throwable -> L45
            android.os.PowerManager$WakeLock r2 = r9.auA     // Catch: java.lang.Throwable -> L45
            java.lang.String r2 = com.google.android.gms.common.stats.zzf.zza(r2, r5)     // Catch: java.lang.Throwable -> L45
            r3 = 8
            java.lang.String r4 = r9.Ay     // Catch: java.lang.Throwable -> L45
            java.lang.String r6 = r9.AA     // Catch: java.lang.Throwable -> L45
            int r7 = r9.auB     // Catch: java.lang.Throwable -> L45
            android.os.WorkSource r8 = r9.acv     // Catch: java.lang.Throwable -> L45
            java.util.List r8 = com.google.android.gms.common.util.zzz.zzb(r8)     // Catch: java.lang.Throwable -> L45
            r0.zza(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L45
            int r0 = r9.auF     // Catch: java.lang.Throwable -> L45
            int r0 = r0 + (-1)
            r9.auF = r0     // Catch: java.lang.Throwable -> L45
        L43:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L45
            return
        L45:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L45
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvz.zzni(java.lang.String):void");
    }

    private boolean zznj(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.auC)) ? false : true;
    }

    private String zzp(String str, boolean z) {
        return (this.auD && z) ? str : this.auC;
    }

    public void acquire(long j) {
        if (!com.google.android.gms.common.util.zzs.zzavm() && this.auD) {
            String str = TAG;
            String strValueOf = String.valueOf(this.Ay);
            Log.wtf(str, strValueOf.length() != 0 ? "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: ".concat(strValueOf) : new String("Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "));
        }
        zzk(null, j);
        this.auA.acquire(j);
    }

    public boolean isHeld() {
        return this.auA.isHeld();
    }

    public void release() {
        zzni(null);
        this.auA.release();
    }

    public void setReferenceCounted(boolean z) {
        this.auA.setReferenceCounted(z);
        this.auD = z;
    }

    public void zzc(WorkSource workSource) {
        if (workSource == null || !com.google.android.gms.common.util.zzz.zzco(this.mContext)) {
            return;
        }
        if (this.acv != null) {
            this.acv.add(workSource);
        } else {
            this.acv = workSource;
        }
        zzd(this.acv);
    }
}
