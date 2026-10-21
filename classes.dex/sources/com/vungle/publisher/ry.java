package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum ry {
    PORTRAIT(7),
    LANDSCAPE(6),
    NONE(4);

    private final int d;

    ry(int i) {
        this.d = i;
    }

    public int a() {
        return this.d;
    }
}
