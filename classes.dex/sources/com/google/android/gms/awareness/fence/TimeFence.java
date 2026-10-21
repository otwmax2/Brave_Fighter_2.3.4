package com.google.android.gms.awareness.fence;

import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import com.google.android.gms.contextmanager.fence.internal.zzp;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class TimeFence {
    private TimeFence() {
    }

    public static AwarenessFence inDailyInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(2, timeZone, j, j2));
    }

    public static AwarenessFence inFridayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(10, timeZone, j, j2));
    }

    public static AwarenessFence inInterval(long j, long j2) {
        return ContextFenceStub.zza(zzp.zzf(j, j2));
    }

    public static AwarenessFence inMondayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(6, timeZone, j, j2));
    }

    public static AwarenessFence inSaturdayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(11, timeZone, j, j2));
    }

    public static AwarenessFence inSundayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(5, timeZone, j, j2));
    }

    public static AwarenessFence inThursdayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(9, timeZone, j, j2));
    }

    public static AwarenessFence inTuesdayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(7, timeZone, j, j2));
    }

    public static AwarenessFence inWednesdayInterval(TimeZone timeZone, long j, long j2) {
        return ContextFenceStub.zza(zzp.zza(8, timeZone, j, j2));
    }
}
