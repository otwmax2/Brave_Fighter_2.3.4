package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ValidateAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new zzaj();
    final int mVersionCode;
    private final Scope[] ro;
    final IBinder wY;
    private final int ze;
    private final Bundle zf;
    private final String zg;

    ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.mVersionCode = i;
        this.ze = i2;
        this.wY = iBinder;
        this.ro = scopeArr;
        this.zf = bundle;
        this.zg = str;
    }

    public String getCallingPackage() {
        return this.zg;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaj.zza(this, parcel, i);
    }

    public Scope[] zzati() {
        return this.ro;
    }

    public int zzatk() {
        return this.ze;
    }

    public Bundle zzatl() {
        return this.zf;
    }
}
