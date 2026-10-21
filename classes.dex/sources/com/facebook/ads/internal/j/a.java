package com.facebook.ads.internal.j;

import android.support.annotation.Nullable;
import com.ironsource.sdk.constants.LocationConst;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String a = null;
    private String b;
    private Map<String, Object> c;
    private int d;
    private String e;

    /* JADX INFO: renamed from: com.facebook.ads.internal.j.a$a, reason: collision with other inner class name */
    public enum EnumC0013a {
        OPEN_STORE(0),
        OPEN_LINK(1),
        XOUT(2),
        OPEN_URL(3),
        SHOW_INTERSTITIAL(4);

        int f;

        EnumC0013a(int i) {
            this.f = i;
        }
    }

    public enum b {
        LOADING_AD(0);

        int b;

        b(int i) {
            this.b = i;
        }
    }

    public a(String str, Map<String, Object> map, int i, String str2) {
        this.b = str;
        this.c = map;
        this.d = i;
        this.e = str2;
    }

    public static a a(long j, EnumC0013a enumC0013a, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap map = new HashMap();
        map.put("Time", String.valueOf(jCurrentTimeMillis - j));
        map.put("AdAction", String.valueOf(enumC0013a.f));
        return new a("bounceback", map, (int) (jCurrentTimeMillis / 1000), str);
    }

    public static a a(b bVar, String str, long j, String str2) {
        HashMap map = new HashMap();
        map.put("LatencyType", String.valueOf(bVar.b));
        map.put("AdPlacementType", str);
        map.put("Time", String.valueOf(j));
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (str2 == null) {
            str2 = a;
        }
        return new a("latency", map, iCurrentTimeMillis, str2);
    }

    public static a a(@Nullable Throwable th, @Nullable String str) {
        HashMap map = new HashMap();
        if (th != null) {
            map.put("ex", th.getClass().getSimpleName());
            map.put("ex_msg", th.getMessage());
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (str == null) {
            str = a;
        }
        return new a("error", map, iCurrentTimeMillis, str);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.b);
            jSONObject.put("data", new JSONObject(this.c));
            jSONObject.put(LocationConst.TIME, this.d);
            jSONObject.put("request_id", this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
