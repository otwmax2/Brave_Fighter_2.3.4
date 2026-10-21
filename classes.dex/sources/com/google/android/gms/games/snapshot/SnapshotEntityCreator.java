package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class SnapshotEntityCreator implements Parcelable.Creator<SnapshotEntity> {
    static void zza(SnapshotEntity snapshotEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) snapshotEntity.getMetadata(), i, false);
        zzb.zza(parcel, 3, (Parcelable) snapshotEntity.getSnapshotContents(), i, false);
        zzb.zzc(parcel, 1000, snapshotEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlx, reason: merged with bridge method [inline-methods] */
    public SnapshotEntity createFromParcel(Parcel parcel) {
        SnapshotMetadataEntity snapshotMetadataEntity;
        int iZzg;
        SnapshotContentsEntity snapshotContentsEntity;
        SnapshotContentsEntity snapshotContentsEntity2 = null;
        int iZzcl = zza.zzcl(parcel);
        int i = 0;
        SnapshotMetadataEntity snapshotMetadataEntity2 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    SnapshotMetadataEntity snapshotMetadataEntity3 = (SnapshotMetadataEntity) zza.zza(parcel, iZzck, SnapshotMetadataEntity.CREATOR);
                    iZzg = i;
                    snapshotContentsEntity = snapshotContentsEntity2;
                    snapshotMetadataEntity = snapshotMetadataEntity3;
                    break;
                case 3:
                    snapshotContentsEntity = (SnapshotContentsEntity) zza.zza(parcel, iZzck, SnapshotContentsEntity.CREATOR);
                    snapshotMetadataEntity = snapshotMetadataEntity2;
                    iZzg = i;
                    break;
                case 1000:
                    SnapshotContentsEntity snapshotContentsEntity3 = snapshotContentsEntity2;
                    snapshotMetadataEntity = snapshotMetadataEntity2;
                    iZzg = zza.zzg(parcel, iZzck);
                    snapshotContentsEntity = snapshotContentsEntity3;
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    snapshotContentsEntity = snapshotContentsEntity2;
                    snapshotMetadataEntity = snapshotMetadataEntity2;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            snapshotMetadataEntity2 = snapshotMetadataEntity;
            snapshotContentsEntity2 = snapshotContentsEntity;
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new SnapshotEntity(i, snapshotMetadataEntity2, snapshotContentsEntity2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrs, reason: merged with bridge method [inline-methods] */
    public SnapshotEntity[] newArray(int i) {
        return new SnapshotEntity[i];
    }
}
