package com.facebook.ads.internal.view.hscroll;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.widget.ExploreByTouchHelper;
import android.support.v7.internal.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.ads.internal.view.hscroll.d;

/* JADX INFO: loaded from: classes.dex */
public class b extends d implements d.a {
    private final HScrollLinearLayoutManager c;
    private a d;
    private int e;
    private int f;
    private int g;
    private int h;

    public interface a {
        void a(int i, int i2);
    }

    public b(Context context) {
        super(context);
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.c = new HScrollLinearLayoutManager(context, new c(), new com.facebook.ads.internal.view.hscroll.a());
        a();
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.c = new HScrollLinearLayoutManager(context, new c(), new com.facebook.ads.internal.view.hscroll.a());
        a();
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.c = new HScrollLinearLayoutManager(context, new c(), new com.facebook.ads.internal.view.hscroll.a());
        a();
    }

    private void a() {
        this.c.setOrientation(0);
        setLayoutManager(this.c);
        setSaveEnabled(false);
        setSnapDelegate(this);
    }

    private void a(int i, int i2) {
        if (i == this.e && i2 == this.f) {
            return;
        }
        this.e = i;
        this.f = i2;
        if (this.d != null) {
            this.d.a(this.e, this.f);
        }
    }

    private int b(int i) {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - (this.h * 2);
        int itemCount = getAdapter().getItemCount();
        int i2 = 0;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (i3 > i) {
            i2++;
            if (i2 >= itemCount) {
                return i;
            }
            i3 = (int) ((measuredWidth - (i2 * r2)) / (i2 + 0.333f));
        }
        return i3;
    }

    @Override // com.facebook.ads.internal.view.hscroll.d.a
    public int a(int i) {
        int iAbs = Math.abs(i);
        if (iAbs <= this.a) {
            return 0;
        }
        if (this.g == 0) {
            return 1;
        }
        return (iAbs / this.g) + 1;
    }

    @Override // com.facebook.ads.internal.view.hscroll.d
    protected void a(int i, boolean z) {
        super.a(i, z);
        a(i, 0);
    }

    public int getChildSpacing() {
        return this.h;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iRound = Math.round(getMeasuredWidth() / 1.91f);
        switch (View.MeasureSpec.getMode(i2)) {
            case ExploreByTouchHelper.INVALID_ID /* -2147483648 */:
                iRound = Math.min(View.MeasureSpec.getSize(i2), iRound);
                break;
            case 1073741824:
                iRound = View.MeasureSpec.getSize(i2);
                break;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iB = b(iRound - paddingTop);
        setMeasuredDimension(getMeasuredWidth(), paddingTop + iB);
        setChildWidth(iB + (this.h * 2));
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        this.c.a(adapter == null ? -1 : adapter.hashCode());
        super.setAdapter(adapter);
    }

    public void setChildSpacing(int i) {
        this.h = i;
    }

    public void setChildWidth(int i) {
        this.g = i;
        int measuredWidth = getMeasuredWidth();
        this.c.b((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.g) / 2);
        this.c.a(((double) this.g) / ((double) measuredWidth));
    }

    public void setCurrentPosition(int i) {
        a(i, false);
    }

    public void setOnPageChangedListener(a aVar) {
        this.d = aVar;
    }
}
