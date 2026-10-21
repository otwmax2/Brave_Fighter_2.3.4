package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public final class ca extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private String k;
    private String l;
    private double m;
    private String n;
    private double o;
    private String p;
    private a q;
    private String r;

    public enum a {
        REQUEST(1),
        SUCCESS(2);

        private final int c;

        a(int i) {
            this.c = i;
        }

        public int a() {
            return this.c;
        }
    }

    public ca(String str, TDGAAccount tDGAAccount, String str2, String str3, String str4, double d, String str5, double d2, String str6, a aVar) {
        super("G9");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGameServer();
        this.r = str2;
        this.k = str3;
        this.l = str4;
        this.m = d;
        this.n = str5;
        this.o = d2;
        this.p = str6;
        this.q = aVar;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.j, this.j).a(ao.s, this.r).a(ao.y, this.k).a(ao.z, this.l).a(ao.A, Double.valueOf(this.m)).a(ao.o, Double.valueOf(this.o)).a(ao.p, this.n).a(ao.B, this.p).a("status", Integer.valueOf(this.q.a()));
    }

    public void a(a aVar) {
        this.q = aVar;
    }
}
