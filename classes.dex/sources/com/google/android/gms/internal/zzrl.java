package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzrm;

/* JADX INFO: loaded from: classes.dex */
public final class zzrl implements zzrk {

    private static class zza extends zzri {
        private final zzpr.zzb<Status> zj;

        public zza(zzpr.zzb<Status> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzri, com.google.android.gms.internal.zzro
        public void zzgj(int i) throws RemoteException {
            this.zj.setResult(new Status(i));
        }
    }

    @Override // com.google.android.gms.internal.zzrk
    public PendingResult<Status> zzg(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zzrm.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzrl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzrn zzrnVar) throws RemoteException {
                ((zzrp) zzrnVar.zzarw()).zza(new zza(this));
            }
        });
    }
}
