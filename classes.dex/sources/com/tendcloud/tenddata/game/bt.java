package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Message;
import com.tendcloud.tenddata.game.w;

/* JADX INFO: loaded from: classes.dex */
public final class bt implements w.a {
    @Override // com.tendcloud.tenddata.game.w.a
    public void a() {
        cm cmVar = new cm();
        Handler handlerA = bv.a();
        Message messageObtain = Message.obtain(handlerA, 18);
        messageObtain.obj = cmVar;
        handlerA.sendMessage(messageObtain);
    }
}
