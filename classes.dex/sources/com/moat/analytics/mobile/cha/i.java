package com.moat.analytics.mobile.cha;

import android.support.v4.widget.ExploreByTouchHelper;
import android.view.View;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class i extends b {

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private int f84;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private int f85;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private int f86;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private double f87;

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private int f88;

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    private int f89;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    abstract boolean mo75();

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    abstract Integer mo76();

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    abstract boolean mo77();

    /* JADX INFO: renamed from: ॱᐝ, reason: contains not printable characters */
    abstract Integer mo78();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class c {

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        public static final int f94 = 1;

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        public static final int f91 = 2;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        public static final int f93 = 3;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        public static final int f92 = 4;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        public static final int f95 = 5;

        static {
            int[] iArr = {1, 2, 3, 4, 5};
        }
    }

    i(String str) {
        super(str);
        this.f88 = ExploreByTouchHelper.INVALID_ID;
        this.f86 = ExploreByTouchHelper.INVALID_ID;
        this.f85 = ExploreByTouchHelper.INVALID_ID;
        this.f89 = 0;
        this.f84 = c.f94;
        this.f87 = Double.NaN;
    }

    @Override // com.moat.analytics.mobile.cha.b
    /* JADX INFO: renamed from: ॱ */
    public final boolean mo30(Map<String, String> map, View view) {
        try {
            boolean zMo30 = super.mo30(map, view);
            if (!zMo30) {
                return zMo30;
            }
            this.f33.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.cha.i.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (i.this.mo75() && !i.this.m26() && Boolean.valueOf(i.this.m74()).booleanValue()) {
                            i.this.f33.postDelayed(this, 200L);
                        } else {
                            i.this.m29();
                        }
                    } catch (Exception e) {
                        i.this.m29();
                        o.m131(e);
                    }
                }
            }, 200L);
            return zMo30;
        } catch (Exception e) {
            a.m15(3, "IntervalVideoTracker", this, "Problem with video loop");
            m49("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.cha.b, com.moat.analytics.mobile.cha.d
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
            super.stopTracking();
        } catch (Exception e) {
            o.m131(e);
        }
    }

    @Override // com.moat.analytics.mobile.cha.b
    public void setPlayerVolume(Double d) {
        super.setPlayerVolume(d);
        this.f87 = m24().doubleValue();
    }

    @Override // com.moat.analytics.mobile.cha.b
    /* JADX INFO: renamed from: ˎ */
    final JSONObject mo27(MoatAdEvent moatAdEvent) {
        Integer numValueOf;
        if (!moatAdEvent.f5.equals(MoatAdEvent.f1)) {
            numValueOf = moatAdEvent.f5;
        } else {
            try {
                numValueOf = mo76();
            } catch (Exception e) {
                numValueOf = Integer.valueOf(this.f85);
            }
            moatAdEvent.f5 = numValueOf;
        }
        if (moatAdEvent.f5.intValue() < 0 || (moatAdEvent.f5.intValue() == 0 && moatAdEvent.f6 == MoatAdEventType.AD_EVT_COMPLETE && this.f85 > 0)) {
            numValueOf = Integer.valueOf(this.f85);
            moatAdEvent.f5 = numValueOf;
        }
        if (moatAdEvent.f6 == MoatAdEventType.AD_EVT_COMPLETE) {
            if (numValueOf.intValue() == Integer.MIN_VALUE || this.f86 == Integer.MIN_VALUE || !m22(numValueOf, Integer.valueOf(this.f86))) {
                this.f84 = c.f92;
                moatAdEvent.f6 = MoatAdEventType.AD_EVT_STOPPED;
            } else {
                this.f84 = c.f95;
            }
        }
        return super.mo27(moatAdEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    @android.support.annotation.CallSuper
    /* JADX INFO: renamed from: ʻॱ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean m74() throws com.moat.analytics.mobile.cha.o {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.i.m74():boolean");
    }
}
