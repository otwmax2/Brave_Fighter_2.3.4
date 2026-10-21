package com.moat.analytics.mobile.cha;

import android.support.v4.widget.ExploreByTouchHelper;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MoatAdEvent {

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private final Long f3;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    Double f4;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    Integer f5;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    MoatAdEventType f6;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private final Double f7;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static final Integer f1 = Integer.valueOf(ExploreByTouchHelper.INVALID_ID);

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static final Double f2 = Double.valueOf(Double.NaN);
    public static final Double VOLUME_MUTED = Double.valueOf(0.0d);
    public static final Double VOLUME_UNMUTED = Double.valueOf(1.0d);

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num, Double d) {
        this.f3 = Long.valueOf(System.currentTimeMillis());
        this.f6 = moatAdEventType;
        this.f4 = d;
        this.f5 = num;
        this.f7 = Double.valueOf(r.m152());
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num) {
        this(moatAdEventType, num, f2);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType) {
        this(moatAdEventType, f1, f2);
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final Map<String, Object> m9() {
        HashMap map = new HashMap();
        map.put("adVolume", this.f4);
        map.put("playhead", this.f5);
        map.put("aTimeStamp", this.f3);
        map.put("type", this.f6.toString());
        map.put(Constants.RequestParameters.DEVICE_VOLUME, this.f7);
        return map;
    }
}
