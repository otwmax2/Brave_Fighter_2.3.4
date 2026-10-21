package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.TimeFilterImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzq implements Parcelable.Creator<TimeFilterImpl> {
    static void zza(TimeFilterImpl timeFilterImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, timeFilterImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, timeFilterImpl.zzayh(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, timeFilterImpl.zzayi(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdx, reason: merged with bridge method [inline-methods] */
    public TimeFilterImpl createFromParcel(Parcel parcel) {
        int[] iArrZzw = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, TimeFilterImpl.Interval.CREATOR);
                    break;
                case 3:
                    iArrZzw = com.google.android.gms.common.internal.safeparcel.zza.zzw(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new TimeFilterImpl(iZzg, arrayListZzc, iArrZzw);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzid, reason: merged with bridge method [inline-methods] */
    public TimeFilterImpl[] newArray(int i) {
        return new TimeFilterImpl[i];
    }
}
