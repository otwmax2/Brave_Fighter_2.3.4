package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
final class ak {
    private static final int j = 1073741824;
    final am a = new am();
    final int[] b = new int[4];
    int c;
    int d;
    int e;
    boolean f;
    boolean g;
    int h;
    int i;

    ak() {
    }

    void a() {
        this.c = j;
    }

    void a(int i, int i2, int i3) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = false;
    }

    void a(int i, int i2, int i3, int i4, int i5) {
        this.c = i;
        this.d = i2 + i4 + 1;
        this.e = i5;
        this.f = true;
        this.g = true;
        this.h = i2;
        this.i = i3;
    }

    void b(int i, int i2, int i3) {
        this.c = i;
        this.d = i2 + 1;
        this.e = i3;
        this.f = true;
        this.g = false;
    }
}
