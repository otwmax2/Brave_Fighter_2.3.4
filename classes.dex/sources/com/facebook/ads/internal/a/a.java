package com.facebook.ads.internal.a;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.internal.j.a;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    protected final Context a;
    protected final com.facebook.ads.internal.m.c b;
    protected final String c;

    public a(Context context, com.facebook.ads.internal.m.c cVar, String str) {
        this.a = context;
        this.b = cVar;
        this.c = str;
    }

    public abstract a.EnumC0013a a();

    protected void a(Map<String, String> map) {
        if (!TextUtils.isEmpty(this.c)) {
            if (this instanceof e) {
                this.b.g(this.c, map);
            } else {
                this.b.c(this.c, map);
            }
        }
        com.facebook.ads.internal.q.a.d.a(this.a, "Click logged");
    }

    public abstract void b();
}
