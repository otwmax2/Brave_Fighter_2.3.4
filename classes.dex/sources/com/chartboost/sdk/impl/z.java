package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBUtility;

/* JADX INFO: loaded from: classes.dex */
public abstract class z extends RelativeLayout {
    protected v a;
    private aa b;
    private int c;

    protected abstract View a();

    protected abstract int b();

    public z(Context context, v vVar) {
        super(context);
        this.a = vVar;
        this.c = 1;
        a(context);
    }

    public void a(int i) {
        this.c = i;
        RelativeLayout.LayoutParams layoutParams = null;
        setClickable(false);
        int iB = b();
        switch (this.c) {
            case 0:
                layoutParams = new RelativeLayout.LayoutParams(-1, CBUtility.a(iB, getContext()));
                layoutParams.addRule(10);
                this.b.b(1);
                break;
            case 1:
                layoutParams = new RelativeLayout.LayoutParams(-1, CBUtility.a(iB, getContext()));
                layoutParams.addRule(12);
                this.b.b(4);
                break;
            case 2:
                layoutParams = new RelativeLayout.LayoutParams(CBUtility.a(iB, getContext()), -1);
                layoutParams.addRule(9);
                this.b.b(8);
                break;
            case 3:
                layoutParams = new RelativeLayout.LayoutParams(CBUtility.a(iB, getContext()), -1);
                layoutParams.addRule(11);
                this.b.b(2);
                break;
        }
        setLayoutParams(layoutParams);
    }

    private void a(Context context) {
        Context context2 = getContext();
        setGravity(17);
        this.b = new aa(context2);
        this.b.a(-1);
        this.b.setBackgroundColor(-855638017);
        addView(this.b, new RelativeLayout.LayoutParams(-1, -1));
        addView(a(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public void a(boolean z) {
        a(z, 500L);
    }

    private void a(final boolean z, long j) {
        TranslateAnimation translateAnimation;
        this.a.C = z;
        if (!z || getVisibility() != 0) {
            if (z || getVisibility() != 8) {
                Runnable runnable = new Runnable() { // from class: com.chartboost.sdk.impl.z.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!z) {
                            z.this.setVisibility(8);
                            z.this.clearAnimation();
                        }
                        synchronized (z.this.a.g) {
                            z.this.a.g.remove(z.this);
                        }
                    }
                };
                if (z) {
                    setVisibility(0);
                }
                float fA = CBUtility.a(b(), getContext());
                switch (this.c) {
                    case 0:
                        translateAnimation = new TranslateAnimation(0.0f, 0.0f, z ? -fA : 0.0f, z ? 0.0f : -fA);
                        break;
                    case 1:
                        float f = z ? fA : 0.0f;
                        if (z) {
                            fA = 0.0f;
                        }
                        translateAnimation = new TranslateAnimation(0.0f, 0.0f, f, fA);
                        break;
                    case 2:
                        translateAnimation = new TranslateAnimation(z ? -fA : 0.0f, z ? 0.0f : -fA, 0.0f, 0.0f);
                        break;
                    case 3:
                        float f2 = z ? fA : 0.0f;
                        if (z) {
                            fA = 0.0f;
                        }
                        translateAnimation = new TranslateAnimation(f2, fA, 0.0f, 0.0f);
                        break;
                    default:
                        translateAnimation = null;
                        break;
                }
                translateAnimation.setDuration(j);
                translateAnimation.setFillAfter(!z);
                startAnimation(translateAnimation);
                synchronized (this.a.g) {
                    this.a.g.put(this, runnable);
                }
                this.a.a.postDelayed(runnable, j);
            }
        }
    }
}
