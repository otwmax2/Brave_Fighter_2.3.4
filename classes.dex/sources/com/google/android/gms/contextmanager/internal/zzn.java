package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzn implements Parcelable.Creator<QueryFilterParameters> {
    static void zza(QueryFilterParameters queryFilterParameters, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, queryFilterParameters.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, queryFilterParameters.zzaye());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, queryFilterParameters.getLimit());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, queryFilterParameters.zzayf(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdu, reason: merged with bridge method [inline-methods] */
    public QueryFilterParameters createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int[] iArrZzw = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 4:
                    iArrZzw = com.google.android.gms.common.internal.safeparcel.zza.zzw(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new QueryFilterParameters(iZzg3, iZzg2, iZzg, iArrZzw);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzia, reason: merged with bridge method [inline-methods] */
    public QueryFilterParameters[] newArray(int i) {
        return new QueryFilterParameters[i];
    }
}
