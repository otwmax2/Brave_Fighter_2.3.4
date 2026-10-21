package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class VideoCapabilitiesCreator implements Parcelable.Creator<VideoCapabilities> {
    static void zza(VideoCapabilities videoCapabilities, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, videoCapabilities.isCameraSupported());
        zzb.zza(parcel, 2, videoCapabilities.isMicSupported());
        zzb.zza(parcel, 3, videoCapabilities.isWriteStorageSupported());
        zzb.zza(parcel, 4, videoCapabilities.zzblr(), false);
        zzb.zza(parcel, 5, videoCapabilities.zzbls(), false);
        zzb.zzc(parcel, 1000, videoCapabilities.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzmc, reason: merged with bridge method [inline-methods] */
    public VideoCapabilities createFromParcel(Parcel parcel) {
        boolean[] zArrZzv = null;
        boolean zZzc = false;
        int iZzcl = zza.zzcl(parcel);
        boolean[] zArrZzv2 = null;
        boolean zZzc2 = false;
        boolean zZzc3 = false;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    zZzc3 = zza.zzc(parcel, iZzck);
                    break;
                case 2:
                    zZzc2 = zza.zzc(parcel, iZzck);
                    break;
                case 3:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 4:
                    zArrZzv2 = zza.zzv(parcel, iZzck);
                    break;
                case 5:
                    zArrZzv = zza.zzv(parcel, iZzck);
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
        return new VideoCapabilities(iZzg, zZzc3, zZzc2, zZzc, zArrZzv2, zArrZzv);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzsa, reason: merged with bridge method [inline-methods] */
    public VideoCapabilities[] newArray(int i) {
        return new VideoCapabilities[i];
    }
}
