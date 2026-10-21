package com.facebook.ads.internal.view.e.c;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import android.widget.Button;

/* JADX INFO: loaded from: classes.dex */
public class m extends Button {
    private final Path a;
    private final Path b;
    private final Paint c;
    private final Path d;
    private boolean e;

    public m(Context context) {
        this(context, false);
    }

    public m(Context context, final boolean z) {
        super(context);
        this.e = false;
        this.a = new Path();
        this.b = new Path();
        this.d = new Path();
        this.c = new Paint() { // from class: com.facebook.ads.internal.view.e.c.m.1
            {
                setStyle(Paint.Style.FILL_AND_STROKE);
                setStrokeCap(Paint.Cap.ROUND);
                setStrokeWidth(3.0f);
                setAntiAlias(true);
                setColor(z ? -1 : -10066330);
            }
        };
        setClickable(true);
        setBackgroundColor(0);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT < 17) {
            setLayerType(1, null);
        }
        float fMax = Math.max(canvas.getWidth(), canvas.getHeight()) / 100.0f;
        if (this.e) {
            this.d.rewind();
            this.d.moveTo(26.5f * fMax, 15.5f * fMax);
            this.d.lineTo(26.5f * fMax, 84.5f * fMax);
            this.d.lineTo(90.0f * fMax, 50.0f * fMax);
            this.d.lineTo(26.5f * fMax, fMax * 15.5f);
            this.d.close();
            canvas.drawPath(this.d, this.c);
        } else {
            this.a.rewind();
            this.a.moveTo(29.0f * fMax, 21.0f * fMax);
            this.a.lineTo(29.0f * fMax, 79.0f * fMax);
            this.a.lineTo(45.0f * fMax, 79.0f * fMax);
            this.a.lineTo(45.0f * fMax, 21.0f * fMax);
            this.a.lineTo(29.0f * fMax, 21.0f * fMax);
            this.a.close();
            this.b.rewind();
            this.b.moveTo(55.0f * fMax, 21.0f * fMax);
            this.b.lineTo(55.0f * fMax, 79.0f * fMax);
            this.b.lineTo(71.0f * fMax, 79.0f * fMax);
            this.b.lineTo(71.0f * fMax, 21.0f * fMax);
            this.b.lineTo(55.0f * fMax, fMax * 21.0f);
            this.b.close();
            canvas.drawPath(this.a, this.c);
            canvas.drawPath(this.b, this.c);
        }
        super.onDraw(canvas);
    }

    public void setChecked(boolean z) {
        this.e = z;
        refreshDrawableState();
        invalidate();
    }
}
