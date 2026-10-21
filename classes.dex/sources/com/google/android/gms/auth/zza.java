package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<AccountChangeEvent> {
    static void zza(AccountChangeEvent accountChangeEvent, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, accountChangeEvent.mVersion);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, accountChangeEvent.ce);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, accountChangeEvent.cf, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, accountChangeEvent.cg);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, accountChangeEvent.ch);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, accountChangeEvent.ci, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public AccountChangeEvent createFromParcel(Parcel parcel) {
        String strZzq = null;
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        long jZzi = 0;
        int iZzg2 = 0;
        String strZzq2 = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                case 3:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 6:
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
        return new AccountChangeEvent(iZzg3, jZzi, strZzq2, iZzg2, iZzg, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzck, reason: merged with bridge method [inline-methods] */
    public AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
