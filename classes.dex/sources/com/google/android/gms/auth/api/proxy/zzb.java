package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable.Creator<ProxyRequest> {
    static void zza(ProxyRequest proxyRequest, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, proxyRequest.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, proxyRequest.httpMethod);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, proxyRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyRequest.dv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaq, reason: merged with bridge method [inline-methods] */
    public ProxyRequest createFromParcel(Parcel parcel) {
        int iZzg = 0;
        Bundle bundleZzs = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        long jZzi = 0;
        byte[] bArrZzt = null;
        String strZzq = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    bArrZzt = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, iZzck);
                    break;
                case 5:
                    bundleZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzck);
                    break;
                case 1000:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ProxyRequest(iZzg2, strZzq, iZzg, jZzi, bArrZzt, bundleZzs);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzcy, reason: merged with bridge method [inline-methods] */
    public ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
