package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class ce extends bz {
    private String g;
    private String h;
    private int i;
    private int j;
    private String k;
    private String l;
    private long m;

    public ce(String str, TDGAAccount tDGAAccount, String str2, int i, long j) {
        super("G5");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.j = tDGAAccount.getLevel();
        this.k = tDGAAccount.getGameServer();
        this.l = str2;
        this.m = j;
        this.i = i;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.j)).a(ao.j, this.k).a(ao.s, this.l).a(ao.l, Integer.valueOf(this.i)).a(ao.v, Long.valueOf(this.m / 1000));
    }
}
