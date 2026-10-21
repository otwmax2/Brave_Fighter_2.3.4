package com.google.android.gms.contextmanager.fence.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzry;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class zzp {
    private final zzry.zzm Cc;

    public zzp(zzry.zzm zzmVar) {
        this.Cc = (zzry.zzm) zzab.zzaa(zzmVar);
    }

    public static zzp zza(int i, TimeZone timeZone, long j, long j2) {
        zzab.zzbn(i != 1);
        zzab.zzaa(timeZone);
        zzab.zzbn(j >= 0);
        zzab.zzbn(j <= 86400000);
        zzab.zzbn(j2 >= 0);
        zzab.zzbn(j2 <= 86400000);
        zzab.zzbn(j <= j2);
        return new zzp(zzb(i, timeZone, j, j2));
    }

    private static zzry.zzm zzb(int i, TimeZone timeZone, long j, long j2) {
        zzry.zzm zzmVar = new zzry.zzm();
        zzmVar.Da = i;
        if (timeZone != null && !TextUtils.isEmpty(timeZone.getID())) {
            zzmVar.DQ = timeZone.getID();
        }
        zzmVar.DR = j;
        zzmVar.DS = j2;
        return zzmVar;
    }

    public static zzp zzf(long j, long j2) {
        zzab.zzbn(j >= 0);
        zzab.zzbn(j2 >= 0);
        zzab.zzbn(j <= j2);
        return new zzp(zzb(1, null, j, j2));
    }

    public zzry.zzm zzaxj() {
        return this.Cc;
    }
}
