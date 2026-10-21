package com.tendcloud.tenddata.game;

import android.os.SystemClock;
import com.tendcloud.tenddata.TalkingDataGA;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class bz {
    public static final String a = "eventData";
    public static final String b = "locations";
    public static final String c = "networks";
    static long e = 0;
    static JSONArray f = z.d(TalkingDataGA.getContext());
    private static final String g = "eventID";
    private static final String h = "eventOccurTime";
    private String i;
    protected long d = System.currentTimeMillis();
    private Map j = new TreeMap();

    public bz(String str) {
        this.i = str;
    }

    protected bz a(String str, Object obj) {
        this.j.put(str, obj);
        return this;
    }

    protected abstract void a();

    public String b() {
        return this.i;
    }

    public String c() {
        a();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(g, this.i);
            jSONObject.put(h, this.d);
            jSONObject.put(a, d());
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - e >= 20000) {
                if (e != 0) {
                    jSONObject.put(b, z.c(TalkingDataGA.getContext()));
                    jSONObject.put(c, o.r(TalkingDataGA.getContext()));
                }
                e = jElapsedRealtime;
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            return null;
        }
    }

    protected JSONObject d() {
        return new JSONObject(this.j);
    }

    public Map e() {
        return this.j;
    }

    public boolean f() {
        return false;
    }
}
