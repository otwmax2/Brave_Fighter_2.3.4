package com.facebook.ads.internal.view.component.a;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.graphics.ColorUtils;
import android.view.View;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.q.a.v;
import com.facebook.ads.internal.view.a;
import com.facebook.ads.internal.view.e.c.o;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final int a = v.a.heightPixels;
    private static final int b = v.a.widthPixels;

    private static int a(int i) {
        return (a - i) - ((v.a(16) + (com.facebook.ads.internal.view.component.a.a * 2)) + (d.a * 2));
    }

    public static b a(Context context, com.facebook.ads.internal.m.c cVar, a.InterfaceC0019a interfaceC0019a, View view, j jVar, j jVar2, int i, int i2, int i3, int i4) {
        return a(context, cVar, interfaceC0019a, view, jVar, jVar2, i, i2, i3, i4, null, null);
    }

    public static b a(Context context, com.facebook.ads.internal.m.c cVar, a.InterfaceC0019a interfaceC0019a, View view, j jVar, j jVar2, int i, int i2, int i3, int i4, @Nullable o oVar, @Nullable View view2) {
        j jVar3 = i2 == 1 ? jVar : jVar2;
        boolean zA = a(i2, i3, i4, i);
        if (oVar != null) {
            oVar.setProgressBarColor(ColorUtils.setAlphaComponent(jVar3.a(zA), 128));
        }
        if (zA) {
            return new a(context, cVar, interfaceC0019a, view, oVar, view2, i, jVar3, i2 == 2);
        }
        return new d(context, cVar, interfaceC0019a, view, oVar, view2, a(i3, i4), jVar3);
    }

    private static boolean a(int i, int i2) {
        return ((double) c(i, i2)) < 0.9d;
    }

    private static boolean a(int i, int i2, int i3) {
        return a(i3) < b(i, i2);
    }

    private static boolean a(int i, int i2, int i3, int i4) {
        return i == 2 || a(i2, i3, i4);
    }

    private static int b(int i, int i2) {
        return (int) ((b - (d.a * 2)) / c(i, i2));
    }

    private static float c(int i, int i2) {
        if (i2 > 0) {
            return i / i2;
        }
        return -1.0f;
    }
}
