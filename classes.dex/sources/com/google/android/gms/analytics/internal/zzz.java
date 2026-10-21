package com.google.android.gms.analytics.internal;

import com.google.android.gms.analytics.internal.zzq;

/* JADX INFO: loaded from: classes.dex */
public class zzz extends zzq<zzaa> {

    private static class zza implements zzq.zza<zzaa> {
        private final zzaa K = new zzaa();
        private final zzf zzcws;

        public zza(zzf zzfVar) {
            this.zzcws = zzfVar;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        /* JADX INFO: renamed from: zzaco, reason: merged with bridge method [inline-methods] */
        public zzaa zzabb() {
            return this.K;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzc(String str, int i) {
            if ("ga_dispatchPeriod".equals(str)) {
                this.K.M = i;
            } else {
                this.zzcws.zzyx().zzd("Int xml configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzg(String str, boolean z) {
            if (!"ga_dryRun".equals(str)) {
                this.zzcws.zzyx().zzd("Bool xml configuration name not recognized", str);
            } else {
                this.K.N = z ? 1 : 0;
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzp(String str, String str2) {
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzq(String str, String str2) {
            if ("ga_appName".equals(str)) {
                this.K.zzcup = str2;
                return;
            }
            if ("ga_appVersion".equals(str)) {
                this.K.zzcuq = str2;
            } else if ("ga_logLevel".equals(str)) {
                this.K.L = str2;
            } else {
                this.zzcws.zzyx().zzd("String xml configuration name not recognized", str);
            }
        }
    }

    public zzz(zzf zzfVar) {
        super(zzfVar, new zza(zzfVar));
    }
}
