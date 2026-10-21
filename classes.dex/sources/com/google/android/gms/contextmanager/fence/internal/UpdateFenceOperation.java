package com.google.android.gms.contextmanager.fence.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.contextmanager.fence.internal.zzm;
import com.google.android.gms.internal.zzbv;

/* JADX INFO: loaded from: classes.dex */
public class UpdateFenceOperation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UpdateFenceOperation> CREATOR = new zzq();
    private final String BX;
    private final ContextFenceRegistrationStub Cd;
    private zzm Ce;
    private final com.google.android.gms.awareness.fence.zza Cf;
    private final long Cg;
    private final int it;
    private final PendingIntent mPendingIntent;
    private final int mVersionCode;
    private final long zzcte;

    UpdateFenceOperation(int i, int i2, ContextFenceRegistrationStub contextFenceRegistrationStub, IBinder iBinder, PendingIntent pendingIntent, String str, long j, long j2) {
        this.mVersionCode = i;
        this.it = i2;
        this.Cd = contextFenceRegistrationStub;
        this.Ce = iBinder == null ? null : zzm.zza.zzee(iBinder);
        this.Cf = null;
        this.mPendingIntent = pendingIntent;
        this.BX = str;
        this.Cg = j;
        this.zzcte = j2;
    }

    private UpdateFenceOperation(int i, ContextFenceRegistrationStub contextFenceRegistrationStub, com.google.android.gms.awareness.fence.zza zzaVar, PendingIntent pendingIntent, String str, long j, long j2) {
        this.mVersionCode = 1;
        this.it = i;
        this.Cd = contextFenceRegistrationStub;
        this.Ce = null;
        this.Cf = zzaVar;
        this.mPendingIntent = pendingIntent;
        this.BX = str;
        this.Cg = j;
        this.zzcte = j2;
    }

    public static final UpdateFenceOperation zza(PendingIntent pendingIntent) {
        return new UpdateFenceOperation(4, null, null, pendingIntent, null, -1L, -1L);
    }

    public static final UpdateFenceOperation zza(String str, ContextFenceStub contextFenceStub, PendingIntent pendingIntent) {
        return new UpdateFenceOperation(2, ContextFenceRegistrationStub.zza(str, contextFenceStub), null, pendingIntent, null, -1L, -1L);
    }

    public static final UpdateFenceOperation zzie(String str) {
        return new UpdateFenceOperation(5, null, null, null, str, -1L, -1L);
    }

    public String getFenceKey() {
        return this.BX;
    }

    public int getType() {
        return this.it;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    public PendingIntent zzaoi() {
        return this.mPendingIntent;
    }

    IBinder zzaxk() {
        if (this.Ce == null) {
            return null;
        }
        return this.Ce.asBinder();
    }

    public ContextFenceRegistrationStub zzaxl() {
        return this.Cd;
    }

    public long zzaxm() {
        return this.Cg;
    }

    public long zzaxn() {
        return this.zzcte;
    }

    void zzb(zzbv<com.google.android.gms.awareness.fence.zza, zze> zzbvVar) {
        if (this.Ce != null || this.Cf == null) {
            return;
        }
        this.Ce = (zzm) zzbvVar.zzc(this.Cf);
    }
}
