package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.util.zzk;

/* JADX INFO: loaded from: classes.dex */
public abstract class GamesDowngradeableSafeParcel extends DowngradeableSafeParcel {
    protected static boolean zzf(Integer num) {
        if (num == null) {
            return false;
        }
        return zzk.zzgv(num.intValue());
    }
}
