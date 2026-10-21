package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable.Creator<SignInAccount> {
    static void zza(SignInAccount signInAccount, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, signInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, signInAccount.dG, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) signInAccount.zzafw(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, signInAccount.zzcvm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzau, reason: merged with bridge method [inline-methods] */
    public SignInAccount createFromParcel(Parcel parcel) {
        String strZzq;
        GoogleSignInAccount googleSignInAccount;
        String strZzq2;
        int iZzg;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int i = 0;
        String str = "";
        GoogleSignInAccount googleSignInAccount2 = null;
        String str2 = "";
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    String str3 = str2;
                    googleSignInAccount = googleSignInAccount2;
                    strZzq2 = str;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    strZzq = str3;
                    break;
                case 2:
                case 3:
                case 5:
                case 6:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    strZzq = str2;
                    googleSignInAccount = googleSignInAccount2;
                    strZzq2 = str;
                    iZzg = i;
                    break;
                case 4:
                    iZzg = i;
                    GoogleSignInAccount googleSignInAccount3 = googleSignInAccount2;
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    strZzq = str2;
                    googleSignInAccount = googleSignInAccount3;
                    break;
                case 7:
                    strZzq2 = str;
                    iZzg = i;
                    String str4 = str2;
                    googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, GoogleSignInAccount.CREATOR);
                    strZzq = str4;
                    break;
                case 8:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    googleSignInAccount = googleSignInAccount2;
                    strZzq2 = str;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            str = strZzq2;
            googleSignInAccount2 = googleSignInAccount;
            str2 = strZzq;
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new SignInAccount(i, str, googleSignInAccount2, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdc, reason: merged with bridge method [inline-methods] */
    public SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
