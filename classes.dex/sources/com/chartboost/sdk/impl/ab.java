package com.chartboost.sdk.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.impl.au;
import com.chartboost.sdk.impl.v;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public class ab extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private static final CharSequence k = "00:00";
    final RelativeLayout a;
    final aa b;
    final aa c;
    final ay d;
    final TextView e;
    final x f;
    final au g;
    final v h;
    final Handler i;
    final Runnable j;
    private boolean l;
    private boolean m;
    private final Runnable n;
    private final Runnable o;

    public ab(Context context, v vVar) {
        super(context);
        this.l = false;
        this.m = false;
        this.n = new Runnable() { // from class: com.chartboost.sdk.impl.ab.2
            @Override // java.lang.Runnable
            public void run() {
                ab.this.a(false);
            }
        };
        this.o = new Runnable() { // from class: com.chartboost.sdk.impl.ab.3
            @Override // java.lang.Runnable
            public void run() {
                if (ab.this.b != null) {
                    ab.this.b.setVisibility(8);
                }
                if (ab.this.h.M) {
                    ab.this.f.setVisibility(8);
                }
                ab.this.c.setVisibility(8);
                if (ab.this.d != null) {
                    ab.this.d.setEnabled(false);
                }
            }
        };
        this.j = new Runnable() { // from class: com.chartboost.sdk.impl.ab.4
            private int b = 0;

            @Override // java.lang.Runnable
            public void run() {
                v.a aVarE = ab.this.h.e();
                if (aVarE != null) {
                    if (ab.this.g.a().e()) {
                        int iD = ab.this.g.a().d();
                        if (iD > 0) {
                            ab.this.h.v = iD;
                            if (ab.this.h.v / 1000.0f > 0.0f && !ab.this.h.t()) {
                                ab.this.h.r();
                                ab.this.h.a(true);
                            }
                        }
                        float fC = iD / ab.this.g.a().c();
                        if (ab.this.h.M) {
                            ab.this.f.a(fC);
                        }
                        int i = iD / 1000;
                        if (this.b != i) {
                            this.b = i;
                            ab.this.e.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(i / 60), Integer.valueOf(i % 60)));
                        }
                    }
                    if (aVarE.f()) {
                        ay ayVarD = aVarE.d(true);
                        if (ayVarD.getVisibility() == 8) {
                            ab.this.h.a(true, ayVarD);
                            ayVarD.setEnabled(true);
                        }
                    }
                    ab.this.i.removeCallbacks(ab.this.j);
                    ab.this.i.postDelayed(ab.this.j, 16L);
                }
            }
        };
        this.h = vVar;
        this.i = vVar.a;
        JSONObject jSONObjectG = vVar.g();
        float f = context.getResources().getDisplayMetrics().density;
        int iRound = Math.round(f * 10.0f);
        com.chartboost.sdk.g gVarA = com.chartboost.sdk.g.a();
        this.g = (au) gVarA.a(new au(context));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        addView(this.g, layoutParams);
        this.a = (RelativeLayout) gVarA.a(new RelativeLayout(context));
        if (jSONObjectG != null && !jSONObjectG.isNull("video-click-button")) {
            this.b = (aa) gVarA.a(new aa(context));
            this.b.setVisibility(8);
            this.d = new ay(context) { // from class: com.chartboost.sdk.impl.ab.1
                @Override // com.chartboost.sdk.impl.ay
                protected void a(MotionEvent motionEvent) {
                    ab.this.h.b(com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("x", Float.valueOf(motionEvent.getX())), com.chartboost.sdk.Libraries.e.a("y", Float.valueOf(motionEvent.getY())), com.chartboost.sdk.Libraries.e.a("w", Integer.valueOf(ab.this.d.getWidth())), com.chartboost.sdk.Libraries.e.a("h", Integer.valueOf(ab.this.d.getHeight()))));
                }
            };
            this.d.a(ImageView.ScaleType.FIT_CENTER);
            com.chartboost.sdk.Libraries.h hVar = vVar.I;
            Point pointB = vVar.b("video-click-button");
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.leftMargin = Math.round(pointB.x / hVar.f());
            layoutParams2.topMargin = Math.round(pointB.y / hVar.f());
            vVar.a(layoutParams2, hVar, 1.0f);
            this.d.a(hVar);
            this.b.addView(this.d, layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, Math.round(layoutParams2.height + (10.0f * f)));
            layoutParams3.addRule(10);
            this.a.addView(this.b, layoutParams3);
        } else {
            this.b = null;
            this.d = null;
        }
        this.c = (aa) gVarA.a(new aa(context));
        this.c.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, Math.round(32.5f * f));
        layoutParams4.addRule(12);
        this.a.addView(this.c, layoutParams4);
        this.c.setGravity(16);
        this.c.setPadding(iRound, iRound, iRound, iRound);
        this.e = (TextView) gVarA.a(new TextView(context));
        this.e.setTextColor(-1);
        this.e.setTextSize(2, 11.0f);
        this.e.setText(k);
        this.e.setPadding(0, 0, iRound, 0);
        this.e.setSingleLine();
        this.e.measure(0, 0);
        int measuredWidth = this.e.getMeasuredWidth();
        this.e.setGravity(17);
        this.c.addView(this.e, new LinearLayout.LayoutParams(measuredWidth, -1));
        this.f = (x) gVarA.a(new x(context));
        this.f.setVisibility(8);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, Math.round(10.0f * f));
        layoutParams5.setMargins(0, CBUtility.a(1, context), 0, 0);
        this.c.addView(this.f, layoutParams5);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams6.addRule(6, this.g.getId());
        layoutParams6.addRule(8, this.g.getId());
        layoutParams6.addRule(5, this.g.getId());
        layoutParams6.addRule(7, this.g.getId());
        addView(this.a, layoutParams6);
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (this.d != null) {
            this.d.setEnabled(enabled);
        }
        if (enabled) {
            b(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i.removeCallbacks(this.j);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent e) {
        if (!this.g.a().e() || e.getActionMasked() != 0) {
            return false;
        }
        if (this.h == null) {
            return true;
        }
        a(true);
        return true;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer arg0) {
        this.h.v = this.g.a().c();
        if (this.h.e() != null) {
            this.h.e().e();
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mp) {
        this.h.w = this.g.a().c();
        this.h.e().a(true);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mp, int what, int extra) {
        this.h.v();
        return false;
    }

    void a(boolean z) {
        a(!this.l, z);
    }

    protected void a(boolean z, boolean z2) {
        this.i.removeCallbacks(this.n);
        this.i.removeCallbacks(this.o);
        if (this.h.y && this.h.p() && z != this.l) {
            this.l = z;
            AlphaAnimation alphaAnimation = this.l ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(z2 ? 100L : 200L);
            alphaAnimation.setFillAfter(true);
            if (!this.m && this.b != null) {
                this.b.setVisibility(0);
                this.b.startAnimation(alphaAnimation);
                if (this.d != null) {
                    this.d.setEnabled(true);
                }
            }
            if (this.h.M) {
                this.f.setVisibility(0);
            }
            this.c.setVisibility(0);
            this.c.startAnimation(alphaAnimation);
            if (this.l) {
                this.i.postDelayed(this.n, 3000L);
            } else {
                this.i.postDelayed(this.o, alphaAnimation.getDuration());
            }
        }
    }

    public void b(boolean z) {
        this.i.removeCallbacks(this.n);
        this.i.removeCallbacks(this.o);
        if (z) {
            if (!this.m && this.b != null) {
                this.b.setVisibility(0);
            }
            if (this.h.M) {
                this.f.setVisibility(0);
            }
            this.c.setVisibility(0);
            if (this.d != null) {
                this.d.setEnabled(true);
            }
        } else {
            if (this.b != null) {
                this.b.clearAnimation();
                this.b.setVisibility(8);
            }
            this.c.clearAnimation();
            if (this.h.M) {
                this.f.setVisibility(8);
            }
            this.c.setVisibility(8);
            if (this.d != null) {
                this.d.setEnabled(false);
            }
        }
        this.l = z;
    }

    public void c(boolean z) {
        setBackgroundColor(z ? ViewCompat.MEASURED_STATE_MASK : 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (!z) {
            layoutParams.addRule(6, this.g.getId());
            layoutParams.addRule(8, this.g.getId());
            layoutParams.addRule(5, this.g.getId());
            layoutParams.addRule(7, this.g.getId());
        }
        this.a.setLayoutParams(layoutParams);
        if (this.b != null) {
            this.b.setGravity(8388627);
            this.b.requestLayout();
        }
    }

    public void a() {
        c(CBUtility.a(CBUtility.a()));
    }

    public au.a b() {
        return this.g.a();
    }

    public x c() {
        return this.f;
    }

    public void a(int i) {
        if (this.b != null) {
            this.b.setBackgroundColor(i);
        }
        this.c.setBackgroundColor(i);
    }

    public void d() {
        if (this.b != null) {
            this.b.setVisibility(8);
        }
        this.m = true;
        if (this.d != null) {
            this.d.setEnabled(false);
        }
    }

    public void d(boolean z) {
        this.e.setVisibility(z ? 0 : 8);
    }

    public void a(String str) {
        this.g.a().a((MediaPlayer.OnCompletionListener) this);
        this.g.a().a((MediaPlayer.OnErrorListener) this);
        this.g.a().a((MediaPlayer.OnPreparedListener) this);
        this.g.a().a(Uri.parse(str));
    }

    public void e() {
        this.i.postDelayed(new Runnable() { // from class: com.chartboost.sdk.impl.ab.5
            @Override // java.lang.Runnable
            public void run() {
                ab.this.g.setVisibility(0);
            }
        }, 500L);
        this.g.a().a();
        this.i.removeCallbacks(this.j);
        this.i.postDelayed(this.j, 16L);
    }

    public void f() {
        if (this.g.a().e()) {
            this.h.v = this.g.a().d();
            this.g.a().b();
        }
        if (this.h.e().e.getVisibility() == 0) {
            this.h.e().e.postInvalidate();
        }
        this.i.removeCallbacks(this.j);
    }

    public void g() {
        if (this.g.a().e()) {
            this.h.v = this.g.a().d();
        }
        this.g.a().b();
        this.i.removeCallbacks(this.j);
    }

    public void h() {
        this.g.setVisibility(8);
        invalidate();
    }
}
