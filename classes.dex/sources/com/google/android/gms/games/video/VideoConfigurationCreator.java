package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class VideoConfigurationCreator implements Parcelable.Creator<VideoConfiguration> {
    static void zza(VideoConfiguration videoConfiguration, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, videoConfiguration.getQualityLevel());
        zzb.zzc(parcel, 2, videoConfiguration.getCaptureMode());
        zzb.zza(parcel, 3, videoConfiguration.getStreamUrl(), false);
        zzb.zza(parcel, 4, videoConfiguration.zzblt(), false);
        zzb.zza(parcel, 5, videoConfiguration.zzblu(), false);
        zzb.zza(parcel, 6, videoConfiguration.zzblv(), false);
        zzb.zza(parcel, 7, videoConfiguration.zzblw());
        zzb.zzc(parcel, 1000, videoConfiguration.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzmd, reason: merged with bridge method [inline-methods] */
    public VideoConfiguration createFromParcel(Parcel parcel) {
        String strZzq = null;
        boolean zZzc = false;
        int iZzcl = zza.zzcl(parcel);
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        int iZzg = 0;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 1000:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new VideoConfiguration(iZzg3, iZzg2, iZzg, strZzq4, strZzq3, strZzq2, strZzq, zZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzsb, reason: merged with bridge method [inline-methods] */
    public VideoConfiguration[] newArray(int i) {
        return new VideoConfiguration[i];
    }
}
