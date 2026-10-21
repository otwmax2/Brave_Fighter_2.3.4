package com.moat.analytics.mobile.iro;

import android.view.View;
import com.tendcloud.tenddata.game.ao;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class w extends d implements ReactiveVideoTracker {

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private Integer f427;

    public w(String str) {
        super(str);
        b.m203(3, "ReactiveVideoTracker", this, "Initializing.");
        b.m201("[SUCCESS] ", "ReactiveVideoTracker created");
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˊ */
    final String mo211() {
        return "ReactiveVideoTracker";
    }

    @Override // com.moat.analytics.mobile.iro.d
    /* JADX INFO: renamed from: ˊॱ */
    final Map<String, Object> mo222() throws o {
        Integer numValueOf;
        Integer numValueOf2;
        HashMap map = new HashMap();
        View view = this.f268.get();
        if (view == null) {
            numValueOf = 0;
            numValueOf2 = 0;
        } else {
            numValueOf2 = Integer.valueOf(view.getWidth());
            numValueOf = Integer.valueOf(view.getHeight());
        }
        map.put(ao.n, this.f427);
        map.put("width", numValueOf2);
        map.put("height", numValueOf);
        return map;
    }

    @Override // com.moat.analytics.mobile.iro.ReactiveVideoTracker
    public final boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
        try {
            m212();
            m215();
            this.f427 = num;
            return super.mo224(map, view);
        } catch (Exception e) {
            m217("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.iro.d
    /* JADX INFO: renamed from: ˋ */
    final JSONObject mo223(MoatAdEvent moatAdEvent) {
        if (moatAdEvent.f232 == MoatAdEventType.AD_EVT_COMPLETE && !moatAdEvent.f230.equals(MoatAdEvent.f227) && !m220(moatAdEvent.f230, this.f427)) {
            moatAdEvent.f232 = MoatAdEventType.AD_EVT_STOPPED;
        }
        return super.mo223(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.iro.d, com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˏ */
    final void mo216(List<String> list) throws o {
        if (this.f427.intValue() < 1000) {
            throw new o(String.format(Locale.ROOT, "Invalid duration = %d. Please make sure duration is in milliseconds.", this.f427));
        }
        super.mo216(list);
    }
}
