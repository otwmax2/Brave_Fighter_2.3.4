package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class bd extends ph {
    int a;
    int b;
    float c;

    public float a() {
        return this.c;
    }

    public boolean b() {
        return this.b > this.a;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        lm a;

        @Inject
        a() {
        }

        public bd a(int i) {
            bd bdVar = new bd();
            bdVar.b = this.a.a();
            bdVar.c = this.a.b();
            bdVar.a = i;
            return bdVar;
        }
    }
}
