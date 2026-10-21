package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class x extends Handler {
    final /* synthetic */ w a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    x(w wVar, Looper looper) {
        super(looper);
        this.a = wVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 10:
                if (this.a.i != null) {
                    this.a.i.unregisterListener(this.a.l);
                }
                break;
        }
    }
}
