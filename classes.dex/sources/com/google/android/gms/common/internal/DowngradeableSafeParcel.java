package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable {
    private static final Object ye = new Object();
    private static ClassLoader yf = null;
    private static Integer yg = null;
    private boolean yh = false;

    protected static ClassLoader zzaso() {
        synchronized (ye) {
        }
        return null;
    }

    protected static Integer zzasp() {
        synchronized (ye) {
        }
        return null;
    }

    private static boolean zzd(Class<?> cls) {
        try {
            return SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (IllegalAccessException e) {
            return false;
        } catch (NoSuchFieldException e2) {
            return false;
        }
    }

    protected static boolean zzhl(String str) {
        ClassLoader classLoaderZzaso = zzaso();
        if (classLoaderZzaso == null) {
            return true;
        }
        try {
            return zzd(classLoaderZzaso.loadClass(str));
        } catch (Exception e) {
            return false;
        }
    }

    protected boolean zzasq() {
        return false;
    }
}
