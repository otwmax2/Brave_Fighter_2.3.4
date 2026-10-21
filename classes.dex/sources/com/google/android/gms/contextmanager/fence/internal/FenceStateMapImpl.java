package com.google.android.gms.contextmanager.fence.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class FenceStateMapImpl extends AbstractSafeParcelable implements FenceStateMap {
    public static final Parcelable.Creator<FenceStateMapImpl> CREATOR = new zzj();
    public final Map<String, FenceStateImpl> BZ = new HashMap();
    private final int mVersionCode;

    FenceStateMapImpl(int i, Bundle bundle) {
        this.mVersionCode = i;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.BZ.put(str, (FenceStateImpl) com.google.android.gms.common.internal.safeparcel.zzc.zza(bundle.getByteArray(str), FenceStateImpl.CREATOR));
            }
        }
    }

    @Override // com.google.android.gms.awareness.fence.FenceStateMap
    public Set<String> getFenceKeys() {
        return this.BZ.keySet();
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    Bundle zzaxf() {
        if (this.BZ == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, FenceStateImpl> entry : this.BZ.entrySet()) {
            bundle.putByteArray(entry.getKey(), com.google.android.gms.common.internal.safeparcel.zzc.zza(entry.getValue()));
        }
        return bundle;
    }

    @Override // com.google.android.gms.awareness.fence.FenceStateMap
    /* JADX INFO: renamed from: zzid, reason: merged with bridge method [inline-methods] */
    public FenceStateImpl getFenceState(String str) {
        if (this.BZ.containsKey(str)) {
            return this.BZ.get(str);
        }
        return null;
    }
}
