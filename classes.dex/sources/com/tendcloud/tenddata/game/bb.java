package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
public final class bb {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private a f;
    private int g;

    public enum a {
        ARRIVED(0),
        CLICK(1),
        SHOW(2),
        UNSHOWN(3),
        CANCEL(4),
        INAPP_SHOW(11),
        INAPP_DURATION(12),
        INAPP_UNSHOW(13);

        private final int i;

        a(int i) {
            this.i = i;
        }

        int a() {
            return this.i;
        }
    }

    bb() {
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public bb(String str, String str2, a aVar, int i) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.e = str;
        this.f = aVar;
        this.d = str2;
        this.g = i;
    }

    public bb(String str, String str2, String str3) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.c = str;
        this.b = str2;
        this.a = str3;
    }

    String a() {
        return this.b;
    }

    String b() {
        return this.c;
    }

    String c() {
        return this.a;
    }

    String d() {
        return this.e;
    }

    String e() {
        return this.d;
    }

    a f() {
        return this.f;
    }

    int g() {
        return this.g;
    }
}
