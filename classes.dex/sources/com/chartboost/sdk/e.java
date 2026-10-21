package com.chartboost.sdk;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public final Handler a;
    public final c b;
    protected JSONObject d;
    public final com.chartboost.sdk.Model.c e;
    public boolean c = false;
    public final Map<View, Runnable> g = new IdentityHashMap();
    protected boolean h = true;
    protected boolean i = true;
    private a k = null;
    protected int f = CBUtility.a();
    private boolean j = false;

    protected abstract a b(Context context);

    public abstract class a extends RelativeLayout {
        Integer a;
        private boolean c;
        private int d;
        private int e;
        private int f;
        private int g;

        protected abstract void a(int i, int i2);

        public a(Context context) {
            super(context);
            this.c = false;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.a = null;
            setFocusableInTouchMode(true);
            requestFocus();
        }

        @Override // android.view.View
        protected void onSizeChanged(int w, int h, int oldw, int oldh) {
            super.onSizeChanged(w, h, oldw, oldh);
            this.f = w;
            this.g = h;
            if (this.d != -1 && this.e != -1 && e.this.e != null && e.this.e.p.b == 0) {
                a();
            }
        }

        private boolean b(int i, int i2) {
            boolean z = true;
            if (e.this.e != null && e.this.e.p.b == 1) {
                return true;
            }
            if (this.c) {
                return false;
            }
            int iA = CBUtility.a();
            if (this.d == i && this.e == i2 && this.a != null && this.a.intValue() == iA) {
                return true;
            }
            this.c = true;
            try {
                if (e.this.h && CBUtility.a(iA)) {
                    e.this.f = iA;
                } else if (e.this.i && CBUtility.b(iA)) {
                    e.this.f = iA;
                }
                a(i, i2);
                post(new Runnable() { // from class: com.chartboost.sdk.e.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.requestLayout();
                    }
                });
                this.d = i;
                this.e = i2;
                this.a = Integer.valueOf(iA);
            } catch (Exception e) {
                CBLogging.b("CBViewProtocol", "Exception raised while layouting Subviews", e);
                com.chartboost.sdk.Tracking.a.a(getClass(), "tryLayout", e);
                z = false;
            }
            this.c = false;
            return z;
        }

        public final void a() {
            a(false);
        }

        public final void a(boolean z) {
            if (z) {
                this.a = null;
            }
            a((Activity) getContext());
        }

        public void b() {
        }

        public boolean a(Activity activity) {
            int height;
            int width;
            if (this.f == -1 || this.g == -1) {
                try {
                    width = getWidth();
                    height = getHeight();
                    if (width == 0 || height == 0) {
                        View viewFindViewById = activity.getWindow().findViewById(R.id.content);
                        if (viewFindViewById == null) {
                            viewFindViewById = activity.getWindow().getDecorView();
                        }
                        width = viewFindViewById.getWidth();
                        height = viewFindViewById.getHeight();
                    }
                } catch (Exception e) {
                    height = 0;
                    width = 0;
                }
                if (width == 0 || height == 0) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                    width = displayMetrics.widthPixels;
                    height = displayMetrics.heightPixels;
                }
                this.f = width;
                this.g = height;
            }
            return b(this.f, this.g);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            synchronized (e.this.g) {
                Iterator<Runnable> it = e.this.g.values().iterator();
                while (it.hasNext()) {
                    e.this.a.removeCallbacks(it.next());
                }
                e.this.g.clear();
            }
        }

        public final void a(View view) {
            int i = 200;
            if (200 == getId()) {
                i = 201;
            }
            int i2 = i;
            View viewFindViewById = findViewById(i);
            while (viewFindViewById != null) {
                i2++;
                viewFindViewById = findViewById(i2);
            }
            view.setId(i2);
            view.setSaveEnabled(false);
        }
    }

    public static boolean a(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 4;
    }

    public e(com.chartboost.sdk.Model.c cVar, Handler handler, c cVar2) {
        this.a = handler;
        this.b = cVar2;
        this.e = cVar;
    }

    public int a() {
        return this.f;
    }

    public boolean a(JSONObject jSONObject) {
        this.d = com.chartboost.sdk.Libraries.e.a(jSONObject, "assets");
        if (this.d != null) {
            return true;
        }
        this.d = new JSONObject();
        CBLogging.b("CBViewProtocol", "Media got from the response is null or empty");
        a(CBError.CBImpressionError.INVALID_RESPONSE);
        return false;
    }

    public void b() {
        i();
    }

    public CBError.CBImpressionError c() {
        Activity activityB = this.b.b();
        if (activityB == null) {
            this.k = null;
            return CBError.CBImpressionError.NO_HOST_ACTIVITY;
        }
        if (!this.i && !this.h) {
            return CBError.CBImpressionError.WRONG_ORIENTATION;
        }
        if (this.k == null) {
            this.k = b(activityB);
        }
        if (this.e.p.b != 0 || this.k.a(activityB)) {
            return null;
        }
        this.k = null;
        return CBError.CBImpressionError.ERROR_CREATING_VIEW;
    }

    public void d() {
        f();
        synchronized (this.g) {
            Iterator<Runnable> it = this.g.values().iterator();
            while (it.hasNext()) {
                this.a.removeCallbacks(it.next());
            }
            this.g.clear();
        }
    }

    public a e() {
        return this.k;
    }

    public void f() {
        if (this.k != null) {
            this.k.b();
        }
        this.k = null;
    }

    public JSONObject g() {
        return this.d;
    }

    public void a(CBError.CBImpressionError cBImpressionError) {
        this.e.a(cBImpressionError);
    }

    public void h() {
        if (!this.j) {
            this.j = true;
            this.e.c();
        }
    }

    protected void i() {
        this.e.d();
    }

    public boolean b(JSONObject jSONObject) {
        return this.e.a(jSONObject);
    }

    public void a(boolean z, View view) {
        a(z, view, true);
    }

    public void a(final boolean z, final View view, boolean z2) {
        if ((z && view.getVisibility() == 0) || (!z && view.getVisibility() == 8)) {
            synchronized (this.g) {
                if (!this.g.containsKey(view)) {
                    return;
                }
            }
        }
        if (!z2) {
            view.setVisibility(z ? 0 : 8);
            view.setClickable(z);
        } else {
            Runnable runnable = new Runnable() { // from class: com.chartboost.sdk.e.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!z) {
                        view.setVisibility(8);
                        view.setClickable(false);
                    }
                    synchronized (e.this.g) {
                        e.this.g.remove(view);
                    }
                }
            };
            if (this.e.p.b == 1) {
            }
            this.e.i.a.a(z, view, 500L);
            a(view, runnable, 500L);
        }
    }

    public void a(View view, Runnable runnable, long j) {
        synchronized (this.g) {
            Runnable runnable2 = this.g.get(view);
            if (runnable2 != null) {
                this.a.removeCallbacks(runnable2);
            }
            this.g.put(view, runnable);
        }
        this.a.postDelayed(runnable, j);
    }

    public static int a(String str) {
        if (str == null) {
            return 0;
        }
        if (!str.startsWith("#")) {
            try {
                return Color.parseColor(str);
            } catch (IllegalArgumentException e) {
                str = "#" + str;
            }
        }
        if (str.length() == 4 || str.length() == 5) {
            StringBuilder sb = new StringBuilder((str.length() * 2) + 1);
            sb.append("#");
            for (int i = 0; i < str.length() - 1; i++) {
                sb.append(str.charAt(i + 1));
                sb.append(str.charAt(i + 1));
            }
            str = sb.toString();
        }
        try {
            return Color.parseColor(str);
        } catch (IllegalArgumentException e2) {
            CBLogging.d("CBViewProtocol", "error parsing color " + str, e2);
            return 0;
        }
    }

    public float j() {
        return 0.0f;
    }

    public float k() {
        return 0.0f;
    }

    public boolean l() {
        return false;
    }

    public void m() {
        if (this.c) {
            this.c = false;
        }
        a aVarE = e();
        if (aVarE != null) {
            if (aVarE.a == null || CBUtility.a() != aVarE.a.intValue()) {
                aVarE.a(false);
            }
        }
    }

    public void n() {
        this.c = true;
    }
}
