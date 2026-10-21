package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zze implements Parcelable.Creator<ContextManagerClientInfo> {
    static void zza(ContextManagerClientInfo contextManagerClientInfo, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, contextManagerClientInfo.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, contextManagerClientInfo.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, contextManagerClientInfo.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, contextManagerClientInfo.getUid());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, contextManagerClientInfo.zzagm(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, contextManagerClientInfo.zzaxx());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, contextManagerClientInfo.zzagn());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, contextManagerClientInfo.zzago(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, contextManagerClientInfo.zzagp(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 10, contextManagerClientInfo.zzagq());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdp, reason: merged with bridge method [inline-methods] */
    public ContextManagerClientInfo createFromParcel(Parcel parcel) {
        String strZzq = null;
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        String strZzq2 = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        String strZzq3 = null;
        int iZzg4 = 0;
        String strZzq4 = null;
        String strZzq5 = null;
        int iZzg5 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    iZzg4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 7:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 8:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 10:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ContextManagerClientInfo(iZzg5, strZzq5, strZzq4, iZzg4, strZzq3, iZzg3, iZzg2, strZzq2, strZzq, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhv, reason: merged with bridge method [inline-methods] */
    public ContextManagerClientInfo[] newArray(int i) {
        return new ContextManagerClientInfo[i];
    }
}
