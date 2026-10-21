package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ts {
    private String a;
    private String b;
    private int c;
    private Long d;

    @Inject
    ts() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<ts> a;

        @Inject
        a() {
        }

        public ts a(String str, int i, String str2, Long l) {
            ts tsVar = this.a.get();
            tsVar.b = str;
            tsVar.c = i;
            tsVar.a = str2;
            tsVar.d = l;
            return tsVar;
        }
    }
}
