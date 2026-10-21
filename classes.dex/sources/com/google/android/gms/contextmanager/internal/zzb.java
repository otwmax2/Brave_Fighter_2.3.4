package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.ContextDataFilterImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable.Creator<ContextDataFilterImpl.Inclusion> {
    static void zza(ContextDataFilterImpl.Inclusion inclusion, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, inclusion.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, inclusion.zzaxr());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, inclusion.zzaxs());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) inclusion.zzaxt(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) inclusion.zzaxu(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdo, reason: merged with bridge method [inline-methods] */
    public ContextDataFilterImpl.Inclusion createFromParcel(Parcel parcel) {
        KeyFilterImpl keyFilterImpl = null;
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        TimeFilterImpl timeFilterImpl = null;
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
                    timeFilterImpl = (TimeFilterImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, TimeFilterImpl.CREATOR);
                    break;
                case 5:
                    keyFilterImpl = (KeyFilterImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, KeyFilterImpl.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ContextDataFilterImpl.Inclusion(iZzg3, iZzg2, iZzg, timeFilterImpl, keyFilterImpl);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhu, reason: merged with bridge method [inline-methods] */
    public ContextDataFilterImpl.Inclusion[] newArray(int i) {
        return new ContextDataFilterImpl.Inclusion[i];
    }
}
