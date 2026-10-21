package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class SnapshotMetadataEntityCreator implements Parcelable.Creator<SnapshotMetadataEntity> {
    static void zza(SnapshotMetadataEntity snapshotMetadataEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) snapshotMetadataEntity.getGame(), i, false);
        zzb.zza(parcel, 2, (Parcelable) snapshotMetadataEntity.getOwner(), i, false);
        zzb.zza(parcel, 3, snapshotMetadataEntity.getSnapshotId(), false);
        zzb.zza(parcel, 5, (Parcelable) snapshotMetadataEntity.getCoverImageUri(), i, false);
        zzb.zza(parcel, 6, snapshotMetadataEntity.getCoverImageUrl(), false);
        zzb.zza(parcel, 7, snapshotMetadataEntity.getTitle(), false);
        zzb.zzc(parcel, 1000, snapshotMetadataEntity.getVersionCode());
        zzb.zza(parcel, 8, snapshotMetadataEntity.getDescription(), false);
        zzb.zza(parcel, 9, snapshotMetadataEntity.getLastModifiedTimestamp());
        zzb.zza(parcel, 10, snapshotMetadataEntity.getPlayedTime());
        zzb.zza(parcel, 11, snapshotMetadataEntity.getCoverImageAspectRatio());
        zzb.zza(parcel, 12, snapshotMetadataEntity.getUniqueName(), false);
        zzb.zza(parcel, 13, snapshotMetadataEntity.hasChangePending());
        zzb.zza(parcel, 14, snapshotMetadataEntity.getProgressValue());
        zzb.zza(parcel, 15, snapshotMetadataEntity.getDeviceName(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlz, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        String strZzq = null;
        Uri uri = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        long jZzi = 0;
        long jZzi2 = 0;
        float fZzl = 0.0f;
        String strZzq5 = null;
        boolean zZzc = false;
        long jZzi3 = 0;
        String strZzq6 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    gameEntity = (GameEntity) zza.zza(parcel, iZzck, GameEntity.CREATOR);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 3:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 6:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 10:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 11:
                    fZzl = zza.zzl(parcel, iZzck);
                    break;
                case 12:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 13:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 14:
                    jZzi3 = zza.zzi(parcel, iZzck);
                    break;
                case 15:
                    strZzq6 = zza.zzq(parcel, iZzck);
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
        return new SnapshotMetadataEntity(iZzg, gameEntity, playerEntity, strZzq, uri, strZzq2, strZzq3, strZzq4, jZzi, jZzi2, fZzl, strZzq5, zZzc, jZzi3, strZzq6);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzru, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataEntity[] newArray(int i) {
        return new SnapshotMetadataEntity[i];
    }
}
