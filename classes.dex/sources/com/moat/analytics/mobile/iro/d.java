package com.moat.analytics.mobile.iro;

import android.os.Handler;
import android.support.annotation.CallSuper;
import android.text.TextUtils;
import android.view.View;
import com.moat.analytics.mobile.iro.b;
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
abstract class d extends c {

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    static final MoatAdEventType[] f266 = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    final Map<MoatAdEventType, Integer> f267;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    WeakReference<View> f268;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    final Handler f269;

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private Double f270;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private Map<String, String> f271;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private boolean f272;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private VideoTrackerListener f273;

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private final Set<MoatAdEventType> f274;

    /* JADX INFO: renamed from: ॱˎ, reason: contains not printable characters */
    private final String f275;

    /* JADX INFO: renamed from: ᐝॱ, reason: contains not printable characters */
    private final b f276;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    abstract Map<String, Object> mo222() throws o;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static /* synthetic */ VideoTrackerListener m219(d dVar) {
        dVar.f273 = null;
        return null;
    }

    d(String str) {
        super(null, false, true);
        b.m203(3, "BaseVideoTracker", this, "Initializing.");
        this.f275 = str;
        this.f276 = new b(a.m194(), b.a.f251);
        this.f262 = this.f276.f245;
        try {
            super.m213(this.f276.f247);
        } catch (o e) {
            this.f260 = e;
        }
        this.f267 = new HashMap();
        this.f274 = new HashSet();
        this.f269 = new Handler();
        this.f272 = false;
        this.f270 = Double.valueOf(1.0d);
    }

    public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        this.f273 = videoTrackerListener;
    }

    public void removeVideoListener() {
        this.f273 = null;
    }

    @CallSuper
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    public boolean mo224(Map<String, String> map, View view) {
        try {
            m212();
            m215();
            if (view == null) {
                b.m203(3, "BaseVideoTracker", this, "trackVideoAd received null video view instance");
            }
            this.f271 = map;
            this.f268 = new WeakReference<>(view);
            mo214();
            String str = String.format("trackVideoAd tracking ids: %s | view: %s", new JSONObject(map).toString(), b.m205(view));
            b.m203(3, "BaseVideoTracker", this, str);
            b.m201("[SUCCESS] ", mo211() + " " + str);
            if (this.f258 == null) {
                return true;
            }
            this.f258.onTrackingStarted(m210());
            return true;
        } catch (Exception e) {
            m217("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.iro.c
    public void changeTargetView(View view) {
        b.m203(3, "BaseVideoTracker", this, "changing view to " + b.m205(view));
        this.f268 = new WeakReference<>(view);
        try {
            super.changeTargetView(view);
        } catch (Exception e) {
            o.m311(e);
        }
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˏ */
    void mo216(List<String> list) throws o {
        if (this.f271 == null) {
            list.add("Null adIds object");
        }
        if (!list.isEmpty()) {
            throw new o(TextUtils.join(" and ", list));
        }
        super.mo216(list);
    }

    @Override // com.moat.analytics.mobile.iro.c
    public void stopTracking() {
        try {
            super.stopTracking();
            m227();
            if (this.f273 != null) {
                this.f273 = null;
            }
        } catch (Exception e) {
            o.m311(e);
        }
    }

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    final Double m225() {
        return this.f270;
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˎ */
    final void mo214() throws o {
        super.changeTargetView(this.f268.get());
        super.mo214();
        Map<String, Object> mapMo222 = mo222();
        Integer num = (Integer) mapMo222.get("width");
        Integer num2 = (Integer) mapMo222.get("height");
        Integer num3 = (Integer) mapMo222.get(ao.n);
        b.m203(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.f276.m207(this.f275, this.f271, num, num2, num3);
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    JSONObject mo223(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.f231.doubleValue())) {
            moatAdEvent.f231 = this.f270;
        }
        return new JSONObject(moatAdEvent.m188());
    }

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    final void m227() {
        if (!this.f272) {
            this.f272 = true;
            this.f269.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.iro.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        b.m203(3, "BaseVideoTracker", this, "Shutting down.");
                        b bVar = d.this.f276;
                        b.m203(3, "GlobalWebView", bVar, "Cleaning up");
                        bVar.f245.m250();
                        bVar.f245 = null;
                        bVar.f247.destroy();
                        bVar.f247 = null;
                        d.m219(d.this);
                    } catch (Exception e) {
                        o.m311(e);
                    }
                }
            }, 500L);
        }
    }

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    final boolean m226() {
        return this.f267.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.f267.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.f267.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static boolean m220(Integer num, Integer num2) {
        return ((double) Math.abs(num2.intValue() - num.intValue())) <= Math.min(750.0d, ((double) num2.intValue()) * 0.05d);
    }

    public void setPlayerVolume(Double d) {
        Double dValueOf = Double.valueOf(this.f270.doubleValue() * p.m322());
        if (!d.equals(this.f270)) {
            b.m203(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "player volume changed to %f ", d));
            this.f270 = d;
            if (!dValueOf.equals(Double.valueOf(this.f270.doubleValue() * p.m322()))) {
                dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_VOLUME_CHANGE, MoatAdEvent.f227, this.f270));
            }
        }
    }

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            JSONObject jSONObjectMo223 = mo223(moatAdEvent);
            b.m203(3, "BaseVideoTracker", this, String.format("Received event: %s", jSONObjectMo223.toString()));
            b.m201("[SUCCESS] ", mo211() + String.format(" Received event: %s", jSONObjectMo223.toString()));
            if (m218() && this.f262 != null) {
                this.f262.m252(this.f276.f244, jSONObjectMo223);
                if (!this.f274.contains(moatAdEvent.f232)) {
                    this.f274.add(moatAdEvent.f232);
                    if (this.f273 != null) {
                        this.f273.onVideoEventReported(moatAdEvent.f232);
                    }
                }
            }
            MoatAdEventType moatAdEventType = moatAdEvent.f232;
            if (!(moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED)) {
                return;
            }
            this.f267.put(moatAdEventType, 1);
            if (this.f262 != null) {
                this.f262.m255(this);
            }
            m227();
        } catch (Exception e) {
            o.m311(e);
        }
    }

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    final Double m228() {
        return Double.valueOf(this.f270.doubleValue() * p.m322());
    }
}
