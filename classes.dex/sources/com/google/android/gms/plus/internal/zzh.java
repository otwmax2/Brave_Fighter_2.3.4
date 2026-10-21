package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzh implements Parcelable.Creator<PlusSession> {
    static void zza(PlusSession plusSession, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, plusSession.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, plusSession.zzbyk(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, plusSession.zzbyl(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, plusSession.zzbym(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, plusSession.zzbyn(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, plusSession.zzbyo(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, plusSession.zzalr(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, plusSession.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, plusSession.zzbyp(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) plusSession.zzbyq(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpy, reason: merged with bridge method [inline-methods] */
    public PlusSession createFromParcel(Parcel parcel) {
        PlusCommonExtras plusCommonExtras = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        String[] strArrZzac = null;
        String[] strArrZzac2 = null;
        String[] strArrZzac3 = null;
        String strZzq5 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strArrZzac3 = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, iZzck);
                    break;
                case 3:
                    strArrZzac2 = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, iZzck);
                    break;
                case 4:
                    strArrZzac = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, iZzck);
                    break;
                case 5:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    plusCommonExtras = (PlusCommonExtras) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PlusCommonExtras.CREATOR);
                    break;
                case 1000:
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
        return new PlusSession(iZzg, strZzq5, strArrZzac3, strArrZzac2, strArrZzac, strZzq4, strZzq3, strZzq2, strZzq, plusCommonExtras);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxc, reason: merged with bridge method [inline-methods] */
    public PlusSession[] newArray(int i) {
        return new PlusSession[i];
    }
}
