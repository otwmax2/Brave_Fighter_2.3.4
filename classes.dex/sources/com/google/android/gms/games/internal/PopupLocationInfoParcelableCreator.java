package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class PopupLocationInfoParcelableCreator implements Parcelable.Creator<PopupLocationInfoParcelable> {
    static void zza(PopupLocationInfoParcelable popupLocationInfoParcelable, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, popupLocationInfoParcelable.zzbjn(), false);
        zzb.zza(parcel, 2, popupLocationInfoParcelable.getWindowToken(), false);
        zzb.zzc(parcel, 1000, popupLocationInfoParcelable.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlf, reason: merged with bridge method [inline-methods] */
    public PopupLocationInfoParcelable createFromParcel(Parcel parcel) {
        IBinder iBinderZzr = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        Bundle bundleZzs = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 2:
                    iBinderZzr = zza.zzr(parcel, iZzck);
                    break;
                case 1000:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PopupLocationInfoParcelable(iZzg, bundleZzs, iBinderZzr);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqq, reason: merged with bridge method [inline-methods] */
    public PopupLocationInfoParcelable[] newArray(int i) {
        return new PopupLocationInfoParcelable[i];
    }
}
