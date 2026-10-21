package com.google.android.gms.contextmanager.fence.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceState;
import com.google.android.gms.internal.zzbu;

/* JADX INFO: loaded from: classes.dex */
public class FenceStateImpl extends FenceState {
    public static final Parcelable.Creator<FenceStateImpl> CREATOR = new zzi();
    private final long BW;
    private final String BX;
    private final int BY;
    private final int mVersionCode;
    private final int zzbry;

    FenceStateImpl(int i, int i2, long j, String str, int i3) {
        this.mVersionCode = i;
        this.zzbry = i2;
        this.BW = j;
        this.BX = str;
        this.BY = i3;
    }

    public FenceStateImpl(int i, long j, String str, int i2) {
        this(1, i, j, str, i2);
    }

    public static FenceState extract(Intent intent) {
        return new FenceStateImpl(zzh(intent.getIntExtra("context_fence_current_state", 0), "FenceState"), intent.getLongExtra("context_fence_last_updated_time", 0L), intent.getStringExtra("context_fence_key"), zzh(intent.getIntExtra("context_fence_previous_state", 0), "FenceState"));
    }

    public static int zzh(int i, String str) {
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            default:
                zzbu.zzd(str, new StringBuilder(43).append("Invalid fence evaluation state: ").append(i).toString());
                break;
        }
        return 0;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public int getCurrentState() {
        return this.zzbry;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public String getFenceKey() {
        return this.BX;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public long getLastFenceUpdateTimeMillis() {
        return this.BW;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public int getPreviousState() {
        return this.BY;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
