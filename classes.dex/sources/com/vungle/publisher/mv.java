package com.vungle.publisher;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class mv {

    @Inject
    Context a;
    public int b;
    public int c;

    @Inject
    mv() {
    }

    public float a(int i) {
        return TypedValue.applyDimension(1, i, this.a.getResources().getDisplayMetrics());
    }

    public float a() {
        return r0.widthPixels / this.a.getResources().getDisplayMetrics().density;
    }

    public float b() {
        return r0.heightPixels / this.a.getResources().getDisplayMetrics().density;
    }

    public int c() {
        return this.b;
    }

    public void b(int i) {
        this.b = i;
    }

    public int d() {
        return this.c;
    }

    public void c(int i) {
        this.c = i;
    }

    public void a(DisplayMetrics displayMetrics, boolean z) {
        if (z) {
            b((int) (displayMetrics.widthPixels / displayMetrics.density));
            c((int) (Math.round(((double) displayMetrics.widthPixels) * 0.5625d) / displayMetrics.density));
        } else {
            b((int) (Math.round(((double) displayMetrics.heightPixels) * 0.5625d) / displayMetrics.density));
            c((int) (displayMetrics.heightPixels / displayMetrics.density));
        }
    }
}
