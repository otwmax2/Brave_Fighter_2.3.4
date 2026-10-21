package com.google.android.gms.tagmanager;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class zzar {
    private final long Q;
    private final long awq;
    private final long awr;
    private String aws;

    zzar(long j, long j2, long j3) {
        this.awq = j;
        this.Q = j2;
        this.awr = j3;
    }

    long zzcbn() {
        return this.awq;
    }

    long zzcbo() {
        return this.awr;
    }

    String zzcbp() {
        return this.aws;
    }

    void zzoe(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            return;
        }
        this.aws = str;
    }
}
