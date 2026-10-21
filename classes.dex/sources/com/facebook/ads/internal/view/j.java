package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.r.a;
import com.facebook.ads.internal.view.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j extends m {
    private final com.facebook.ads.internal.q.a.s f;

    @Nullable
    private LinearLayout g;
    private String h;
    private long i;
    private String j;
    private List<i.a> k;

    @Nullable
    private com.facebook.ads.internal.view.component.d l;

    @Nullable
    private RecyclerView m;
    private com.facebook.ads.internal.r.a n;
    private int o;
    private int p;

    public j(Context context, com.facebook.ads.internal.m.c cVar) {
        super(context, cVar);
        this.f = new com.facebook.ads.internal.q.a.s();
    }

    private void a(com.facebook.ads.internal.adapters.v vVar) {
        this.h = vVar.a();
        this.j = vVar.f();
        this.o = vVar.j();
        this.p = vVar.k();
        List<com.facebook.ads.internal.adapters.d> listD = vVar.d();
        this.k = new ArrayList(listD.size());
        for (int i = 0; i < listD.size(); i++) {
            com.facebook.ads.internal.adapters.d dVar = listD.get(i);
            this.k.add(new i.a(i, listD.size(), dVar.f(), dVar.a(), dVar.c(), dVar.d(), dVar.e()));
        }
    }

    public void a() {
        if (this.g != null) {
            this.g.removeAllViews();
            this.g = null;
        }
        if (this.m != null) {
            this.m.removeAllViews();
            this.m = null;
        }
        if (this.l != null) {
            this.l.removeAllViews();
            this.l = null;
        }
    }

    @Override // com.facebook.ads.internal.view.a
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        com.facebook.ads.internal.adapters.v vVar = (com.facebook.ads.internal.adapters.v) intent.getSerializableExtra("ad_data_bundle");
        super.a(audienceNetworkActivity, vVar);
        a(vVar);
        setUpLayout(audienceNetworkActivity.getResources().getConfiguration().orientation);
        this.i = System.currentTimeMillis();
    }

    @Override // com.facebook.ads.internal.view.a
    public void a(Bundle bundle) {
    }

    @Override // com.facebook.ads.internal.view.a
    public void i() {
    }

    @Override // com.facebook.ads.internal.view.a
    public void j() {
    }

    @Override // com.facebook.ads.internal.view.m, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        a();
        setUpLayout(configuration.orientation);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.internal.view.m, com.facebook.ads.internal.view.a
    public void onDestroy() {
        super.onDestroy();
        com.facebook.ads.internal.j.b.a(com.facebook.ads.internal.j.a.a(this.i, a.EnumC0013a.XOUT, this.j));
        if (!TextUtils.isEmpty(this.h)) {
            HashMap map = new HashMap();
            this.n.a(map);
            map.put("touch", com.facebook.ads.internal.q.a.j.a(this.f.e()));
            this.b.h(this.h, map);
        }
        a();
        this.n.b();
        this.n = null;
        this.k = null;
    }

    public void setUpLayout(int i) {
        int iMin;
        int i2;
        int i3;
        boolean z;
        this.g = new LinearLayout(getContext());
        if (i == 1) {
            this.g.setGravity(17);
        } else {
            this.g.setGravity(48);
        }
        this.g.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.g.setOrientation(1);
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        int i5 = displayMetrics.heightPixels;
        float f = displayMetrics.density;
        if (i == 1) {
            iMin = Math.min(i4 - ((int) (32.0f * f)), i5 / 2);
            i2 = (i4 - iMin) / 8;
            i3 = i2 * 4;
            z = false;
        } else {
            iMin = i5 - ((int) (120.0f * f));
            i2 = (int) (8.0f * f);
            i3 = i2 * 2;
            z = true;
        }
        this.m = new RecyclerView(getContext());
        this.m.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.m.setAdapter(new i(this.k, this.b, this.f, getAudienceNetworkListener(), i == 1 ? this.d : this.e, this.h, iMin, i2, i3, z));
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        linearLayoutManager.setAutoMeasureEnabled(true);
        this.m.setLayoutManager(linearLayoutManager);
        this.n = new com.facebook.ads.internal.r.a(this.m, 1, new a.AbstractC0017a() { // from class: com.facebook.ads.internal.view.j.1
            @Override // com.facebook.ads.internal.r.a.AbstractC0017a
            public void a() {
                HashMap map = new HashMap();
                if (j.this.f.b()) {
                    return;
                }
                j.this.f.a();
                if (j.this.getAudienceNetworkListener() != null) {
                    j.this.getAudienceNetworkListener().a("com.facebook.ads.interstitial.impression.logged");
                }
                if (TextUtils.isEmpty(j.this.h)) {
                    return;
                }
                j.this.n.a(map);
                map.put("touch", com.facebook.ads.internal.q.a.j.a(j.this.f.e()));
                j.this.b.a(j.this.h, map);
            }
        });
        this.n.a(this.o);
        this.n.b(this.p);
        if (i == 1) {
            new PagerSnapHelper().attachToRecyclerView(this.m);
            this.m.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.facebook.ads.internal.view.j.2
                public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                    super.onScrollStateChanged(recyclerView, i6);
                }

                public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                    super.onScrolled(recyclerView, i6, i7);
                    int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                    int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                    int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
                    if (iFindFirstCompletelyVisibleItemPosition == -1) {
                        if (i6 > 0) {
                            if (j.this.l != null) {
                                j.this.l.a(iFindLastVisibleItemPosition);
                            }
                            linearLayoutManager.findViewByPosition(iFindLastVisibleItemPosition).setAlpha(1.0f);
                            return;
                        } else {
                            if (j.this.l != null) {
                                j.this.l.a(iFindFirstVisibleItemPosition);
                            }
                            linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition).setAlpha(1.0f);
                            return;
                        }
                    }
                    if (j.this.l != null) {
                        j.this.l.a(iFindFirstCompletelyVisibleItemPosition);
                    }
                    if (iFindFirstCompletelyVisibleItemPosition != iFindFirstVisibleItemPosition) {
                        linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition).setAlpha(0.5f);
                    }
                    linearLayoutManager.findViewByPosition(iFindFirstCompletelyVisibleItemPosition).setAlpha(1.0f);
                    if (iFindFirstCompletelyVisibleItemPosition != iFindLastVisibleItemPosition) {
                        linearLayoutManager.findViewByPosition(iFindLastVisibleItemPosition).setAlpha(0.5f);
                    }
                }
            });
            this.l = new com.facebook.ads.internal.view.component.d(getContext(), i == 1 ? this.d : this.e, this.k.size());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) (8.0f * f));
            layoutParams.setMargins(0, (int) (12.0f * f), 0, 0);
            this.l.setLayoutParams(layoutParams);
        }
        this.g.addView(this.m);
        if (this.l != null) {
            this.g.addView(this.l);
        }
        a((View) this.g, false, i);
        this.n.a();
    }
}
