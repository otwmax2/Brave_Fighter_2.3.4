package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<Credential> {
    static void zza(Credential credential, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, credential.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, credential.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) credential.getProfilePictureUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, credential.getIdTokens(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, credential.getPassword(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, credential.getAccountType(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, credential.getGeneratedPassword(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, credential.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, credential.zzafd(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
    public Credential createFromParcel(Parcel parcel) {
        String strZzq = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        ArrayList arrayListZzc = null;
        Uri uri = null;
        String strZzq5 = null;
        String strZzq6 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    strZzq6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 4:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, IdToken.CREATOR);
                    break;
                case 5:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
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
        return new Credential(iZzg, strZzq6, strZzq5, uri, arrayListZzc, strZzq4, strZzq3, strZzq2, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzco, reason: merged with bridge method [inline-methods] */
    public Credential[] newArray(int i) {
        return new Credential[i];
    }
}
