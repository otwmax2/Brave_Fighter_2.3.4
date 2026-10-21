package com.moat.analytics.mobile.iro;

import android.graphics.Rect;
import android.view.View;
import com.moat.analytics.mobile.iro.NativeDisplayTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class r extends c implements NativeDisplayTracker {

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private final Set<NativeDisplayTracker.MoatUserInteractionType> f384;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private final Map<String, String> f385;

    r(View view, Map<String, String> map) {
        super(view, true, false);
        this.f384 = new HashSet();
        b.m203(3, "NativeDisplayTracker", this, "Initializing.");
        this.f385 = map;
        if (view == null) {
            String str = "NativeDisplayTracker initialization not successful, Target view is null";
            b.m203(3, "NativeDisplayTracker", this, str);
            b.m201("[ERROR] ", str);
            this.f260 = new o("Target view is null");
            return;
        }
        if (map == null || map.isEmpty()) {
            String str2 = "NativeDisplayTracker initialization not successful, AdIds is null or empty";
            b.m203(3, "NativeDisplayTracker", this, str2);
            b.m201("[ERROR] ", str2);
            this.f260 = new o("AdIds is null or empty");
            return;
        }
        b bVar = ((j) j.getInstance()).f338;
        if (bVar == null) {
            String str3 = "NativeDisplayTracker initialization not successful, prepareNativeDisplayTracking was not called successfully";
            b.m203(3, "NativeDisplayTracker", this, str3);
            b.m201("[ERROR] ", str3);
            this.f260 = new o("prepareNativeDisplayTracking was not called successfully");
            return;
        }
        this.f262 = bVar.f245;
        try {
            super.m213(bVar.f247);
            if (this.f262 != null) {
                this.f262.m251(m329());
            }
            b.m201("[SUCCESS] ", "NativeDisplayTracker created for " + m210() + ", with adIds:" + map.toString());
        } catch (o e) {
            this.f260 = e;
        }
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˊ */
    final String mo211() {
        return "NativeDisplayTracker";
    }

    @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
    public final void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        try {
            b.m203(3, "NativeDisplayTracker", this, "reportUserInteractionEvent:" + moatUserInteractionType.name());
            if (!this.f384.contains(moatUserInteractionType)) {
                this.f384.add(moatUserInteractionType);
                JSONObject jSONObject = new JSONObject();
                jSONObject.accumulate("adKey", this.f261);
                jSONObject.accumulate("event", moatUserInteractionType.name().toLowerCase());
                if (this.f262 != null) {
                    this.f262.m253(jSONObject.toString());
                }
            }
        } catch (JSONException e) {
            b.m204("NativeDisplayTracker", this, "Got JSON exception");
            o.m311(e);
        } catch (Exception e2) {
            o.m311(e2);
        }
    }

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private String m329() {
        try {
            Map<String, String> map = this.f385;
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
            b.m203(3, "NativeDisplayTracker", this, "Parsed ad ids = " + string);
            return "{\"adIds\":" + string + ", \"adKey\":\"" + this.f261 + "\", \"adSize\":" + m328() + "}";
        } catch (Exception e) {
            o.m311(e);
            return "";
        }
    }

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private String m328() {
        try {
            Rect rectM359 = y.m359(super.m208());
            int iWidth = rectM359.width();
            int iHeight = rectM359.height();
            HashMap map = new HashMap();
            map.put("width", Integer.toString(iWidth));
            map.put("height", Integer.toString(iHeight));
            return new JSONObject(map).toString();
        } catch (Exception e) {
            o.m311(e);
            return null;
        }
    }
}
