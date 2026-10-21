package com.google.android.gms.analytics.internal;

import com.google.android.gms.analytics.internal.zzq;

/* JADX INFO: loaded from: classes.dex */
public class zzam extends zzq<zzan> {

    private static class zza extends zzc implements zzq.zza<zzan> {
        private final zzan av;

        public zza(zzf zzfVar) {
            super(zzfVar);
            this.av = new zzan();
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        /* JADX INFO: renamed from: zzaea, reason: merged with bridge method [inline-methods] */
        public zzan zzabb() {
            return this.av;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzc(String str, int i) {
            if ("ga_sessionTimeout".equals(str)) {
                this.av.ax = i;
            } else {
                zzd("int configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzg(String str, boolean z) {
            if ("ga_autoActivityTracking".equals(str)) {
                this.av.ay = z ? 1 : 0;
                return;
            }
            if ("ga_anonymizeIp".equals(str)) {
                this.av.az = z ? 1 : 0;
            } else if (!"ga_reportUncaughtExceptions".equals(str)) {
                zzd("bool configuration name not recognized", str);
            } else {
                this.av.aA = z ? 1 : 0;
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzp(String str, String str2) {
            this.av.aB.put(str, str2);
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public void zzq(String str, String str2) {
            if ("ga_trackingId".equals(str)) {
                this.av.zzcrv = str2;
                return;
            }
            if (!"ga_sampleFrequency".equals(str)) {
                zzd("string configuration name not recognized", str);
                return;
            }
            try {
                this.av.aw = Double.parseDouble(str2);
            } catch (NumberFormatException e) {
                zzc("Error parsing ga_sampleFrequency value", str2, e);
            }
        }
    }

    public zzam(zzf zzfVar) {
        super(zzfVar, new zza(zzfVar));
    }
}
