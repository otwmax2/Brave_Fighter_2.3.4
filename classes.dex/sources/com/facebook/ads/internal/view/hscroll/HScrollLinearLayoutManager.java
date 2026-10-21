package com.facebook.ads.internal.view.hscroll;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class HScrollLinearLayoutManager extends LinearLayoutManager {
    private final c a;
    private final com.facebook.ads.internal.view.hscroll.a b;
    private final Context c;
    private int[] d;
    private int e;
    private float f;
    private a g;
    private int h;

    private class a extends LinearSmoothScroller {
        public a(Context context) {
            super(context);
        }

        public int calculateDxToMakeVisible(View view, int i) {
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            if (!layoutManager.canScrollHorizontally()) {
                return 0;
            }
            RecyclerView.LayoutParams layoutParams = view.getLayoutParams();
            return calculateDtToFit(layoutManager.getDecoratedLeft(view) - layoutParams.leftMargin, layoutManager.getDecoratedRight(view) + layoutParams.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), i) + HScrollLinearLayoutManager.this.e;
        }

        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return HScrollLinearLayoutManager.this.f / displayMetrics.densityDpi;
        }

        public PointF computeScrollVectorForPosition(int i) {
            return HScrollLinearLayoutManager.this.computeScrollVectorForPosition(i);
        }

        protected int getHorizontalSnapPreference() {
            return -1;
        }
    }

    public HScrollLinearLayoutManager(Context context, c cVar, com.facebook.ads.internal.view.hscroll.a aVar) {
        super(context);
        this.e = 0;
        this.f = 50.0f;
        this.c = context;
        this.a = cVar;
        this.b = aVar;
        this.h = -1;
        this.g = new a(this.c);
    }

    public void a(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.f = (float) (50.0d / d);
        this.g = new a(this.c);
    }

    void a(int i) {
        this.h = i;
    }

    public void b(int i) {
        this.e = i;
    }

    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int[] iArrA;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if ((mode == 1073741824 && getOrientation() == 1) || (mode2 == 1073741824 && getOrientation() == 0)) {
            super.onMeasure(recycler, state, i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.b.b(this.h)) {
            iArrA = this.b.a(this.h);
        } else {
            iArrA = new int[]{0, 0};
            if (state.getItemCount() >= 1) {
                for (int i3 = 0; i3 < 1; i3++) {
                    this.d = this.a.a(recycler, i3, View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (getOrientation() == 0) {
                        iArrA[0] = iArrA[0] + this.d[0];
                        if (i3 == 0) {
                            iArrA[1] = this.d[1] + getPaddingTop() + getPaddingBottom();
                        }
                    } else {
                        iArrA[1] = iArrA[1] + this.d[1];
                        if (i3 == 0) {
                            iArrA[0] = this.d[0] + getPaddingLeft() + getPaddingRight();
                        }
                    }
                }
                if (this.h != -1) {
                    this.b.a(this.h, iArrA);
                }
            }
        }
        if (mode == 1073741824) {
            iArrA[0] = size;
        }
        if (mode2 == 1073741824) {
            iArrA[1] = size2;
        }
        setMeasuredDimension(iArrA[0], iArrA[1]);
    }

    public void scrollToPosition(int i) {
        super.scrollToPositionWithOffset(i, this.e);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        this.g.setTargetPosition(i);
        startSmoothScroll(this.g);
    }
}
