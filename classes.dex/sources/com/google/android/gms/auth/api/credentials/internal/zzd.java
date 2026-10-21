package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final class zzd implements CredentialRequestResult {
    private final Status cc;
    private final Credential dn;

    public zzd(Status status, Credential credential) {
        this.cc = status;
        this.dn = credential;
    }

    public static zzd zzi(Status status) {
        return new zzd(status, null);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialRequestResult
    public Credential getCredential() {
        return this.dn;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }
}
