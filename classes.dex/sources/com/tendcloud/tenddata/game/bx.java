package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TalkingDataGA;

/* JADX INFO: loaded from: classes.dex */
final class bx implements Runnable {
    bx() {
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String str = "http://id1.cn.com/a/" + i.b(TalkingDataGA.a);
            if (bp.b) {
                bp.b("extraAddress()# " + str);
            }
            g.a(str, false);
        } catch (Throwable th) {
        }
    }
}
