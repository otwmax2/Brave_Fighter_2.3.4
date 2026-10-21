package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.RelationFilterImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzp implements Parcelable.Creator<RelationFilterImpl.Inclusion> {
    static void zza(RelationFilterImpl.Inclusion inclusion, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, inclusion.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, inclusion.getType());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) inclusion.zzaxt(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) inclusion.zzaxu(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdw, reason: merged with bridge method [inline-methods] */
    public RelationFilterImpl.Inclusion createFromParcel(Parcel parcel) {
        KeyFilterImpl keyFilterImpl;
        TimeFilterImpl timeFilterImpl;
        int iZzg;
        int iZzg2;
        KeyFilterImpl keyFilterImpl2 = null;
        int i = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        TimeFilterImpl timeFilterImpl2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    KeyFilterImpl keyFilterImpl3 = keyFilterImpl2;
                    timeFilterImpl = timeFilterImpl2;
                    iZzg = i;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    keyFilterImpl = keyFilterImpl3;
                    break;
                case 2:
                    iZzg2 = i2;
                    TimeFilterImpl timeFilterImpl3 = timeFilterImpl2;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    keyFilterImpl = keyFilterImpl2;
                    timeFilterImpl = timeFilterImpl3;
                    break;
                case 3:
                    iZzg = i;
                    iZzg2 = i2;
                    KeyFilterImpl keyFilterImpl4 = keyFilterImpl2;
                    timeFilterImpl = (TimeFilterImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, TimeFilterImpl.CREATOR);
                    keyFilterImpl = keyFilterImpl4;
                    break;
                case 4:
                    keyFilterImpl = (KeyFilterImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, KeyFilterImpl.CREATOR);
                    timeFilterImpl = timeFilterImpl2;
                    iZzg = i;
                    iZzg2 = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    keyFilterImpl = keyFilterImpl2;
                    timeFilterImpl = timeFilterImpl2;
                    iZzg = i;
                    iZzg2 = i2;
                    break;
            }
            i2 = iZzg2;
            i = iZzg;
            timeFilterImpl2 = timeFilterImpl;
            keyFilterImpl2 = keyFilterImpl;
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new RelationFilterImpl.Inclusion(i2, i, timeFilterImpl2, keyFilterImpl2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzic, reason: merged with bridge method [inline-methods] */
    public RelationFilterImpl.Inclusion[] newArray(int i) {
        return new RelationFilterImpl.Inclusion[i];
    }
}
