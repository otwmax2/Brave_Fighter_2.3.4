package com.facebook.ads.internal.view.c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class a extends RelativeLayout {
    private final String a;
    private com.facebook.ads.internal.view.e.b b;
    private final Paint c;
    private final RectF d;

    public a(Context context, String str, String str2, int i, com.facebook.ads.internal.view.e.b bVar, final com.facebook.ads.internal.m.c cVar, final String str3) {
        super(context);
        this.a = str;
        this.b = bVar;
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setTextSize(16.0f);
        textView.setText(str2);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        setGravity(17);
        addView(textView);
        this.c = new Paint();
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(i);
        this.d = new RectF();
        setBackgroundColor(0);
        setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.c.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Uri uri = Uri.parse(a.this.a);
                    a.this.b.getEventBus().a(new com.facebook.ads.internal.view.e.b.a(uri));
                    com.facebook.ads.internal.a.a aVarA = com.facebook.ads.internal.a.b.a(a.this.getContext(), cVar, str3, uri, new HashMap());
                    if (aVarA != null) {
                        aVarA.b();
                    }
                } catch (ActivityNotFoundException e) {
                    Log.e(String.valueOf(a.class), "Error while opening " + a.this.a, e);
                } catch (Exception e2) {
                    Log.e(String.valueOf(a.class), "Error executing action", e2);
                }
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.d.set(0.0f, 0.0f, getWidth(), getHeight());
        canvas.drawRoundRect(this.d, 10.0f * f, f * 10.0f, this.c);
        super.onDraw(canvas);
    }
}
