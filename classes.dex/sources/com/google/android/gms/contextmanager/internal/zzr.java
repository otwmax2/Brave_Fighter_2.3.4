package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.TimeFilterImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzr implements Parcelable.Creator<TimeFilterImpl.Interval> {
    static void zza(TimeFilterImpl.Interval interval, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, interval.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, interval.zzadw());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, interval.zzayj());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdy, reason: merged with bridge method [inline-methods] */
    public TimeFilterImpl.Interval createFromParcel(Parcel parcel) {
        long jZzi = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        long jZzi2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    jZzi2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                case 3:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new TimeFilterImpl.Interval(iZzg, jZzi2, jZzi);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzie, reason: merged with bridge method [inline-methods] */
    public TimeFilterImpl.Interval[] newArray(int i) {
        return new TimeFilterImpl.Interval[i];
    }
}
