package com.tendcloud.tenddata.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class p extends BroadcastReceiver {
    final /* synthetic */ Object a;
    final /* synthetic */ Context b;

    p(Object obj, Context context) {
        this.a = obj;
        this.b = context;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            synchronized (this.a) {
                try {
                    this.a.notifyAll();
                    this.b.unregisterReceiver(this);
                } catch (Throwable th) {
                    this.b.unregisterReceiver(this);
                    throw th;
                }
            }
        } catch (Throwable th2) {
        }
    }
}
