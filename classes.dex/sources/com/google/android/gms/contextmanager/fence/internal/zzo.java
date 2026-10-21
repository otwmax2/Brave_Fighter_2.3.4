package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzo implements Parcelable.Creator<FenceQueryRequestImpl.QueryFenceOperation> {
    static void zza(FenceQueryRequestImpl.QueryFenceOperation queryFenceOperation, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, queryFenceOperation.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, queryFenceOperation.getType());
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 3, queryFenceOperation.zzaxe(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdl, reason: merged with bridge method [inline-methods] */
    public FenceQueryRequestImpl.QueryFenceOperation createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        ArrayList<String> arrayListZzae = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    arrayListZzae = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new FenceQueryRequestImpl.QueryFenceOperation(iZzg2, iZzg, arrayListZzae);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhr, reason: merged with bridge method [inline-methods] */
    public FenceQueryRequestImpl.QueryFenceOperation[] newArray(int i) {
        return new FenceQueryRequestImpl.QueryFenceOperation[i];
    }
}
