package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzmh;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class zza extends zzh<zza> {
    private final com.google.android.gms.analytics.internal.zzf zzcrq;
    private boolean zzcrr;

    public zza(com.google.android.gms.analytics.internal.zzf zzfVar) {
        super(zzfVar.zzyz(), zzfVar.zzyw());
        this.zzcrq = zzfVar;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzcrr = z;
    }

    @Override // com.google.android.gms.analytics.zzh
    protected void zza(zze zzeVar) {
        zzmh zzmhVar = (zzmh) zzeVar.zzb(zzmh.class);
        if (TextUtils.isEmpty(zzmhVar.zzwb())) {
            zzmhVar.setClientId(this.zzcrq.zzzn().zzaav());
        }
        if (this.zzcrr && TextUtils.isEmpty(zzmhVar.zzxy())) {
            com.google.android.gms.analytics.internal.zza zzaVarZzzm = this.zzcrq.zzzm();
            zzmhVar.zzdy(zzaVarZzzm.zzyk());
            zzmhVar.zzao(zzaVarZzzm.zzxz());
        }
    }

    public void zzdh(String str) {
        zzab.zzhs(str);
        zzdi(str);
        zzwr().add(new zzb(this.zzcrq, str));
    }

    public void zzdi(String str) {
        Uri uriZzdj = zzb.zzdj(str);
        ListIterator<zzk> listIterator = zzwr().listIterator();
        while (listIterator.hasNext()) {
            if (uriZzdj.equals(listIterator.next().zzvu())) {
                listIterator.remove();
            }
        }
    }

    com.google.android.gms.analytics.internal.zzf zzvq() {
        return this.zzcrq;
    }

    @Override // com.google.android.gms.analytics.zzh
    public zze zzvr() {
        zze zzeVarZzwf = zzwq().zzwf();
        zzeVarZzwf.zza(this.zzcrq.zzze().zzaad());
        zzeVarZzwf.zza(this.zzcrq.zzzf().zzack());
        zzd(zzeVarZzwf);
        return zzeVarZzwf;
    }
}
