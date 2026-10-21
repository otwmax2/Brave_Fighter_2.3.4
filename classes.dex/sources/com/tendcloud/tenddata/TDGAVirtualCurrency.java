package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.Message;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.br;
import com.tendcloud.tenddata.game.bv;
import com.tendcloud.tenddata.game.ca;
import com.tendcloud.tenddata.game.cl;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class TDGAVirtualCurrency {
    private static HashMap a = new HashMap();

    public static void onChargeRequest(String str, String str2, double d, String str3, double d2, String str4) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAVirtualCurrency.onChargeRequest()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAVirtualCurrency.onChargeRequest()#orderid:" + str + " iapid:" + str2 + " currencyAmount:" + d + " currencyType:" + str3 + " virtualCurrencyAmount:" + d2 + " paymentType:" + str4);
        if (a.containsKey(str)) {
            return;
        }
        Handler handlerA = bv.a();
        ca caVar = new ca(br.a, TDGAAccount.a, TDGAMission.a, str, str2, d, str3, d2, str4, ca.a.REQUEST);
        handlerA.sendMessage(Message.obtain(handlerA, 6, caVar));
        synchronized (TDGAVirtualCurrency.class) {
            a.put(str, caVar);
        }
    }

    public static void onChargeSuccess(String str) {
        ca caVar;
        if (!TalkingDataGA.a()) {
            bp.c("TDGAVirtualCurrency.onChargeSuccess()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAVirtualCurrency.onChargeSuccess()#orderid:" + str);
        synchronized (TDGAVirtualCurrency.class) {
            caVar = (ca) a.remove(str);
        }
        if (caVar == null) {
            caVar = new ca(br.a, TDGAAccount.a, TDGAMission.a, str, null, 0.0d, null, 0.0d, null, ca.a.SUCCESS);
        }
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 7, caVar));
    }

    public static void onReward(double d, String str) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAVirtualCurrency.onReward()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAVirtualCurrency.onReward()#currencyAmount:" + d + " reason:" + str);
        cl clVar = new cl(br.a, TDGAAccount.a, TDGAMission.a, d, str);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 8, clVar));
    }
}
