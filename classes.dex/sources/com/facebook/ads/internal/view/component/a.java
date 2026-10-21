package com.facebook.ads.internal.view.component;

import android.R;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.q.a.v;
import com.facebook.ads.internal.view.a;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends Button {
    private final Paint c;
    private final RectF d;
    private final boolean e;
    private final String f;

    @Nullable
    private final com.facebook.ads.internal.m.c g;

    @Nullable
    private final a.InterfaceC0019a h;
    private static final int b = (int) (4.0f * v.b);
    public static final int a = (int) (16.0f * v.b);

    public a(Context context, boolean z, boolean z2, String str, j jVar, com.facebook.ads.internal.m.c cVar, a.InterfaceC0019a interfaceC0019a) {
        super(context);
        this.g = cVar;
        this.h = interfaceC0019a;
        this.e = z;
        this.f = str;
        setTextSize(2, 16.0f);
        setTypeface(Typeface.create("sans-serif-medium", 0));
        setGravity(17);
        setPadding(a, a, a, a);
        setTextColor(jVar.f(z2));
        int iE = jVar.e(z2);
        int iBlendARGB = ColorUtils.blendARGB(iE, ViewCompat.MEASURED_STATE_MASK, 0.1f);
        this.c = new Paint();
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(iE);
        this.d = new RectF();
        if (z) {
            return;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, new ColorDrawable(iBlendARGB));
        stateListDrawable.addState(new int[0], new ColorDrawable(iE));
        setBackgroundDrawable(stateListDrawable);
    }

    public void a(String str, final String str2, final String str3, final Map<String, String> map) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || this.g == null) {
            setVisibility(8);
        } else {
            setText(str.toUpperCase(Locale.US));
            setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.component.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        com.facebook.ads.internal.a.a aVarA = com.facebook.ads.internal.a.b.a(a.this.getContext(), a.this.g, str3, Uri.parse(str2), map);
                        if (aVarA != null) {
                            aVarA.b();
                        }
                        if (a.this.h != null) {
                            a.this.h.a(a.this.f);
                        }
                    } catch (ActivityNotFoundException e) {
                        Log.e(String.valueOf(a.class), "Error while opening " + str2, e);
                    } catch (Exception e2) {
                        Log.e(String.valueOf(a.class), "Error executing action", e2);
                    }
                }
            });
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.e) {
            this.d.set(0.0f, 0.0f, getWidth(), getHeight());
            canvas.drawRoundRect(this.d, b, b, this.c);
        }
        super.onDraw(canvas);
    }
}
