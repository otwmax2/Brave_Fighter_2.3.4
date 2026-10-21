package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;

/* JADX INFO: loaded from: classes.dex */
public class ExperienceEventEntityCreator implements Parcelable.Creator<ExperienceEventEntity> {
    static void zza(ExperienceEventEntity experienceEventEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, experienceEventEntity.zzbjt(), false);
        zzb.zza(parcel, 2, (Parcelable) experienceEventEntity.getGame(), i, false);
        zzb.zza(parcel, 3, experienceEventEntity.zzbju(), false);
        zzb.zza(parcel, 4, experienceEventEntity.zzbjv(), false);
        zzb.zza(parcel, 5, experienceEventEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 6, (Parcelable) experienceEventEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 7, experienceEventEntity.zzbjw());
        zzb.zzc(parcel, 1000, experienceEventEntity.getVersionCode());
        zzb.zza(parcel, 8, experienceEventEntity.zzbjx());
        zzb.zza(parcel, 9, experienceEventEntity.zzbjy());
        zzb.zzc(parcel, 10, experienceEventEntity.getType());
        zzb.zzc(parcel, 11, experienceEventEntity.zzbjz());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlg, reason: merged with bridge method [inline-methods] */
    public ExperienceEventEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        GameEntity gameEntity = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        Uri uri = null;
        long jZzi = 0;
        long jZzi2 = 0;
        long jZzi3 = 0;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    gameEntity = (GameEntity) zza.zza(parcel, iZzck, GameEntity.CREATOR);
                    break;
                case 3:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 7:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 8:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 9:
                    jZzi3 = zza.zzi(parcel, iZzck);
                    break;
                case 10:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 11:
                    iZzg3 = zza.zzg(parcel, iZzck);
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
        return new ExperienceEventEntity(iZzg, strZzq, gameEntity, strZzq2, strZzq3, strZzq4, uri, jZzi, jZzi2, jZzi3, iZzg2, iZzg3);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqu, reason: merged with bridge method [inline-methods] */
    public ExperienceEventEntity[] newArray(int i) {
        return new ExperienceEventEntity[i];
    }
}
