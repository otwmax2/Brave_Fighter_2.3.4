package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzf implements Parcelable.Creator<PasswordSpecification> {
    static void zza(PasswordSpecification passwordSpecification, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, passwordSpecification.dg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 2, passwordSpecification.dh, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, passwordSpecification.di, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, passwordSpecification.dj);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, passwordSpecification.dk);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, passwordSpecification.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzal, reason: merged with bridge method [inline-methods] */
    public PasswordSpecification createFromParcel(Parcel parcel) {
        ArrayList<Integer> arrayListZzad = null;
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg2 = 0;
        ArrayList<String> arrayListZzae = null;
        String strZzq = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    arrayListZzae = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, iZzck);
                    break;
                case 3:
                    arrayListZzad = com.google.android.gms.common.internal.safeparcel.zza.zzad(parcel, iZzck);
                    break;
                case 4:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 1000:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PasswordSpecification(iZzg3, strZzq, arrayListZzae, arrayListZzad, iZzg2, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzct, reason: merged with bridge method [inline-methods] */
    public PasswordSpecification[] newArray(int i) {
        return new PasswordSpecification[i];
    }
}
