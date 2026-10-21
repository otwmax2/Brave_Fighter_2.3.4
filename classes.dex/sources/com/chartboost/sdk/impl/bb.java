package com.chartboost.sdk.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.chartboost.sdk.e;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class bb extends RelativeLayout {
    private e.a a;
    private aw b;
    private aw c;
    private final com.chartboost.sdk.Model.c d;

    public bb(Context context, com.chartboost.sdk.Model.c cVar) {
        super(context);
        this.d = cVar;
        if (cVar.p.b == 0) {
            this.b = new aw(context);
            addView(this.b, new RelativeLayout.LayoutParams(-1, -1));
            this.c = new aw(context);
            addView(this.c, new RelativeLayout.LayoutParams(-1, -1));
            this.c.setVisibility(8);
        }
    }

    public void a() {
        if (this.a == null) {
            this.a = this.d.k();
            if (this.a != null) {
                addView(this.a, new RelativeLayout.LayoutParams(-1, -1));
                this.a.a();
            }
        }
    }

    public void b() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        performClick();
        return true;
    }

    public aw c() {
        return this.b;
    }

    public View d() {
        return this.a;
    }

    public com.chartboost.sdk.Model.c e() {
        return this.d;
    }

    public boolean f() {
        return this.a != null && this.a.getVisibility() == 0;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return true;
    }
}
