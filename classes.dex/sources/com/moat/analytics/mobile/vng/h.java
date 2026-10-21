package com.moat.analytics.mobile.vng;

import android.support.v4.widget.ExploreByTouchHelper;
import android.view.View;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class h<PlayerOrIMAAd> extends c<PlayerOrIMAAd> {
    int l;
    private a m;
    private int n;
    private double o;
    private int p;
    private int q;

    protected enum a {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    h(String str) {
        super(str);
        this.p = ExploreByTouchHelper.INVALID_ID;
        this.l = ExploreByTouchHelper.INVALID_ID;
        this.n = ExploreByTouchHelper.INVALID_ID;
        this.o = Double.NaN;
        this.q = 0;
        this.m = a.UNINITIALIZED;
    }

    private void n() {
        this.h.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.vng.h.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.this.j.get() == null || h.this.i() || !Boolean.valueOf(h.this.m()).booleanValue()) {
                        h.this.h();
                    } else {
                        h.this.h.postDelayed(this, 200L);
                    }
                } catch (Exception e) {
                    h.this.h();
                    m.a(e);
                }
            }
        }, 200L);
    }

    @Override // com.moat.analytics.mobile.vng.c
    protected JSONObject a(MoatAdEvent moatAdEvent) {
        Integer numValueOf;
        if (moatAdEvent.b.equals(MoatAdEvent.a)) {
            try {
                numValueOf = j();
            } catch (Exception e) {
                numValueOf = Integer.valueOf(this.n);
            }
            moatAdEvent.b = numValueOf;
        } else {
            numValueOf = moatAdEvent.b;
        }
        if (moatAdEvent.b.intValue() < 0 || (moatAdEvent.b.intValue() == 0 && moatAdEvent.d == MoatAdEventType.AD_EVT_COMPLETE && this.n > 0)) {
            numValueOf = Integer.valueOf(this.n);
            moatAdEvent.b = numValueOf;
        }
        if (moatAdEvent.d == MoatAdEventType.AD_EVT_COMPLETE) {
            if (numValueOf.intValue() == Integer.MIN_VALUE || this.l == Integer.MIN_VALUE || !a(numValueOf, Integer.valueOf(this.l))) {
                this.m = a.STOPPED;
                moatAdEvent.d = MoatAdEventType.AD_EVT_STOPPED;
            } else {
                this.m = a.COMPLETED;
            }
        }
        return super.a(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.vng.c
    public boolean a(Map<String, String> map, PlayerOrIMAAd playerorimaad, View view) {
        try {
            if (!this.e) {
                n();
            }
        } catch (Exception e) {
            m.a(e);
        }
        return super.a(map, playerorimaad, view);
    }

    protected abstract Integer j();

    protected abstract boolean k();

    protected abstract Integer l();

    /* JADX WARN: Removed duplicated region for block: B:58:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean m() {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.vng.h.m():boolean");
    }

    @Override // com.moat.analytics.mobile.vng.c, com.moat.analytics.mobile.vng.b
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
            p.a("[SUCCESS] ", a() + " stopTracking succeeded for " + e());
        } catch (Exception e) {
            m.a(e);
        }
    }
}
