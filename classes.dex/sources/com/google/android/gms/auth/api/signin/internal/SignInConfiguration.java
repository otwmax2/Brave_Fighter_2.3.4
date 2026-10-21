package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class SignInConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zzj();
    private final String em;
    private GoogleSignInOptions en;
    final int versionCode;

    SignInConfiguration(int i, String str, GoogleSignInOptions googleSignInOptions) {
        this.versionCode = i;
        this.em = zzab.zzhs(str);
        this.en = googleSignInOptions;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this(3, str, googleSignInOptions);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
                if (this.em.equals(signInConfiguration.zzagg()) && (this.en != null ? this.en.equals(signInConfiguration.zzagh()) : signInConfiguration.zzagh() == null)) {
                    z = true;
                }
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return new zze().zzr(this.em).zzr(this.en).zzagc();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public String zzagg() {
        return this.em;
    }

    public GoogleSignInOptions zzagh() {
        return this.en;
    }
}
