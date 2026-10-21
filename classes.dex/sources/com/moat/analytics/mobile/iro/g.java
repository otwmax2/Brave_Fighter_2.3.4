package com.moat.analytics.mobile.iro;

import android.support.v4.widget.ExploreByTouchHelper;
import android.view.View;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class g extends d {

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private int f306;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private double f307;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private int f308;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private int f309;

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private int f310;

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    private int f311;

    /* JADX INFO: renamed from: ʻॱ, reason: contains not printable characters */
    abstract Integer mo259();

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    abstract Integer mo261();

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    abstract boolean mo262();

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    abstract boolean mo263();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        public static final int f315 = 1;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        public static final int f317 = 2;

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        public static final int f313 = 3;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        public static final int f314 = 4;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        public static final int f316 = 5;

        static {
            int[] iArr = {1, 2, 3, 4, 5};
        }
    }

    g(String str) {
        super(str);
        this.f306 = ExploreByTouchHelper.INVALID_ID;
        this.f310 = ExploreByTouchHelper.INVALID_ID;
        this.f308 = ExploreByTouchHelper.INVALID_ID;
        this.f311 = 0;
        this.f309 = a.f315;
        this.f307 = Double.NaN;
    }

    @Override // com.moat.analytics.mobile.iro.d
    /* JADX INFO: renamed from: ˋ */
    public final boolean mo224(Map<String, String> map, View view) {
        try {
            boolean zMo224 = super.mo224(map, view);
            if (!zMo224) {
                return zMo224;
            }
            this.f269.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.iro.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (g.this.mo262() && !g.this.m226() && Boolean.valueOf(g.this.m260()).booleanValue()) {
                            g.this.f269.postDelayed(this, 200L);
                        } else {
                            g.this.m227();
                        }
                    } catch (Exception e) {
                        g.this.m227();
                        o.m311(e);
                    }
                }
            }, 200L);
            return zMo224;
        } catch (Exception e) {
            b.m203(3, "IntervalVideoTracker", this, "Problem with video loop");
            m217("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.iro.d, com.moat.analytics.mobile.iro.c
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
            super.stopTracking();
        } catch (Exception e) {
            o.m311(e);
        }
    }

    @Override // com.moat.analytics.mobile.iro.d
    public void setPlayerVolume(Double d) {
        super.setPlayerVolume(d);
        this.f307 = m228().doubleValue();
    }

    @Override // com.moat.analytics.mobile.iro.d
    /* JADX INFO: renamed from: ˋ */
    final JSONObject mo223(MoatAdEvent moatAdEvent) {
        Integer numValueOf;
        if (!moatAdEvent.f230.equals(MoatAdEvent.f227)) {
            numValueOf = moatAdEvent.f230;
        } else {
            try {
                numValueOf = mo261();
            } catch (Exception e) {
                numValueOf = Integer.valueOf(this.f308);
            }
            moatAdEvent.f230 = numValueOf;
        }
        if (moatAdEvent.f230.intValue() < 0 || (moatAdEvent.f230.intValue() == 0 && moatAdEvent.f232 == MoatAdEventType.AD_EVT_COMPLETE && this.f308 > 0)) {
            numValueOf = Integer.valueOf(this.f308);
            moatAdEvent.f230 = numValueOf;
        }
        if (moatAdEvent.f232 == MoatAdEventType.AD_EVT_COMPLETE) {
            if (numValueOf.intValue() == Integer.MIN_VALUE || this.f310 == Integer.MIN_VALUE || !m220(numValueOf, Integer.valueOf(this.f310))) {
                this.f309 = a.f314;
                moatAdEvent.f232 = MoatAdEventType.AD_EVT_STOPPED;
            } else {
                this.f309 = a.f316;
            }
        }
        return super.mo223(moatAdEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    @android.support.annotation.CallSuper
    /* JADX INFO: renamed from: ʼॱ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean m260() throws com.moat.analytics.mobile.iro.o {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.g.m260():boolean");
    }
}
