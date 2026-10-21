package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.Message;
import com.ironsource.sdk.constants.Constants;
import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TalkingDataGA;
import com.tendcloud.tenddata.game.ca;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class bv {
    static final int a = 100;
    static final int b = 1;
    static final int c = 2;
    static final int d = 3;
    static final int e = 4;
    static final int f = 5;
    static final int g = 6;
    static final int h = 7;
    static final int i = 8;
    static final int j = 9;
    static final int k = 10;
    static final int l = 11;
    static final int m = 12;
    static final int n = 13;
    static final int o = 14;
    static final int p = 15;
    static final int q = 16;
    static final int r = 17;
    static final int s = 18;
    private static Handler t = new bw(TalkingDataGA.k.getLooper());

    bv() {
    }

    private static long a(String str) {
        long jCharAt = 1125899906842597L;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            jCharAt = (jCharAt * 131) + ((long) str.charAt(i2));
        }
        return jCharAt;
    }

    public static final Handler a() {
        return t;
    }

    private static void b() {
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (bq.b(TalkingDataGA.a) == 0) {
            aw.a(new cd());
            bq.a(TalkingDataGA.a, jCurrentTimeMillis);
            z = true;
        } else {
            be.b(new cd());
            z = false;
        }
        long jAbs = Math.abs(jCurrentTimeMillis - bq.b());
        if (jAbs > 300000) {
            Long[][] lArrF = z.f(TalkingDataGA.a);
            aw.a(new by(z ? z.g(TalkingDataGA.a).toString() : jAbs > 36000000 ? Arrays.toString(lArrF[2]) : "", aa.a(21) ? d() : Arrays.toString(lArrF[0]), Arrays.toString(lArrF[1])));
            bq.a(jCurrentTimeMillis);
        }
        try {
            ((at) new q().a(TalkingDataGA.a, "", "ga-dyn-act", at.class, au.class, "com.tendcloud.tenddata.ota.az")).a();
        } catch (Exception e2) {
            if (bp.b) {
                e2.printStackTrace();
            }
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Message message) {
        try {
            if (TalkingDataGA.a() || TalkingDataGA.g || message.what == 100) {
                switch (message.what) {
                    case 1:
                        c(message);
                        break;
                    case 2:
                        d(message);
                        break;
                    case 4:
                    case 5:
                    case 9:
                    case 10:
                    case 11:
                    case 13:
                    case 15:
                    case 16:
                    case 17:
                        boolean zA = aw.a((bz) message.obj);
                        if (message.what == 16 && zA) {
                            ck ckVar = (ck) message.obj;
                            t.a(TalkingDataGA.a, "TalkingData_Push_SharedPreferences", ckVar.i() + ckVar.h(), ckVar.g());
                        }
                        break;
                    case 6:
                    case 8:
                    case 18:
                        aw.a((bz) message.obj);
                        bm.d();
                        break;
                    case 7:
                        ca caVar = (ca) message.obj;
                        caVar.a(ca.a.SUCCESS);
                        aw.a(caVar);
                        bm.d();
                        break;
                    case 12:
                        e(message);
                        bm.d();
                        break;
                    case 14:
                        f(message);
                        break;
                    case 100:
                        b();
                        break;
                }
            } else {
                bp.c("SDK not initialized. TalkingDataGAHandler.handleMessage()");
            }
        } catch (Exception e2) {
            bp.c("MainHandler handleMessage() error : " + e2.getMessage());
            e2.printStackTrace();
        }
    }

    private static void c() {
        if (o.c(TalkingDataGA.a)) {
            new Thread(new bx()).start();
        }
    }

    private static final void c(Message message) {
        bm.b();
        br.a();
    }

    private static String d() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(Constants.RequestParameters.LEFT_BRACKETS);
            for (a aVar : u.a()) {
                if (!aVar.c.startsWith("android.") && !aVar.c.equals("system")) {
                    stringBuffer.append(a(aVar.c) + ",");
                }
            }
            return stringBuffer.append(Constants.RequestParameters.RIGHT_BRACKETS).toString();
        } catch (Throwable th) {
            return "";
        }
    }

    private static final void d(Message message) {
        bm.c();
        br.b();
    }

    private static final void e(Message message) {
        br.a((TDGAAccount.a) message.obj);
    }

    private static final void f(Message message) {
        br.a(TDGAAccount.a, (TDGAAccount) message.obj);
        aw.a(new cn(br.a, (TDGAAccount) message.obj));
    }
}
