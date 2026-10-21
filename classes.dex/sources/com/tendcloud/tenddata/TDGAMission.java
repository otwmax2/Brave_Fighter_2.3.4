package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.Message;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.bq;
import com.tendcloud.tenddata.game.br;
import com.tendcloud.tenddata.game.bv;
import com.tendcloud.tenddata.game.ch;

/* JADX INFO: loaded from: classes.dex */
public final class TDGAMission {
    public static String a = "";

    public static void onBegin(String str) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAMission.onBegin()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAMission.onBegin()# missionId:" + str);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 9, new ch(br.a, TDGAAccount.a, str, "", 0L, ch.a.START)));
        bq.c(str);
        if (TDGAAccount.a != null) {
            TDGAAccount.a.a(str);
        }
        a = str;
    }

    public static void onCompleted(String str) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAMission.onCompleted()#SDK not initialized. ");
            return;
        }
        bp.b("TDGAMission.onCompleted()# missionId:" + str);
        long jB = TDGAAccount.a == null ? 0L : TDGAAccount.a.b(str);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 9, new ch(br.a, TDGAAccount.a, str, "", jB, ch.a.COMPLETED)));
        a = "";
        bq.c(a);
    }

    public static void onFailed(String str, String str2) {
        if (!TalkingDataGA.a()) {
            bp.c("TDGAMission.onFailed#SDK not initialized. ");
            return;
        }
        bp.b("TDGAMission.onFailed()# missionId:" + str + " cause:" + str2);
        long jB = TDGAAccount.a == null ? 0L : TDGAAccount.a.b(str);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 9, new ch(br.a, TDGAAccount.a, str, str2, jB, ch.a.FAILED)));
        a = "";
        bq.c(a);
    }
}
