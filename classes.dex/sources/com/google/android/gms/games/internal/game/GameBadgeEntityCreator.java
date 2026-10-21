package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class GameBadgeEntityCreator implements Parcelable.Creator<GameBadgeEntity> {
    static void zza(GameBadgeEntity gameBadgeEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, gameBadgeEntity.getType());
        zzb.zza(parcel, 2, gameBadgeEntity.getTitle(), false);
        zzb.zza(parcel, 3, gameBadgeEntity.getDescription(), false);
        zzb.zza(parcel, 4, (Parcelable) gameBadgeEntity.getIconImageUri(), i, false);
        zzb.zzc(parcel, 1000, gameBadgeEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlh, reason: merged with bridge method [inline-methods] */
    public GameBadgeEntity createFromParcel(Parcel parcel) {
        int iZzg = 0;
        Uri uri = null;
        int iZzcl = zza.zzcl(parcel);
        String strZzq = null;
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
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
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
        return new GameBadgeEntity(iZzg2, iZzg, strZzq2, strZzq, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqw, reason: merged with bridge method [inline-methods] */
    public GameBadgeEntity[] newArray(int i) {
        return new GameBadgeEntity[i];
    }
}
