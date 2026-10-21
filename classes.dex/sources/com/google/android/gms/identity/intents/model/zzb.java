package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable.Creator<UserAddress> {
    static void zza(UserAddress userAddress, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, userAddress.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, userAddress.name, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, userAddress.abC, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, userAddress.abD, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, userAddress.abE, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, userAddress.abF, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, userAddress.abG, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, userAddress.abH, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, userAddress.abI, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, userAddress.zzcgl, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, userAddress.abJ, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, userAddress.abK, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, userAddress.phoneNumber, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, userAddress.abL);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, userAddress.abM, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, userAddress.abN, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzmm, reason: merged with bridge method [inline-methods] */
    public UserAddress createFromParcel(Parcel parcel) {
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        String strZzq6 = null;
        String strZzq7 = null;
        String strZzq8 = null;
        String strZzq9 = null;
        String strZzq10 = null;
        String strZzq11 = null;
        String strZzq12 = null;
        boolean zZzc = false;
        String strZzq13 = null;
        String strZzq14 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    strZzq7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    strZzq8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 10:
                    strZzq9 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 11:
                    strZzq10 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 12:
                    strZzq11 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 13:
                    strZzq12 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 14:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 15:
                    strZzq13 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 16:
                    strZzq14 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new UserAddress(iZzg, strZzq, strZzq2, strZzq3, strZzq4, strZzq5, strZzq6, strZzq7, strZzq8, strZzq9, strZzq10, strZzq11, strZzq12, zZzc, strZzq13, strZzq14);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzsp, reason: merged with bridge method [inline-methods] */
    public UserAddress[] newArray(int i) {
        return new UserAddress[i];
    }
}
