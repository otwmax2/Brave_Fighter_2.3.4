package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class MostRecentGameInfoEntityCreator implements Parcelable.Creator<MostRecentGameInfoEntity> {
    static void zza(MostRecentGameInfoEntity mostRecentGameInfoEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, mostRecentGameInfoEntity.zzbko(), false);
        zzb.zza(parcel, 2, mostRecentGameInfoEntity.zzbkp(), false);
        zzb.zza(parcel, 3, mostRecentGameInfoEntity.zzbkq());
        zzb.zza(parcel, 4, (Parcelable) mostRecentGameInfoEntity.zzbkr(), i, false);
        zzb.zza(parcel, 5, (Parcelable) mostRecentGameInfoEntity.zzbks(), i, false);
        zzb.zza(parcel, 6, (Parcelable) mostRecentGameInfoEntity.zzbkt(), i, false);
        zzb.zzc(parcel, 1000, mostRecentGameInfoEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlj, reason: merged with bridge method [inline-methods] */
    public MostRecentGameInfoEntity createFromParcel(Parcel parcel) {
        Uri uri = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        long jZzi = 0;
        Uri uri2 = null;
        Uri uri3 = null;
        String strZzq = null;
        String strZzq2 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    uri3 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 5:
                    uri2 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 6:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
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
        return new MostRecentGameInfoEntity(iZzg, strZzq2, strZzq, jZzi, uri3, uri2, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrb, reason: merged with bridge method [inline-methods] */
    public MostRecentGameInfoEntity[] newArray(int i) {
        return new MostRecentGameInfoEntity[i];
    }
}
