package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzh implements Parcelable.Creator<ScreenStateImpl> {
    static void zza(ScreenStateImpl screenStateImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, screenStateImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, screenStateImpl.zzagy());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbc, reason: merged with bridge method [inline-methods] */
    public ScreenStateImpl createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
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
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ScreenStateImpl(iZzg2, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdo, reason: merged with bridge method [inline-methods] */
    public ScreenStateImpl[] newArray(int i) {
        return new ScreenStateImpl[i];
    }
}
