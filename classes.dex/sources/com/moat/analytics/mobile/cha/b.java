package com.moat.analytics.mobile.cha;

import android.os.Handler;
import android.support.annotation.CallSuper;
import android.text.TextUtils;
import android.view.View;
import com.moat.analytics.mobile.cha.a;
import com.tendcloud.tenddata.game.ao;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class b extends d {

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    static final MoatAdEventType[] f23 = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    final Map<MoatAdEventType, Integer> f24;

    /* JADX INFO: renamed from: ʼॱ, reason: contains not printable characters */
    private final String f25;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    WeakReference<View> f26;

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private boolean f27;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private Map<String, String> f28;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private Double f29;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private VideoTrackerListener f30;

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private final Set<MoatAdEventType> f31;

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    private final a f32;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    final Handler f33;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    abstract Map<String, Object> mo32() throws o;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static /* synthetic */ VideoTrackerListener m23(b bVar) {
        bVar.f30 = null;
        return null;
    }

    b(String str) {
        super(null, false, true);
        a.m15(3, "BaseVideoTracker", this, "Initializing.");
        this.f25 = str;
        this.f32 = new a(c.m36(), a.d.f21);
        this.f48 = this.f32.f17;
        try {
            super.m48(this.f32.f15);
        } catch (o e) {
            this.f51 = e;
        }
        this.f24 = new HashMap();
        this.f31 = new HashSet();
        this.f33 = new Handler();
        this.f27 = false;
        this.f29 = Double.valueOf(1.0d);
    }

    public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        this.f30 = videoTrackerListener;
    }

    public void removeVideoListener() {
        this.f30 = null;
    }

    @CallSuper
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    public boolean mo30(Map<String, String> map, View view) {
        try {
            m46();
            m47();
            if (view == null) {
                a.m15(3, "BaseVideoTracker", this, "trackVideoAd received null video view instance");
            }
            this.f28 = map;
            this.f26 = new WeakReference<>(view);
            mo28();
            String str = String.format("trackVideoAd tracking ids: %s | view: %s", new JSONObject(map).toString(), a.m14(view));
            a.m15(3, "BaseVideoTracker", this, str);
            a.m12("[SUCCESS] ", mo45() + " " + str);
            if (this.f45 == null) {
                return true;
            }
            this.f45.onTrackingStarted(m41());
            return true;
        } catch (Exception e) {
            m49("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.cha.d
    public void changeTargetView(View view) {
        a.m15(3, "BaseVideoTracker", this, "changing view to " + a.m14(view));
        this.f26 = new WeakReference<>(view);
        try {
            super.changeTargetView(view);
        } catch (Exception e) {
            o.m131(e);
        }
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    void mo25(List<String> list) throws o {
        if (this.f28 == null) {
            list.add("Null adIds object");
        }
        if (!list.isEmpty()) {
            throw new o(TextUtils.join(" and ", list));
        }
        super.mo25(list);
    }

    @Override // com.moat.analytics.mobile.cha.d
    public void stopTracking() {
        try {
            super.stopTracking();
            m29();
            if (this.f30 != null) {
                this.f30 = null;
            }
        } catch (Exception e) {
            o.m131(e);
        }
    }

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    final Double m31() {
        return this.f29;
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final void mo28() throws o {
        super.changeTargetView(this.f26.get());
        super.mo28();
        Map<String, Object> mapMo32 = mo32();
        Integer num = (Integer) mapMo32.get("width");
        Integer num2 = (Integer) mapMo32.get("height");
        Integer num3 = (Integer) mapMo32.get(ao.n);
        a.m15(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.f32.m20(this.f25, this.f28, num, num2, num3);
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    JSONObject mo27(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.f4.doubleValue())) {
            moatAdEvent.f4 = this.f29;
        }
        return new JSONObject(moatAdEvent.m9());
    }

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    final void m29() {
        if (!this.f27) {
            this.f27 = true;
            this.f33.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.cha.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        a.m15(3, "BaseVideoTracker", this, "Shutting down.");
                        a aVar = b.this.f32;
                        a.m15(3, "GlobalWebView", aVar, "Cleaning up");
                        aVar.f17.m99();
                        aVar.f17 = null;
                        aVar.f15.destroy();
                        aVar.f15 = null;
                        b.m23(b.this);
                    } catch (Exception e) {
                        o.m131(e);
                    }
                }
            }, 500L);
        }
    }

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    final boolean m26() {
        return this.f24.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.f24.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.f24.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static boolean m22(Integer num, Integer num2) {
        return ((double) Math.abs(num2.intValue() - num.intValue())) <= Math.min(750.0d, ((double) num2.intValue()) * 0.05d);
    }

    public void setPlayerVolume(Double d) {
        Double dValueOf = Double.valueOf(this.f29.doubleValue() * r.m152());
        if (!d.equals(this.f29)) {
            a.m15(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "player volume changed to %f ", d));
            this.f29 = d;
            if (!dValueOf.equals(Double.valueOf(this.f29.doubleValue() * r.m152()))) {
                dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_VOLUME_CHANGE, MoatAdEvent.f1, this.f29));
            }
        }
    }

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            JSONObject jSONObjectMo27 = mo27(moatAdEvent);
            a.m15(3, "BaseVideoTracker", this, String.format("Received event: %s", jSONObjectMo27.toString()));
            a.m12("[SUCCESS] ", mo45() + String.format(" Received event: %s", jSONObjectMo27.toString()));
            if (m44() && this.f48 != null) {
                this.f48.m107(this.f32.f14, jSONObjectMo27);
                if (!this.f31.contains(moatAdEvent.f6)) {
                    this.f31.add(moatAdEvent.f6);
                    if (this.f30 != null) {
                        this.f30.onVideoEventReported(moatAdEvent.f6);
                    }
                }
            }
            MoatAdEventType moatAdEventType = moatAdEvent.f6;
            if (!(moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED)) {
                return;
            }
            this.f24.put(moatAdEventType, 1);
            if (this.f48 != null) {
                this.f48.m101(this);
            }
            m29();
        } catch (Exception e) {
            o.m131(e);
        }
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    final Double m24() {
        return Double.valueOf(this.f29.doubleValue() * r.m152());
    }
}
