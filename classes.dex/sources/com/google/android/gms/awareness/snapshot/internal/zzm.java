package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzm implements Parcelable.Creator<BeaconStateImpl.TypeFilterImpl> {
    static void zza(BeaconStateImpl.TypeFilterImpl typeFilterImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, typeFilterImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, typeFilterImpl.zzagt(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbf, reason: merged with bridge method [inline-methods] */
    public BeaconStateImpl.TypeFilterImpl createFromParcel(Parcel parcel) {
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        byte[] bArrZzt = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    bArrZzt = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new BeaconStateImpl.TypeFilterImpl(iZzg, bArrZzt);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdr, reason: merged with bridge method [inline-methods] */
    public BeaconStateImpl.TypeFilterImpl[] newArray(int i) {
        return new BeaconStateImpl.TypeFilterImpl[i];
    }
}
