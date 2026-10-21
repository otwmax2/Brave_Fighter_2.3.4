package com.facebook.ads.internal.h;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private d c;

    @Nullable
    private String d;
    private int b = 0;
    private List<a> a = new ArrayList();

    public c(d dVar, @Nullable String str) {
        this.c = dVar;
        this.d = str;
    }

    public d a() {
        return this.c;
    }

    public void a(a aVar) {
        this.a.add(aVar);
    }

    @Nullable
    public String b() {
        return this.d;
    }

    public int c() {
        return this.a.size();
    }

    public a d() {
        if (this.b >= this.a.size()) {
            return null;
        }
        this.b++;
        return this.a.get(this.b - 1);
    }
}
