package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class br {
    public static String a = null;
    private static final long b = 30000;

    br() {
    }

    static synchronized void a() {
        boolean z = true;
        int i = 0;
        synchronized (br.class) {
            long jD = bq.d();
            long jG = bq.g();
            String strH = bq.h();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jD != 868) {
                if ((jCurrentTimeMillis - jG <= b || jCurrentTimeMillis - jD <= b) && jCurrentTimeMillis >= jD) {
                    z = false;
                } else if (jG == 0) {
                    a(strH, jD, jD);
                } else {
                    a(strH, jD, jG);
                    i = ((int) (jCurrentTimeMillis - jG)) / 1000;
                }
            }
            if (z) {
                a(jCurrentTimeMillis, i, TDGAAccount.a);
            }
        }
    }

    private static void a(long j, int i, TDGAAccount tDGAAccount) {
        a = UUID.randomUUID().toString();
        bq.d(a);
        bq.b(j);
        bq.c(0L);
        bq.f();
        aw.a(new cf(a, tDGAAccount, i));
    }

    static synchronized void a(TDGAAccount.a aVar) {
        a(aVar.a, aVar.b);
    }

    static synchronized void a(TDGAAccount tDGAAccount, TDGAAccount tDGAAccount2) {
        long jD = bq.d();
        String strH = bq.h();
        long jCurrentTimeMillis = System.currentTimeMillis();
        cg cgVar = new cg(strH, tDGAAccount, jD, jCurrentTimeMillis - jD);
        cgVar.a(jCurrentTimeMillis);
        aw.a(cgVar);
        a(jCurrentTimeMillis, 0, tDGAAccount2);
    }

    private static void a(String str, long j, long j2) {
        bq.c(j2);
        cg cgVar = new cg(str, TDGAAccount.a, j, j2 - j);
        cgVar.a(j2);
        aw.a(cgVar);
    }

    public static synchronized void b() {
        bq.c(System.currentTimeMillis());
        if (TDGAAccount.a != null) {
            TDGAAccount.a.a();
        }
    }
}
