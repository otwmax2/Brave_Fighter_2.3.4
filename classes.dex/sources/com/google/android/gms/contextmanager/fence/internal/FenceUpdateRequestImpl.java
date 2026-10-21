package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.zzbv;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class FenceUpdateRequestImpl extends AbstractSafeParcelable implements FenceUpdateRequest {
    public static final Parcelable.Creator<FenceUpdateRequestImpl> CREATOR = new zzl();
    private final ArrayList<UpdateFenceOperation> fE;
    private final int mVersionCode;

    @Deprecated
    public FenceUpdateRequestImpl() {
        this(new ArrayList());
    }

    FenceUpdateRequestImpl(int i, ArrayList<UpdateFenceOperation> arrayList) {
        this.mVersionCode = i;
        this.fE = arrayList;
    }

    public FenceUpdateRequestImpl(ArrayList<UpdateFenceOperation> arrayList) {
        this(1, arrayList);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }

    public void zza(zzbv<com.google.android.gms.awareness.fence.zza, zze> zzbvVar) {
        Iterator<UpdateFenceOperation> it = this.fE.iterator();
        while (it.hasNext()) {
            it.next().zzb(zzbvVar);
        }
    }

    public ArrayList<UpdateFenceOperation> zzaxh() {
        return this.fE;
    }
}
