package com.facebook.ads.internal.view.component.a;

import android.content.Context;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.q.a.v;
import com.facebook.ads.internal.view.a;
import com.facebook.ads.internal.view.component.i;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends RelativeLayout {
    static final int a = (int) (16.0f * v.b);
    static final int b = (int) (28.0f * v.b);
    private final i c;
    private final com.facebook.ads.internal.view.component.a d;

    b(Context context, com.facebook.ads.internal.m.c cVar, a.InterfaceC0019a interfaceC0019a, j jVar, boolean z) {
        super(context);
        this.d = new com.facebook.ads.internal.view.component.a(context, true, c(), "com.facebook.ads.interstitial.clicked", jVar, cVar, interfaceC0019a);
        v.a(this.d);
        this.c = new i(getContext(), jVar, z, true, b());
        v.a(this.c);
    }

    public void a(String str, String str2, String str3, String str4, String str5, double d) {
        this.c.a(str, str2, false, !a() && d > 0.0d && d < 1.0d);
        this.d.a(str3, str4, str5, new HashMap());
    }

    public abstract boolean a();

    protected boolean b() {
        return true;
    }

    protected boolean c() {
        return true;
    }

    com.facebook.ads.internal.view.component.a getCtaButton() {
        return this.d;
    }

    i getTextContainer() {
        return this.c;
    }
}
