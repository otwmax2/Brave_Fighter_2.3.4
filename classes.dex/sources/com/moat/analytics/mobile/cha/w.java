package com.moat.analytics.mobile.cha;

import android.view.View;
import com.tendcloud.tenddata.game.ao;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class w extends b implements ReactiveVideoTracker {

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private Integer f224;

    public w(String str) {
        super(str);
        a.m15(3, "ReactiveVideoTracker", this, "Initializing.");
        a.m12("[SUCCESS] ", "ReactiveVideoTracker created");
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final String mo45() {
        return "ReactiveVideoTracker";
    }

    @Override // com.moat.analytics.mobile.cha.b
    /* JADX INFO: renamed from: ᐝ */
    final Map<String, Object> mo32() throws o {
        Integer numValueOf;
        Integer numValueOf2;
        HashMap map = new HashMap();
        View view = this.f26.get();
        if (view == null) {
            numValueOf = 0;
            numValueOf2 = 0;
        } else {
            numValueOf2 = Integer.valueOf(view.getWidth());
            numValueOf = Integer.valueOf(view.getHeight());
        }
        map.put(ao.n, this.f224);
        map.put("width", numValueOf2);
        map.put("height", numValueOf);
        return map;
    }

    @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
    public final boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
        try {
            m46();
            m47();
            this.f224 = num;
            return super.mo30(map, view);
        } catch (Exception e) {
            m49("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.cha.b
    /* JADX INFO: renamed from: ˎ */
    final JSONObject mo27(MoatAdEvent moatAdEvent) {
        if (moatAdEvent.f6 == MoatAdEventType.AD_EVT_COMPLETE && !moatAdEvent.f5.equals(MoatAdEvent.f1) && !m22(moatAdEvent.f5, this.f224)) {
            moatAdEvent.f6 = MoatAdEventType.AD_EVT_STOPPED;
        }
        return super.mo27(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.cha.b, com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final void mo25(List<String> list) throws o {
        if (this.f224.intValue() < 1000) {
            throw new o(String.format(Locale.ROOT, "Invalid duration = %d. Please make sure duration is in milliseconds.", this.f224));
        }
        super.mo25(list);
    }
}
