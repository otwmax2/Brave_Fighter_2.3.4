package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class ch extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private String k;
    private a l;
    private String m;
    private long n;

    public enum a {
        START(1),
        COMPLETED(2),
        FAILED(3);

        private final int d;

        a(int i) {
            this.d = i;
        }

        public int a() {
            return this.d;
        }
    }

    public ch(String str, TDGAAccount tDGAAccount, String str2, String str3, long j, a aVar) {
        super("G6");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.k = tDGAAccount.getGameServer();
        this.j = str2;
        this.m = str3;
        this.l = aVar;
        this.n = j;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.j, this.k).a(ao.s, this.j).a(ao.u, this.m).a("status", Integer.valueOf(this.l.d)).a(ao.v, Long.valueOf(this.n / 1000));
    }
}
