package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public final class cl extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private double k;
    private String l;
    private String m;

    public cl(String str, TDGAAccount tDGAAccount, String str2, double d, String str3) {
        super("G15");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGameServer();
        this.m = str2;
        this.k = d;
        this.l = str3;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.j, this.j).a(ao.s, this.m).a(ao.o, Double.valueOf(this.k)).a(ao.q, this.l);
    }
}
