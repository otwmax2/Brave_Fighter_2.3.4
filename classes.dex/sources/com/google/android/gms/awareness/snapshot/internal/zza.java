package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<BeaconStateImpl.BeaconInfoImpl> {
    static void zza(BeaconStateImpl.BeaconInfoImpl beaconInfoImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, beaconInfoImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, beaconInfoImpl.getNamespace(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, beaconInfoImpl.getType(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, beaconInfoImpl.getContent(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaw, reason: merged with bridge method [inline-methods] */
    public BeaconStateImpl.BeaconInfoImpl createFromParcel(Parcel parcel) {
        byte[] bArrZzt = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 4:
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
        return new BeaconStateImpl.BeaconInfoImpl(iZzg, strZzq2, strZzq, bArrZzt);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdf, reason: merged with bridge method [inline-methods] */
    public BeaconStateImpl.BeaconInfoImpl[] newArray(int i) {
        return new BeaconStateImpl.BeaconInfoImpl[i];
    }
}
