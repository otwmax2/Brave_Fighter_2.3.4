package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zze implements Parcelable.Creator<TokenData> {
    static void zza(TokenData tokenData, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, tokenData.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, tokenData.getToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, tokenData.zzaew(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, tokenData.zzaex());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, tokenData.zzaey());
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 6, tokenData.zzaez(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public TokenData createFromParcel(Parcel parcel) {
        ArrayList<String> arrayListZzae = null;
        boolean zZzc = false;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        boolean zZzc2 = false;
        Long lZzj = null;
        String strZzq = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    lZzj = com.google.android.gms.common.internal.safeparcel.zza.zzj(parcel, iZzck);
                    break;
                case 4:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 5:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 6:
                    arrayListZzae = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new TokenData(iZzg, strZzq, lZzj, zZzc2, zZzc, arrayListZzae);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzcn, reason: merged with bridge method [inline-methods] */
    public TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}
