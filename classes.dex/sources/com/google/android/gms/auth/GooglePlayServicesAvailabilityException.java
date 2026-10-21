package com.google.android.gms.auth;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int cs;

    GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.cs = i;
    }

    public int getConnectionStatusCode() {
        return this.cs;
    }
}
