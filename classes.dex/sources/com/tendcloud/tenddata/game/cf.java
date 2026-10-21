package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;

/* JADX INFO: loaded from: classes.dex */
public class cf extends bz {
    private String g;
    private String h;
    private int i;
    private int j;
    private String k;
    private int l;
    private String m;
    private int n;
    private int o;

    public cf(String str, TDGAAccount tDGAAccount, int i) {
        super("G3");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGender().index();
        this.l = tDGAAccount.getAccountType().index();
        this.m = tDGAAccount.getGameServer();
        this.k = tDGAAccount.getAccountName();
        this.n = tDGAAccount.getAge();
        this.o = i;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(ao.d, this.g).a(ao.e, this.h).a(ao.f, Integer.valueOf(this.i)).a(ao.g, Integer.valueOf(this.j)).a(ao.i, this.k).a(ao.h, Integer.valueOf(this.l)).a(ao.j, this.m).a("age", Integer.valueOf(this.n)).a(ao.r, Integer.valueOf(this.o));
    }
}
