package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public class ContextFenceRegistrationStub extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ContextFenceRegistrationStub> CREATOR = new zzf();
    private final String BQ;
    private ContextFenceStub BR;
    private final int mVersionCode;

    ContextFenceRegistrationStub(int i, String str, ContextFenceStub contextFenceStub) {
        this.mVersionCode = i;
        this.BQ = str;
        this.BR = contextFenceStub;
    }

    public ContextFenceRegistrationStub(String str, ContextFenceStub contextFenceStub) {
        this(1, zzab.zzhs(str), (ContextFenceStub) zzab.zzaa(contextFenceStub));
    }

    public static ContextFenceRegistrationStub zza(String str, ContextFenceStub contextFenceStub) {
        return new ContextFenceRegistrationStub(str, contextFenceStub);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContextFenceRegistrationStub) {
            return TextUtils.equals(zzawz(), ((ContextFenceRegistrationStub) obj).zzawz());
        }
        return false;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.BQ);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public String zzawz() {
        return this.BQ;
    }

    public ContextFenceStub zzaxa() {
        return this.BR;
    }
}
