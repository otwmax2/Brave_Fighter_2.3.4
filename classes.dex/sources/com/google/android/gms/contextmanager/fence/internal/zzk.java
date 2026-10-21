package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzk implements Parcelable.Creator<FenceTriggerInfoImpl> {
    static void zza(FenceTriggerInfoImpl fenceTriggerInfoImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fenceTriggerInfoImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, fenceTriggerInfoImpl.zzaxg());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, fenceTriggerInfoImpl.getKey(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdj, reason: merged with bridge method [inline-methods] */
    public FenceTriggerInfoImpl createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        String strZzq = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 3:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new FenceTriggerInfoImpl(iZzg, zZzc, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhp, reason: merged with bridge method [inline-methods] */
    public FenceTriggerInfoImpl[] newArray(int i) {
        return new FenceTriggerInfoImpl[i];
    }
}
