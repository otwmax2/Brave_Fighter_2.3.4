package com.facebook.ads.internal.o;

/* JADX INFO: loaded from: classes.dex */
class f {
    private final a a;
    private final com.facebook.ads.internal.h.c b;
    private final String c;
    private final String d;
    private final String e;

    enum a {
        UNKNOWN,
        ERROR,
        ADS
    }

    f(a aVar) {
        this(aVar, null, null, null, null);
    }

    f(a aVar, com.facebook.ads.internal.h.c cVar, String str, String str2, String str3) {
        this.a = aVar;
        this.b = cVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    public com.facebook.ads.internal.h.c a() {
        return this.b;
    }

    a b() {
        return this.a;
    }

    String c() {
        return this.c;
    }

    String d() {
        return this.d;
    }

    String e() {
        return this.e;
    }
}
