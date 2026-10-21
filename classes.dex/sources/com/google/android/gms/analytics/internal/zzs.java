package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

/* JADX INFO: loaded from: classes.dex */
class zzs implements Logger {
    private boolean zzcso;
    private int zzczi = 2;

    zzs() {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void error(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public int getLogLevel() {
        return this.zzczi;
    }

    @Override // com.google.android.gms.analytics.Logger
    public void info(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void setLogLevel(int i) {
        this.zzczi = i;
        if (this.zzcso) {
            return;
        }
        String str = zzy.zzczr.get();
        String str2 = zzy.zzczr.get();
        Log.i(str, new StringBuilder(String.valueOf(str2).length() + 91).append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str2).append(" DEBUG").toString());
        this.zzcso = true;
    }

    @Override // com.google.android.gms.analytics.Logger
    public void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void warn(String str) {
    }
}
