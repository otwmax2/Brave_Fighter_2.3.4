package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int cs;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.cs = i;
    }

    public int getConnectionStatusCode() {
        return this.cs;
    }
}
