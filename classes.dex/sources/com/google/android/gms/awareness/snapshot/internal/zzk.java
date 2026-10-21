package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzk implements Parcelable.Creator<SnapshotRequest> {
    static void zza(SnapshotRequest snapshotRequest, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, snapshotRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, snapshotRequest.zzahg());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, snapshotRequest.zzahh(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbe, reason: merged with bridge method [inline-methods] */
    public SnapshotRequest createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        ArrayList arrayListZzc = null;
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
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, BeaconStateImpl.TypeFilterImpl.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new SnapshotRequest(iZzg2, iZzg, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdq, reason: merged with bridge method [inline-methods] */
    public SnapshotRequest[] newArray(int i) {
        return new SnapshotRequest[i];
    }
}
