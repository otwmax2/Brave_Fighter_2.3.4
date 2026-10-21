package com.moat.analytics.mobile.iro;

import android.support.v4.widget.ExploreByTouchHelper;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MoatAdEvent {

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private final Long f228;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private final Double f229;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    Integer f230;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    Double f231;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    MoatAdEventType f232;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static final Integer f227 = Integer.valueOf(ExploreByTouchHelper.INVALID_ID);

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static final Double f226 = Double.valueOf(Double.NaN);
    public static final Double VOLUME_MUTED = Double.valueOf(0.0d);
    public static final Double VOLUME_UNMUTED = Double.valueOf(1.0d);

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num, Double d) {
        this.f228 = Long.valueOf(System.currentTimeMillis());
        this.f232 = moatAdEventType;
        this.f231 = d;
        this.f230 = num;
        this.f229 = Double.valueOf(p.m322());
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num) {
        this(moatAdEventType, num, f226);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType) {
        this(moatAdEventType, f227, f226);
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final Map<String, Object> m188() {
        HashMap map = new HashMap();
        map.put("adVolume", this.f231);
        map.put("playhead", this.f230);
        map.put("aTimeStamp", this.f228);
        map.put("type", this.f232.toString());
        map.put(Constants.RequestParameters.DEVICE_VOLUME, this.f229);
        return map;
    }
}
