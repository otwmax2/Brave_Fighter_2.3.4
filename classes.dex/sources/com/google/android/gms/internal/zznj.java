package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
class zznj implements ProxyApi.ProxyResult {
    private Status cc;
    private ProxyResponse dE;

    public zznj(ProxyResponse proxyResponse) {
        this.dE = proxyResponse;
        this.cc = Status.sg;
    }

    public zznj(Status status) {
        this.cc = status;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public ProxyResponse getResponse() {
        return this.dE;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }
}
