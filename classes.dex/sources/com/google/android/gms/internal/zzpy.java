package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzpy implements Releasable, Result {
    protected final Status cc;
    protected final DataHolder tk;

    protected zzpy(DataHolder dataHolder, Status status) {
        this.cc = status;
        this.tk = dataHolder;
    }

    public Status getStatus() {
        return this.cc;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.tk != null) {
            this.tk.close();
        }
    }
}
