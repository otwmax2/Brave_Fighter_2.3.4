package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.tendcloud.tenddata.TalkingDataGA;

/* JADX INFO: loaded from: classes.dex */
final class bn extends Handler {
    bn(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            bp.a("Send data handler message what : " + bm.k[message.what]);
            bm.h();
            switch (message.what) {
                case 1:
                    if (!bm.b(TalkingDataGA.getContext())) {
                        bm.b(120000);
                        if (bp.b) {
                            Log.i("TDGA", "NORMAL_SEND_MESSAGE_INTERVAL");
                        }
                    } else {
                        bm.b(1800000);
                        if (bp.b) {
                            Log.i("TDGA", "SERVICE_SEND_MESSAGE_INTERVAL");
                        }
                    }
                    break;
            }
        } catch (Exception e) {
            bp.c("Post handleMessage() error : " + e.getMessage());
            e.printStackTrace();
        }
    }
}
