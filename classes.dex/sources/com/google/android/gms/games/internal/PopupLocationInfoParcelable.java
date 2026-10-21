package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.games.internal.PopupManager;

/* JADX INFO: loaded from: classes.dex */
public final class PopupLocationInfoParcelable extends AbstractSafeParcelable {
    public static final PopupLocationInfoParcelableCreator CREATOR = new PopupLocationInfoParcelableCreator();
    private final Bundle Uo;
    private final IBinder Up;
    private final int mVersionCode;

    PopupLocationInfoParcelable(int i, Bundle bundle, IBinder iBinder) {
        this.mVersionCode = i;
        this.Uo = bundle;
        this.Up = iBinder;
    }

    public PopupLocationInfoParcelable(PopupManager.PopupLocationInfo popupLocationInfo) {
        this.mVersionCode = 1;
        this.Uo = popupLocationInfo.zzbjn();
        this.Up = popupLocationInfo.Us;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public IBinder getWindowToken() {
        return this.Up;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PopupLocationInfoParcelableCreator.zza(this, parcel, i);
    }

    public Bundle zzbjn() {
        return this.Uo;
    }
}
