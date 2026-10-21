package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.Message;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.br;
import com.tendcloud.tenddata.game.bv;
import com.tendcloud.tenddata.game.ci;
import com.tendcloud.tenddata.game.co;

/* JADX INFO: loaded from: classes.dex */
public final class TDGAItem {
    public static void onPurchase(String str, int i, double d) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAItem.onPurchase()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAItem.onPurchase()# item:" + str + " itemNumber:" + i + " priceInVirtualCurrency:" + d);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 10, new ci(br.a, TDGAAccount.a, TDGAMission.a, d, str, i)));
    }

    public static void onUse(String str, int i) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAItem.onUse()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAItem.onUse()# item:" + str + " itemNumber:" + i);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 11, new co(br.a, TDGAAccount.a, TDGAMission.a, str, i)));
    }
}
