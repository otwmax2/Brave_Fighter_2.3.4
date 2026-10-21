package com.facebook.ads.internal.view.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public class a extends LinearLayout {
    private static final int a = Color.rgb(224, 224, 224);
    private static final Uri b = Uri.parse("http://www.facebook.com");
    private static final View.OnTouchListener c = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.a.a.1
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    view.setBackgroundColor(a.d);
                    return false;
                case 1:
                    view.setBackgroundColor(0);
                    return false;
                default:
                    return false;
            }
        }
    };
    private static final int d = Color.argb(34, 0, 0, 0);
    private ImageView e;
    private e f;
    private ImageView g;
    private InterfaceC0020a h;
    private String i;

    /* JADX INFO: renamed from: com.facebook.ads.internal.view.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0020a {
        void a();
    }

    public a(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (50.0f * f);
        int i2 = (int) (f * 4.0f);
        setBackgroundColor(-1);
        setGravity(16);
        this.e = new ImageView(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        this.e.setScaleType(ImageView.ScaleType.CENTER);
        this.e.setImageBitmap(com.facebook.ads.internal.q.b.c.a(com.facebook.ads.internal.q.b.b.BROWSER_CLOSE));
        this.e.setOnTouchListener(c);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.a.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.h != null) {
                    a.this.h.a();
                }
            }
        });
        addView(this.e, layoutParams);
        this.f = new e(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        this.f.setPadding(0, i2, 0, i2);
        addView(this.f, layoutParams2);
        this.g = new ImageView(context);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i, i);
        this.g.setScaleType(ImageView.ScaleType.CENTER);
        this.g.setOnTouchListener(c);
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.a.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(a.this.i) || "about:blank".equals(a.this.i)) {
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a.this.i));
                intent.addFlags(268435456);
                a.this.getContext().startActivity(intent);
            }
        });
        addView(this.g, layoutParams3);
        setupDefaultNativeBrowser(context);
    }

    private void setupDefaultNativeBrowser(Context context) {
        Bitmap bitmapA;
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", b), 65536);
        if (listQueryIntentActivities.size() == 0) {
            this.g.setVisibility(8);
            bitmapA = null;
        } else {
            bitmapA = (listQueryIntentActivities.size() == 1 && "com.android.chrome".equals(listQueryIntentActivities.get(0).activityInfo.packageName)) ? com.facebook.ads.internal.q.b.c.a(com.facebook.ads.internal.q.b.b.BROWSER_LAUNCH_CHROME) : com.facebook.ads.internal.q.b.c.a(com.facebook.ads.internal.q.b.b.BROWSER_LAUNCH_NATIVE);
        }
        this.g.setImageBitmap(bitmapA);
    }

    public void setListener(InterfaceC0020a interfaceC0020a) {
        this.h = interfaceC0020a;
    }

    public void setTitle(String str) {
        this.f.setTitle(str);
    }

    public void setUrl(String str) {
        this.i = str;
        if (TextUtils.isEmpty(str) || "about:blank".equals(str)) {
            this.f.setSubtitle(null);
            this.g.setEnabled(false);
            this.g.setColorFilter(new PorterDuffColorFilter(a, PorterDuff.Mode.SRC_IN));
        } else {
            this.f.setSubtitle(str);
            this.g.setEnabled(true);
            this.g.setColorFilter((ColorFilter) null);
        }
    }
}
