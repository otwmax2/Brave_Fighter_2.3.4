package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class co extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private String k;
    private int l;
    private String m;

    public co(String str, TDGAAccount tDGAAccount, String str2, String str3, int i) {
        super("G12");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGameServer();
        this.m = str2;
        this.k = str3;
        this.l = i;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.j, this.j).a(ao.s, this.m).a(ao.C, this.k).a(ao.D, Integer.valueOf(this.l));
    }
}
