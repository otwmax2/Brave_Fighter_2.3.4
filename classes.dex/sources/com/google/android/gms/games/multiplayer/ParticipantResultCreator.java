package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class ParticipantResultCreator implements Parcelable.Creator<ParticipantResult> {
    static void zza(ParticipantResult participantResult, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, participantResult.getParticipantId(), false);
        zzb.zzc(parcel, 2, participantResult.getResult());
        zzb.zzc(parcel, 3, participantResult.getPlacing());
        zzb.zzc(parcel, 1000, participantResult.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlp, reason: merged with bridge method [inline-methods] */
    public ParticipantResult createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = zza.zzcl(parcel);
        String strZzq = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    iZzg = zza.zzg(parcel, iZzck);
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
        return new ParticipantResult(iZzg3, strZzq, iZzg2, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrj, reason: merged with bridge method [inline-methods] */
    public ParticipantResult[] newArray(int i) {
        return new ParticipantResult[i];
    }
}
