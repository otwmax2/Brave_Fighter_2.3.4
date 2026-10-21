package com.facebook.ads.internal.view.component;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.Keep;
import android.view.View;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class CircularProgressView extends View {
    private final float a;
    private final RectF b;
    private final Paint c;
    private final Paint d;
    private float e;

    public CircularProgressView(Context context) {
        super(context);
        this.a = 3.0f * Resources.getSystem().getDisplayMetrics().density;
        this.e = 0.0f;
        this.b = new RectF();
        this.c = new Paint(1);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setStrokeWidth(this.a);
        this.d = new Paint(1);
        this.d.setStyle(Paint.Style.STROKE);
        this.d.setStrokeWidth(this.a);
    }

    public void a(int i, int i2) {
        this.c.setColor(i);
        this.d.setColor(i2);
    }

    @Keep
    public float getProgress() {
        return this.e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.b, 0.0f, 360.0f, false, this.c);
        canvas.drawArc(this.b, -90.0f, (this.e * 360.0f) / 100.0f, false, this.d);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMin = Math.min(getDefaultSize(getSuggestedMinimumHeight(), i2), getDefaultSize(getSuggestedMinimumWidth(), i));
        setMeasuredDimension(iMin, iMin);
        this.b.set((this.a / 2.0f) + 0.0f + getPaddingLeft(), (this.a / 2.0f) + 0.0f + getPaddingTop(), (iMin - (this.a / 2.0f)) - getPaddingRight(), (iMin - (this.a / 2.0f)) - getPaddingBottom());
    }

    @Keep
    public void setProgress(float f) {
        this.e = Math.min(f, 100.0f);
        postInvalidate();
    }

    public void setProgressWithAnimation(float f) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", f);
        objectAnimatorOfFloat.setDuration(400L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
    }
}
