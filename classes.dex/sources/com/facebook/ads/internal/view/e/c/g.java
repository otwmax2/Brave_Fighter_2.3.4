package com.facebook.ads.internal.view.e.c;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.facebook.ads.internal.view.e.a.c implements View.OnLayoutChangeListener {
    private final ImageView a;
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.j> b;
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.b> c;

    public g(Context context) {
        super(context);
        this.b = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.j>() { // from class: com.facebook.ads.internal.view.e.c.g.1
            @Override // com.facebook.ads.internal.j.f
            public Class<com.facebook.ads.internal.view.e.b.j> a() {
                return com.facebook.ads.internal.view.e.b.j.class;
            }

            @Override // com.facebook.ads.internal.j.f
            public void a(com.facebook.ads.internal.view.e.b.j jVar) {
                g.this.setVisibility(8);
            }
        };
        this.c = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.b>() { // from class: com.facebook.ads.internal.view.e.c.g.2
            @Override // com.facebook.ads.internal.j.f
            public Class<com.facebook.ads.internal.view.e.b.b> a() {
                return com.facebook.ads.internal.view.e.b.b.class;
            }

            @Override // com.facebook.ads.internal.j.f
            public void a(com.facebook.ads.internal.view.e.b.b bVar) {
                g.this.setVisibility(0);
            }
        };
        this.a = new ImageView(context);
        this.a.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.a.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.a);
    }

    @Override // com.facebook.ads.internal.view.e.a.c
    protected void a() {
        super.a();
        if (getVideoView() != null) {
            getVideoView().getEventBus().a(this.b, this.c);
            getVideoView().addOnLayoutChangeListener(this);
        }
    }

    @Override // com.facebook.ads.internal.view.e.a.c
    protected void b() {
        if (getVideoView() != null) {
            getVideoView().removeOnLayoutChangeListener(this);
            getVideoView().getEventBus().b(this.c, this.b);
        }
        super.b();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        int i9 = i4 - i2;
        int i10 = i3 - i;
        if (layoutParams.height == i9 && layoutParams.width == i10 && layoutParams.topMargin == i2 && layoutParams.leftMargin == i) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, i9);
        layoutParams2.topMargin = i2;
        layoutParams2.leftMargin = i;
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(i10, i9));
        setLayoutParams(layoutParams2);
    }

    public void setImage(@Nullable String str) {
        if (str == null) {
            setVisibility(8);
        } else {
            setVisibility(0);
            new com.facebook.ads.internal.view.b.d(this.a).a().a(str);
        }
    }
}
