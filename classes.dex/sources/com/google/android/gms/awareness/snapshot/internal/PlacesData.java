package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.places.PlaceLikelihood;
import com.google.android.gms.location.places.internal.PlaceLikelihoodEntity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlacesData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PlacesData> CREATOR = new zzf();
    private final ArrayList<PlaceLikelihoodEntity> fM;
    private final int mVersionCode;

    PlacesData(int i, ArrayList<PlaceLikelihoodEntity> arrayList) {
        this.mVersionCode = i;
        this.fM = arrayList;
    }

    public List<PlaceLikelihood> getPlaceLikelihoods() {
        return this.fM;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    ArrayList<PlaceLikelihoodEntity> zzagv() {
        return this.fM;
    }
}
