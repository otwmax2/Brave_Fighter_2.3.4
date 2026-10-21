package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
final class am {
    static final int a = 12;
    private static final int b = 7;
    private static final int c = 0;
    private static final int d = 3;
    private static final int e = 7;
    private static final int f = 8;
    private static final int g = 9;
    private static final int h = 10;
    private static final int i = 11;
    private int j;

    am() {
    }

    am(am amVar) {
        this.j = amVar.j;
    }

    void a() {
        this.j = 0;
    }

    void a(am amVar) {
        this.j = amVar.j;
    }

    int b() {
        return this.j;
    }

    void c() {
        if (this.j <= 3) {
            this.j = 0;
        } else if (this.j <= 9) {
            this.j -= 3;
        } else {
            this.j -= 6;
        }
    }

    void d() {
        this.j = this.j >= 7 ? 10 : 7;
    }

    void e() {
        this.j = this.j < 7 ? 8 : 11;
    }

    void f() {
        this.j = this.j < 7 ? 9 : 11;
    }

    boolean g() {
        return this.j < 7;
    }
}
