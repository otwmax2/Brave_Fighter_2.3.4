package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class SnapshotMetadataChangeCreator implements Parcelable.Creator<SnapshotMetadataChangeEntity> {
    static void zza(SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, snapshotMetadataChangeEntity.getDescription(), false);
        zzb.zza(parcel, 2, snapshotMetadataChangeEntity.getPlayedTimeMillis(), false);
        zzb.zza(parcel, 4, (Parcelable) snapshotMetadataChangeEntity.getCoverImageUri(), i, false);
        zzb.zza(parcel, 5, (Parcelable) snapshotMetadataChangeEntity.zzbll(), i, false);
        zzb.zza(parcel, 6, snapshotMetadataChangeEntity.getProgressValue(), false);
        zzb.zzc(parcel, 1000, snapshotMetadataChangeEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzly, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataChangeEntity createFromParcel(Parcel parcel) {
        Long lZzj = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        Uri uri = null;
        BitmapTeleporter bitmapTeleporter = null;
        Long lZzj2 = null;
        String strZzq = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    lZzj2 = zza.zzj(parcel, iZzck);
                    break;
                case 4:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 5:
                    bitmapTeleporter = (BitmapTeleporter) zza.zza(parcel, iZzck, BitmapTeleporter.CREATOR);
                    break;
                case 6:
                    lZzj = zza.zzj(parcel, iZzck);
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
        return new SnapshotMetadataChangeEntity(iZzg, strZzq, lZzj2, bitmapTeleporter, uri, lZzj);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrt, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataChangeEntity[] newArray(int i) {
        return new SnapshotMetadataChangeEntity[i];
    }
}
