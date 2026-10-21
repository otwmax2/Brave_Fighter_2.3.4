package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.KeyFilterImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzm implements Parcelable.Creator<KeyFilterImpl.Inclusion> {
    static void zza(KeyFilterImpl.Inclusion inclusion, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, inclusion.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, inclusion.zzayb(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, inclusion.zzayc(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, inclusion.zzayd(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdt, reason: merged with bridge method [inline-methods] */
    public KeyFilterImpl.Inclusion createFromParcel(Parcel parcel) {
        String[] strArrZzac = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String[] strArrZzac2 = null;
        String[] strArrZzac3 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
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
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new KeyFilterImpl.Inclusion(iZzg, strArrZzac3, strArrZzac2, strArrZzac);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhz, reason: merged with bridge method [inline-methods] */
    public KeyFilterImpl.Inclusion[] newArray(int i) {
        return new KeyFilterImpl.Inclusion[i];
    }
}
