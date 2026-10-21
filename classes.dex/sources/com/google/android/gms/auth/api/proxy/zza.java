package com.google.android.gms.auth.api.proxy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<ProxyGrpcRequest> {
    static void zza(ProxyGrpcRequest proxyGrpcRequest, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, proxyGrpcRequest.hostname, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, proxyGrpcRequest.port);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, proxyGrpcRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyGrpcRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyGrpcRequest.method, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyGrpcRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzap, reason: merged with bridge method [inline-methods] */
    public ProxyGrpcRequest createFromParcel(Parcel parcel) {
        int iZzg = 0;
        String strZzq = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        long jZzi = 0;
        byte[] bArrZzt = null;
        String strZzq2 = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
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
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
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
        return new ProxyGrpcRequest(iZzg2, strZzq2, iZzg, jZzi, bArrZzt, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzcx, reason: merged with bridge method [inline-methods] */
    public ProxyGrpcRequest[] newArray(int i) {
        return new ProxyGrpcRequest[i];
    }
}
