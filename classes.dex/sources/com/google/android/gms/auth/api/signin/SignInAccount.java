package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public class SignInAccount extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zzc();

    @Deprecated
    String dG;
    private GoogleSignInAccount ea;
    final int versionCode;

    @Deprecated
    String zzcvm;

    SignInAccount(int i, String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.versionCode = i;
        this.ea = googleSignInAccount;
        this.dG = zzab.zzh(str, "8.3 and 8.4 SDKs require non-null email");
        this.zzcvm = zzab.zzh(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public GoogleSignInAccount zzafw() {
        return this.ea;
    }
}
