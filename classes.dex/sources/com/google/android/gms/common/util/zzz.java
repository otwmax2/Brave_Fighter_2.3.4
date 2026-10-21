package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zzz {
    private static final Method Ba = zzavx();
    private static final Method Bb = zzavy();
    private static final Method Bc = zzavz();
    private static final Method Bd = zzawa();
    private static final Method Be = zzawb();

    public static int zza(WorkSource workSource) {
        if (Bc != null) {
            try {
                return ((Integer) Bc.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    public static String zza(WorkSource workSource, int i) {
        if (Be != null) {
            try {
                return (String) Be.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return null;
    }

    public static void zza(WorkSource workSource, int i, String str) {
        if (Bb != null) {
            if (str == null) {
                str = "";
            }
            try {
                Bb.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        if (Ba != null) {
            try {
                Ba.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    private static Method zzavx() {
        try {
            return WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzavy() {
        if (!zzs.zzavp()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE, String.class);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzavz() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzawa() {
        try {
            return WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzawb() {
        if (!zzs.zzavp()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    public static List<String> zzb(WorkSource workSource) {
        int iZza = workSource == null ? 0 : zza(workSource);
        if (iZza == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iZza; i++) {
            String strZza = zza(workSource, i);
            if (!zzw.zzic(strZza)) {
                arrayList.add(strZza);
            }
        }
        return arrayList;
    }

    public static boolean zzco(Context context) {
        PackageManager packageManager;
        return (context == null || (packageManager = context.getPackageManager()) == null || packageManager.checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    public static WorkSource zzf(int i, String str) {
        WorkSource workSource = new WorkSource();
        zza(workSource, i, str);
        return workSource;
    }

    public static WorkSource zzr(Context context, String str) {
        if (context == null || context.getPackageManager() == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return zzf(applicationInfo.uid, str);
            }
            String strValueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(strValueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String strValueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf2.length() != 0 ? "Could not find package: ".concat(strValueOf2) : new String("Could not find package: "));
            return null;
        }
    }
}
