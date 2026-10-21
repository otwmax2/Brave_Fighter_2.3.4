package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class EventEntityCreator implements Parcelable.Creator<EventEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(EventEntity eventEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, eventEntity.getEventId(), false);
        zzb.zza(parcel, 2, eventEntity.getName(), false);
        zzb.zza(parcel, 3, eventEntity.getDescription(), false);
        zzb.zza(parcel, 4, (Parcelable) eventEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 5, eventEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 6, (Parcelable) eventEntity.getPlayer(), i, false);
        zzb.zza(parcel, 7, eventEntity.getValue());
        zzb.zzc(parcel, 1000, eventEntity.getVersionCode());
        zzb.zza(parcel, 8, eventEntity.getFormattedValue(), false);
        zzb.zza(parcel, 9, eventEntity.isVisible());
        zzb.zzaj(parcel, iZzcm);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public EventEntity createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        String strZzq = null;
        int iZzcl = zza.zzcl(parcel);
        long jZzi = 0;
        PlayerEntity playerEntity = null;
        String strZzq2 = null;
        Uri uri = null;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 5:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 7:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 8:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    zZzc = zza.zzc(parcel, iZzck);
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
        return new EventEntity(iZzg, strZzq5, strZzq4, strZzq3, uri, strZzq2, playerEntity, jZzi, strZzq, zZzc);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public EventEntity[] newArray(int i) {
        return new EventEntity[i];
    }
}
