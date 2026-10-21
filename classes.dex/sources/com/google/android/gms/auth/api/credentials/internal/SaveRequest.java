package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class SaveRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SaveRequest> CREATOR = new zzl();
    private final Credential dn;
    final int mVersionCode;

    SaveRequest(int i, Credential credential) {
        this.mVersionCode = i;
        this.dn = credential;
    }

    public SaveRequest(Credential credential) {
        this(1, credential);
    }

    public Credential getCredential() {
        return this.dn;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
