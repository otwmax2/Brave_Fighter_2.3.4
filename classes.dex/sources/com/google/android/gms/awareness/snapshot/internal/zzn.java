package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzn implements Parcelable.Creator<WeatherImpl> {
    static void zza(WeatherImpl weatherImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, weatherImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, weatherImpl.zzahl());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, weatherImpl.zzahk());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, weatherImpl.zzahj());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, weatherImpl.getHumidity());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, weatherImpl.getConditions(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbg, reason: merged with bridge method [inline-methods] */
    public WeatherImpl createFromParcel(Parcel parcel) {
        int iZzg = 0;
        float fZzl = 0.0f;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int[] iArrZzw = null;
        float fZzl2 = 0.0f;
        float fZzl3 = 0.0f;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    fZzl3 = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, iZzck);
                    break;
                case 3:
                    fZzl2 = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, iZzck);
                    break;
                case 4:
                    fZzl = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, iZzck);
                    break;
                case 5:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 6:
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
        return new WeatherImpl(iZzg2, fZzl3, fZzl2, fZzl, iZzg, iArrZzw);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzds, reason: merged with bridge method [inline-methods] */
    public WeatherImpl[] newArray(int i) {
        return new WeatherImpl[i];
    }
}
