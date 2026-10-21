package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class ci extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private double k;
    private String l;
    private int m;
    private String n;

    public ci(String str, TDGAAccount tDGAAccount, String str2, double d, String str3, int i) {
        super("G10");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGameServer();
        this.n = str2;
        this.k = d;
        this.l = str3;
        this.m = i;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.j, this.j).a(ao.s, this.n).a(ao.o, Double.valueOf(this.k)).a(ao.C, this.l).a(ao.D, Integer.valueOf(this.m));
    }
}
