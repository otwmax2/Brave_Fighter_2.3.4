package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class bi extends Handler {
    bi(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            bh.c();
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }
}
