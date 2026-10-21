package com.google.android.gms.analytics.internal;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzd extends zzc {
    private boolean zzcwt;

    protected zzd(zzf zzfVar) {
        super(zzfVar);
    }

    public void initialize() {
        zzwv();
        this.zzcwt = true;
    }

    public boolean isInitialized() {
        return this.zzcwt;
    }

    protected abstract void zzwv();

    protected void zzzg() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
