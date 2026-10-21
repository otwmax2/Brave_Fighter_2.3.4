package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable.Creator<CredentialRequest> {
    static void zza(CredentialRequest credentialRequest, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, credentialRequest.isPasswordLoginSupported());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, credentialRequest.getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) credentialRequest.getCredentialPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) credentialRequest.getCredentialHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, credentialRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzai, reason: merged with bridge method [inline-methods] */
    public CredentialRequest createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        CredentialPickerConfig credentialPickerConfig = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        CredentialPickerConfig credentialPickerConfig2 = null;
        String[] strArrZzac = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 2:
                    strArrZzac = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, iZzck);
                    break;
                case 3:
                    credentialPickerConfig2 = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, CredentialPickerConfig.CREATOR);
                    break;
                case 4:
                    credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, CredentialPickerConfig.CREATOR);
                    break;
                case 1000:
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
        return new CredentialRequest(iZzg, zZzc, strArrZzac, credentialPickerConfig2, credentialPickerConfig);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzcq, reason: merged with bridge method [inline-methods] */
    public CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}
