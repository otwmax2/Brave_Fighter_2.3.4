package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzj implements Parcelable.Creator<InterestUpdateBatchImpl> {
    static void zza(InterestUpdateBatchImpl interestUpdateBatchImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, interestUpdateBatchImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, interestUpdateBatchImpl.zzaxh(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdq, reason: merged with bridge method [inline-methods] */
    public InterestUpdateBatchImpl createFromParcel(Parcel parcel) {
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
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, InterestUpdateBatchImpl.Operation.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new InterestUpdateBatchImpl(iZzg, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhw, reason: merged with bridge method [inline-methods] */
    public InterestUpdateBatchImpl[] newArray(int i) {
        return new InterestUpdateBatchImpl[i];
    }
}
