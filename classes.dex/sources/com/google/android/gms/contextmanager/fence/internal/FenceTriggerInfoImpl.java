package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FenceTriggerInfoImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FenceTriggerInfoImpl> CREATOR = new zzk();
    private final boolean Ca;
    private final int mVersionCode;
    private final String zzaxn;

    FenceTriggerInfoImpl(int i, boolean z, String str) {
        this.mVersionCode = i;
        this.Ca = z;
        this.zzaxn = str;
    }

    public String getKey() {
        return this.zzaxn;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public boolean zzaxg() {
        return this.Ca;
    }
}
