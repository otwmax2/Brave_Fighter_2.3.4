package com.moat.analytics.mobile.cha;

import android.graphics.Rect;
import android.view.View;
import com.moat.analytics.mobile.cha.NativeDisplayTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class q extends d implements NativeDisplayTracker {

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private final Map<String, String> f156;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private final Set<NativeDisplayTracker.MoatUserInteractionType> f157;

    q(View view, Map<String, String> map) {
        super(view, true, false);
        this.f157 = new HashSet();
        a.m15(3, "NativeDisplayTracker", this, "Initializing.");
        this.f156 = map;
        if (view == null) {
            String str = "NativeDisplayTracker initialization not successful, Target view is null";
            a.m15(3, "NativeDisplayTracker", this, str);
            a.m12("[ERROR] ", str);
            this.f51 = new o("Target view is null");
            return;
        }
        if (map == null || map.isEmpty()) {
            String str2 = "NativeDisplayTracker initialization not successful, AdIds is null or empty";
            a.m15(3, "NativeDisplayTracker", this, str2);
            a.m12("[ERROR] ", str2);
            this.f51 = new o("AdIds is null or empty");
            return;
        }
        a aVar = ((f) f.getInstance()).f62;
        if (aVar == null) {
            String str3 = "NativeDisplayTracker initialization not successful, prepareNativeDisplayTracking was not called successfully";
            a.m15(3, "NativeDisplayTracker", this, str3);
            a.m12("[ERROR] ", str3);
            this.f51 = new o("prepareNativeDisplayTracking was not called successfully");
            return;
        }
        this.f48 = aVar.f17;
        try {
            super.m48(aVar.f15);
            if (this.f48 != null) {
                this.f48.m105(m140());
            }
            a.m12("[SUCCESS] ", "NativeDisplayTracker created for " + m41() + ", with adIds:" + map.toString());
        } catch (o e) {
            this.f51 = e;
        }
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final String mo45() {
        return "NativeDisplayTracker";
    }

    @Override // com.moat.analytics.mobile.cha.NativeDisplayTracker
    public final void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        try {
            a.m15(3, "NativeDisplayTracker", this, "reportUserInteractionEvent:" + moatUserInteractionType.name());
            if (!this.f157.contains(moatUserInteractionType)) {
                this.f157.add(moatUserInteractionType);
                JSONObject jSONObject = new JSONObject();
                jSONObject.accumulate("adKey", this.f47);
                jSONObject.accumulate("event", moatUserInteractionType.name().toLowerCase());
                if (this.f48 != null) {
                    this.f48.m106(jSONObject.toString());
                }
            }
        } catch (JSONException e) {
            a.m16("NativeDisplayTracker", this, "Got JSON exception");
            o.m131(e);
        } catch (Exception e2) {
            o.m131(e2);
        }
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private String m140() {
        try {
            Map<String, String> map = this.f156;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (int i = 0; i < 8; i++) {
                String str = "moatClientLevel" + i;
                if (map.containsKey(str)) {
                    linkedHashMap.put(str, map.get(str));
                }
            }
            for (int i2 = 0; i2 < 8; i2++) {
                String str2 = "moatClientSlicer" + i2;
                if (map.containsKey(str2)) {
                    linkedHashMap.put(str2, map.get(str2));
                }
            }
            for (String str3 : map.keySet()) {
                if (!linkedHashMap.containsKey(str3)) {
                    linkedHashMap.put(str3, map.get(str3));
                }
            }
            String string = new JSONObject(linkedHashMap).toString();
            a.m15(3, "NativeDisplayTracker", this, "Parsed ad ids = " + string);
            return "{\"adIds\":" + string + ", \"adKey\":\"" + this.f47 + "\", \"adSize\":" + m141() + "}";
        } catch (Exception e) {
            o.m131(e);
            return "";
        }
    }

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private String m141() {
        try {
            Rect rectM178 = u.m178(super.m42());
            int iWidth = rectM178.width();
            int iHeight = rectM178.height();
            HashMap map = new HashMap();
            map.put("width", Integer.toString(iWidth));
            map.put("height", Integer.toString(iHeight));
            return new JSONObject(map).toString();
        } catch (Exception e) {
            o.m131(e);
            return null;
        }
    }
}
