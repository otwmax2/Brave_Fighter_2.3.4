package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class bd extends Handler {
    bd(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            az azVarA = az.a();
            switch (message.what) {
                case 101:
                    azVarA.b();
                    break;
                case 102:
                    azVarA.b((bb) message.obj);
                    break;
                case 103:
                    azVarA.a((bb) message.obj);
                    break;
                case 104:
                    azVarA.c();
                    break;
                case 105:
                    azVarA.d();
                    break;
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }
}
