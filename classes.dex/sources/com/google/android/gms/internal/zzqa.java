package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqf;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzqa implements zzqe {
    private final zzqf tm;
    private boolean tn = false;

    public zzqa(zzqf zzqfVar) {
        this.tm = zzqfVar;
    }

    private <A extends Api.zzb> void zzf(zzpr.zza<? extends Result, A> zzaVar) throws DeadObjectException {
        this.tm.sX.ue.zzg(zzaVar);
        Api.zze zzeVarZzb = this.tm.sX.zzb((Api.zzc<?>) zzaVar.zzanp());
        if (!zzeVarZzb.isConnected() && this.tm.un.containsKey(zzaVar.zzanp())) {
            zzaVar.zzz(new Status(17));
            return;
        }
        boolean z = zzeVarZzb instanceof com.google.android.gms.common.internal.zzah;
        Object objZzatj = zzeVarZzb;
        if (z) {
            objZzatj = ((com.google.android.gms.common.internal.zzah) zzeVarZzb).zzatj();
        }
        zzaVar.zzb(objZzatj);
    }

    @Override // com.google.android.gms.internal.zzqe
    public void begin() {
    }

    @Override // com.google.android.gms.internal.zzqe
    public void connect() {
        if (this.tn) {
            this.tn = false;
            this.tm.zza(new zzqf.zza(this) { // from class: com.google.android.gms.internal.zzqa.2
                @Override // com.google.android.gms.internal.zzqf.zza
                public void zzapi() {
                    zzqa.this.tm.ur.zzm(null);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzqe
    public boolean disconnect() {
        if (this.tn) {
            return false;
        }
        if (!this.tm.sX.zzapu()) {
            this.tm.zzi(null);
            return true;
        }
        this.tn = true;
        Iterator<zzrc> it = this.tm.sX.ud.iterator();
        while (it.hasNext()) {
            it.next().zzaqt();
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnectionSuspended(int i) {
        this.tm.zzi(null);
        this.tm.ur.zzc(i, this.tn);
    }

    @Override // com.google.android.gms.internal.zzqe
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    void zzaph() {
        if (this.tn) {
            this.tn = false;
            this.tm.sX.ue.release();
            disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(T t) {
        return (T) zzd(t);
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(T t) {
        try {
            zzf(t);
        } catch (DeadObjectException e) {
            this.tm.zza(new zzqf.zza(this) { // from class: com.google.android.gms.internal.zzqa.1
                @Override // com.google.android.gms.internal.zzqf.zza
                public void zzapi() {
                    zzqa.this.onConnectionSuspended(1);
                }
            });
        }
        return t;
    }
}
