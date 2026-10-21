package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class QuestEntityCreator implements Parcelable.Creator<QuestEntity> {
    static void zza(QuestEntity questEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) questEntity.getGame(), i, false);
        zzb.zza(parcel, 2, questEntity.getQuestId(), false);
        zzb.zza(parcel, 3, questEntity.getAcceptedTimestamp());
        zzb.zza(parcel, 4, (Parcelable) questEntity.getBannerImageUri(), i, false);
        zzb.zza(parcel, 5, questEntity.getBannerImageUrl(), false);
        zzb.zza(parcel, 6, questEntity.getDescription(), false);
        zzb.zza(parcel, 7, questEntity.getEndTimestamp());
        zzb.zzc(parcel, 1000, questEntity.getVersionCode());
        zzb.zza(parcel, 8, questEntity.getLastUpdatedTimestamp());
        zzb.zza(parcel, 9, (Parcelable) questEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 10, questEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 12, questEntity.getName(), false);
        zzb.zza(parcel, 13, questEntity.zzblj());
        zzb.zza(parcel, 14, questEntity.getStartTimestamp());
        zzb.zzc(parcel, 15, questEntity.getState());
        zzb.zzc(parcel, 16, questEntity.getType());
        zzb.zzc(parcel, 17, questEntity.zzbli(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlu, reason: merged with bridge method [inline-methods] */
    public QuestEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        GameEntity gameEntity = null;
        String strZzq = null;
        long jZzi = 0;
        Uri uri = null;
        String strZzq2 = null;
        String strZzq3 = null;
        long jZzi2 = 0;
        long jZzi3 = 0;
        Uri uri2 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        long jZzi4 = 0;
        long jZzi5 = 0;
        int iZzg2 = 0;
        int iZzg3 = 0;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    gameEntity = (GameEntity) zza.zza(parcel, iZzck, GameEntity.CREATOR);
                    break;
                case 2:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 5:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 8:
                    jZzi3 = zza.zzi(parcel, iZzck);
                    break;
                case 9:
                    uri2 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 10:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 12:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 13:
                    jZzi4 = zza.zzi(parcel, iZzck);
                    break;
                case 14:
                    jZzi5 = zza.zzi(parcel, iZzck);
                    break;
                case 15:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 16:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 17:
                    arrayListZzc = zza.zzc(parcel, iZzck, MilestoneEntity.CREATOR);
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
        return new QuestEntity(iZzg, gameEntity, strZzq, jZzi, uri, strZzq2, strZzq3, jZzi2, jZzi3, uri2, strZzq4, strZzq5, jZzi4, jZzi5, iZzg2, iZzg3, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzro, reason: merged with bridge method [inline-methods] */
    public QuestEntity[] newArray(int i) {
        return new QuestEntity[i];
    }
}
