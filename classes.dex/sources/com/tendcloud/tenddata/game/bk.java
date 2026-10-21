package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
class bk extends aq {
    private String b;

    public bk(String str) {
        this.b = str;
    }

    @Override // com.tendcloud.tenddata.game.aq, java.lang.Runnable
    public void run() {
        a(this.b);
    }
}
