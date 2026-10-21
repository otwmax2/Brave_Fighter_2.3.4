package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
public class by extends bz {
    private String g;
    private String h;
    private String i;

    public by(String str, String str2, String str3) {
        super("G14");
        this.g = str;
        this.h = str2;
        this.i = str3;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a("aas", this.g).a("ruas", this.h).a("ras", this.i);
    }
}
