package com.facebook.ads.internal.view.hscroll;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public int[] a(RecyclerView.Recycler recycler, int i, int i2, int i3) {
        View viewForPosition = recycler.getViewForPosition(i);
        int[] iArrA = a(viewForPosition, i2, i3);
        recycler.recycleView(viewForPosition);
        return iArrA;
    }

    public int[] a(View view, int i, int i2) {
        RecyclerView.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), layoutParams.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), layoutParams.height));
        return new int[]{view.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.topMargin + view.getMeasuredHeight() + layoutParams.bottomMargin};
    }
}
