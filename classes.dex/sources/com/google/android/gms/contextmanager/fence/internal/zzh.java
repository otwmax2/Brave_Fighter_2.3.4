package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzh implements Parcelable.Creator<FenceQueryRequestImpl> {
    static void zza(FenceQueryRequestImpl fenceQueryRequestImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fenceQueryRequestImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) fenceQueryRequestImpl.zzaxd(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdg, reason: merged with bridge method [inline-methods] */
    public FenceQueryRequestImpl createFromParcel(Parcel parcel) {
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        FenceQueryRequestImpl.QueryFenceOperation queryFenceOperation = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    queryFenceOperation = (FenceQueryRequestImpl.QueryFenceOperation) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, FenceQueryRequestImpl.QueryFenceOperation.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new FenceQueryRequestImpl(iZzg, queryFenceOperation);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhm, reason: merged with bridge method [inline-methods] */
    public FenceQueryRequestImpl[] newArray(int i) {
        return new FenceQueryRequestImpl[i];
    }
}
