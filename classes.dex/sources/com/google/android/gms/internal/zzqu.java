package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public class zzqu extends zzps {
    private TaskCompletionSource<Void> sq;

    private zzqu(zzqp zzqpVar) {
        super(zzqpVar);
        this.sq = new TaskCompletionSource<>();
        this.va.zza("GmsAvailabilityHelper", this);
    }

    public static zzqu zzu(Activity activity) {
        zzqp zzqpVarZzs = zzs(activity);
        zzqu zzquVar = (zzqu) zzqpVarZzs.zza("GmsAvailabilityHelper", zzqu.class);
        if (zzquVar == null) {
            return new zzqu(zzqpVarZzs);
        }
        if (!zzquVar.sq.getTask().isComplete()) {
            return zzquVar;
        }
        zzquVar.sq = new TaskCompletionSource<>();
        return zzquVar;
    }

    public Task<Void> getTask() {
        return this.sq.getTask();
    }

    @Override // com.google.android.gms.internal.zzps, com.google.android.gms.internal.zzqo
    public void onStop() {
        super.onStop();
        this.sq.setException(new CancellationException());
    }

    @Override // com.google.android.gms.internal.zzps
    protected void zza(ConnectionResult connectionResult, int i) {
        this.sq.setException(new Exception());
    }

    @Override // com.google.android.gms.internal.zzps
    protected void zzaol() {
        int iIsGooglePlayServicesAvailable = this.rX.isGooglePlayServicesAvailable(this.va.zzaqp());
        if (iIsGooglePlayServicesAvailable == 0) {
            this.sq.setResult((Object) null);
        } else {
            zzk(new ConnectionResult(iIsGooglePlayServicesAvailable, null));
        }
    }

    public void zzk(ConnectionResult connectionResult) {
        zzb(connectionResult, 0);
    }
}
