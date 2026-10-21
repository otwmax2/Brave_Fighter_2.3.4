package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class VideoEntityCreator implements Parcelable.Creator<VideoEntity> {
    static void zza(VideoEntity videoEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, videoEntity.getDuration());
        zzb.zza(parcel, 2, videoEntity.zzblq(), false);
        zzb.zza(parcel, 3, videoEntity.getFileSize());
        zzb.zza(parcel, 4, videoEntity.getStartTime());
        zzb.zza(parcel, 5, videoEntity.getPackageName(), false);
        zzb.zzc(parcel, 1000, videoEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzme, reason: merged with bridge method [inline-methods] */
    public VideoEntity createFromParcel(Parcel parcel) {
        long jZzi = 0;
        String strZzq = null;
        int iZzg = 0;
        int iZzcl = zza.zzcl(parcel);
        long jZzi2 = 0;
        String strZzq2 = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 5:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 1000:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new VideoEntity(iZzg2, iZzg, strZzq2, jZzi2, jZzi, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzsc, reason: merged with bridge method [inline-methods] */
    public VideoEntity[] newArray(int i) {
        return new VideoEntity[i];
    }
}
