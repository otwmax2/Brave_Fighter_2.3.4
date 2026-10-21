package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.zzd;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzf {
    private static zzf rn;
    private final Context mContext;

    private zzf(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private boolean zzb(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zzd.zzb zzbVar = new zzd.zzb(packageInfo.signatures[0].toByteArray());
        Iterator<zzs> it = (z ? zzd.zzanf() : zzd.zzang()).iterator();
        while (it.hasNext()) {
            if (zzbVar.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static zzf zzbz(Context context) {
        zzab.zzaa(context);
        synchronized (zzf.class) {
            if (rn == null) {
                zzd.zzbq(context);
                rn = new zzf(context);
            }
        }
        return rn;
    }

    zzd.zza zza(PackageInfo packageInfo, zzd.zza... zzaVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzd.zzb zzbVar = new zzd.zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzaVarArr.length; i++) {
            if (zzaVarArr[i].equals(zzbVar)) {
                return zzaVarArr[i];
            }
        }
        return null;
    }

    public boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? zza(packageInfo, zzd.C0081zzd.re) : zza(packageInfo, zzd.C0081zzd.re[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zze.zzbu(this.mContext)) {
            return zzb(packageInfo, true);
        }
        boolean zZzb = zzb(packageInfo, false);
        if (zZzb || !zzb(packageInfo, true)) {
            return zZzb;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zZzb;
    }

    public boolean zzb(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zze.zzbu(this.mContext)) {
            return zza(packageInfo, true);
        }
        boolean zZza = zza(packageInfo, false);
        if (zZza || !zza(packageInfo, true)) {
            return zZza;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zZza;
    }

    public boolean zzb(PackageManager packageManager, String str) {
        try {
            return zza(packageManager, packageManager.getPackageInfo(str, 64));
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
