package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class cg extends bz {
    private String g;
    private String h;
    private long i;
    private long j;
    private int k;
    private String l;

    public cg(String str, TDGAAccount tDGAAccount, long j, long j2) {
        super("G4");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.k = tDGAAccount.getLevel();
        this.l = tDGAAccount.getGameServer();
        this.i = j;
        this.j = j2;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.k)).a(ao.j, this.l).a(ao.m, Long.valueOf(this.i)).a(ao.n, Long.valueOf(this.j / 1000));
    }

    public void a(long j) {
        this.d = j;
    }
}
