package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionInfoCreator implements Parcelable.Creator<ConnectionInfo> {
    static void zza(ConnectionInfo connectionInfo, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, connectionInfo.zzbhz(), false);
        zzb.zzc(parcel, 2, connectionInfo.zzbia());
        zzb.zzc(parcel, 1000, connectionInfo.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzle, reason: merged with bridge method [inline-methods] */
    public ConnectionInfo createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = zza.zzcl(parcel);
        String strZzq = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    iZzg = zza.zzg(parcel, iZzck);
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
        return new ConnectionInfo(iZzg2, strZzq, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqn, reason: merged with bridge method [inline-methods] */
    public ConnectionInfo[] newArray(int i) {
        return new ConnectionInfo[i];
    }
}
