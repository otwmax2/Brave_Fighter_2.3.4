package com.chartboost.sdk.Tracking;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.b;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Model.e;
import com.chartboost.sdk.impl.ah;
import com.chartboost.sdk.impl.aj;
import com.chartboost.sdk.impl.ap;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.vungle.publisher.VungleAdActivity;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements b {
    private static a d;
    private static final Long q = Long.valueOf(TimeUnit.MINUTES.toMillis(5));
    private final d e;
    private final ah f;
    private final ap g;
    private final AtomicReference<e> h;
    private final SharedPreferences i;
    private String j;
    private JSONArray k;
    private long l;
    private long m;
    private final long n;
    private final f o;
    private boolean p = false;
    private long r = System.currentTimeMillis() - q.longValue();

    public a(f fVar, d dVar, ah ahVar, ap apVar, AtomicReference<e> atomicReference, SharedPreferences sharedPreferences) {
        d = this;
        this.e = dVar;
        this.f = ahVar;
        this.g = apVar;
        this.h = atomicReference;
        this.i = sharedPreferences;
        this.n = System.currentTimeMillis();
        this.k = new JSONArray();
        this.o = fVar;
    }

    public void a() {
        a("start");
        a("did-become-active");
    }

    private void a(String str) {
        if (this.h.get().n) {
            a("session", str, (String) null, (String) null, (String) null, (String) null, false);
        }
    }

    public void b() {
        a(false);
    }

    private void a(boolean z) {
        if (this.h.get().n) {
            JSONObject jSONObject = new JSONObject();
            com.chartboost.sdk.Libraries.e.a(jSONObject, "complete", Boolean.valueOf(z));
            a("session", "end", null, null, null, null, jSONObject, false);
            a("did-become-active");
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (this.h.get().o) {
            a("webview-track", str, str2, str3, str4, null, null, false);
        }
    }

    public void a(JSONObject jSONObject) {
        e eVar = this.h.get();
        if (eVar.o) {
            a("folder", com.chartboost.sdk.b.a(eVar), null, null, null, null, jSONObject, false);
        }
    }

    public void a(String str, String str2, String str3) {
        if (this.h.get().o) {
            a("load", str, str2, str3, (String) null, (String) null, false);
        }
    }

    public void b(String str, String str2, String str3) {
        if (this.h.get().o) {
            a("ad-show", str, str2, str3, (String) null, (String) null, false);
        }
    }

    public void c(String str, String str2, String str3) {
        if (this.h.get().o) {
            a("ad-click", str, str2, str3, (String) null, (String) null, false);
        }
    }

    public void d(String str, String str2, String str3) {
        if (this.h.get().o) {
            a("ad-close", str, str2, str3, (String) null, (String) null, false);
        }
    }

    public void e(String str, String str2, String str3) {
        if (this.h.get().o) {
            a("ad-dismiss", str, str2, str3, (String) null, (String) null, false);
        }
    }

    public void a(String str, String str2, String str3, String str4, boolean z) {
        if (this.h.get().o) {
            a("ad-error", str, str2, TextUtils.isEmpty(str3) ? "empty-adid" : str3, str4, (String) null, z);
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (this.h.get().l) {
            a("ad-unit-error", str, str2, str3, str4, null, com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a(VungleAdActivity.AD_ID_EXTRA_KEY, str5), com.chartboost.sdk.Libraries.e.a("location", str6), com.chartboost.sdk.Libraries.e.a("state", str7)), true);
        }
    }

    public void b(String str, String str2, String str3, String str4) {
        if (this.h.get().o) {
            a("ad-warning", str, str2, TextUtils.isEmpty(str3) ? "empty-adid" : str3, str4, (String) null, false);
        }
    }

    public void a(String str, String str2) {
        e eVar = this.h.get();
        if (eVar.o) {
            a("download-asset-start", com.chartboost.sdk.b.a(eVar), str, str2, null, null, null, false);
        }
    }

    public void a(String str, String str2, long j, long j2, long j3) {
        if (this.h.get().p) {
            a("download-asset-failure", str, str2, null, null, null, com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("processingMs", Long.valueOf(j)), com.chartboost.sdk.Libraries.e.a("getResponseCodeMs", Long.valueOf(j2)), com.chartboost.sdk.Libraries.e.a("readDataMs", Long.valueOf(j3))), false);
        }
    }

    public void a(String str, long j, long j2, long j3) {
        if (this.h.get().p) {
            a("download-asset-success", str, null, null, null, null, com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("processingMs", Long.valueOf(j)), com.chartboost.sdk.Libraries.e.a("getResposeCodeMs", Long.valueOf(j2)), com.chartboost.sdk.Libraries.e.a("readDataMs", Long.valueOf(j3))), false);
        }
    }

    public void b(String str, String str2) {
        if (this.h.get().o) {
            a("playback-complete", str, str2, (String) null, (String) null, (String) null, false);
        }
    }

    public void c(String str, String str2) {
        if (this.h.get().o) {
            a("replay", str, str2, (String) null, (String) null, (String) null, false);
        }
    }

    public void d(String str, String str2) {
        if (this.h.get().o) {
            a("playback-start", str, str2, (String) null, (String) null, (String) null, false);
        }
    }

    public void e(String str, String str2) {
        if (this.h.get().o) {
            a("playback-stop", str, str2, (String) null, (String) null, (String) null, false);
        }
    }

    public static void a(Class cls, String str, Exception exc) {
        exc.printStackTrace();
        a aVar = d;
        if (aVar != null) {
            aVar.b(cls, str, exc);
        }
    }

    synchronized void b(Class cls, String str, Exception exc) {
        synchronized (this) {
            e eVar = this.h.get();
            if (eVar != null && eVar.k && !this.p) {
                this.p = true;
                try {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (jCurrentTimeMillis - this.r >= q.longValue()) {
                            a("exception", cls.getName(), str, exc.getClass().getName(), exc.getMessage(), eVar.r ? Log.getStackTraceString(exc) : null, null, true);
                            this.r = jCurrentTimeMillis;
                        }
                    } finally {
                        this.p = false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    this.p = false;
                }
            }
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, JSONObject jSONObject) {
        if (this.h.get().o) {
            a(str, str2, str3, str4, str5, str6, jSONObject, false);
        }
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        a(str, str2, str3, str4, str5, str6, new JSONObject(), z);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, JSONObject jSONObject, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.l;
        long j2 = jCurrentTimeMillis - this.n;
        JSONObject jSONObject2 = new JSONObject();
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "event", a((Object) str));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "kingdom", a((Object) str2));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "phylum", a((Object) str3));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "class", a((Object) str4));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "family", a((Object) str5));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "genus", a((Object) str6));
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "meta", jSONObject);
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "clientTimestamp", Long.valueOf(System.currentTimeMillis() / 1000));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "session_id", d());
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "totalSessionTime", Long.valueOf(j / 1000));
        com.chartboost.sdk.Libraries.e.a(jSONObject2, "currentSessionTime", Long.valueOf(j2 / 1000));
        synchronized (this) {
            boolean z2 = this.p;
            this.p = true;
            try {
                this.k.put(jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                com.chartboost.sdk.Libraries.e.a(jSONObject3, DataBaseEventsStorage.EventEntry.TABLE_NAME, this.k);
                CBLogging.a("CBTrack", "###Writing" + a((Object) str) + "to tracking cache dir");
                h();
                if (z || e()) {
                    this.f.a(b(jSONObject3));
                    k();
                }
            } finally {
                this.p = z2;
            }
        }
    }

    private boolean e() {
        return this.k != null && this.k.length() >= 50;
    }

    private String f() {
        JSONObject jSONObject = new JSONObject();
        com.chartboost.sdk.Libraries.e.a(jSONObject, "startTime", Long.valueOf(System.currentTimeMillis()));
        com.chartboost.sdk.Libraries.e.a(jSONObject, "deviceID", this.e.c());
        this.j = c.b(jSONObject.toString().getBytes());
        return this.j;
    }

    public void c() {
        File file = new File(this.o.a, "cb_previous_session_info");
        JSONObject jSONObjectA = file.exists() ? this.o.a(file) : null;
        if (jSONObjectA != null) {
            this.m = jSONObjectA.optLong(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP);
            this.l = jSONObjectA.optLong("start_timestamp");
            this.j = jSONObjectA.optString("session_id");
            if (System.currentTimeMillis() - this.m <= 180000) {
                if (!TextUtils.isEmpty(this.j)) {
                    h();
                    return;
                }
            } else {
                a(true);
            }
        }
        g();
    }

    private void g() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.l = jCurrentTimeMillis;
        this.m = jCurrentTimeMillis;
        this.j = f();
        a(jCurrentTimeMillis, jCurrentTimeMillis);
        int i = this.i.getInt("cbPrefSessionCount", 0) + 1;
        SharedPreferences.Editor editorEdit = this.i.edit();
        editorEdit.putInt("cbPrefSessionCount", i);
        editorEdit.apply();
    }

    private void h() {
        a(this.l, System.currentTimeMillis());
    }

    private void a(long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        com.chartboost.sdk.Libraries.e.a(jSONObject, "start_timestamp", Long.valueOf(j));
        com.chartboost.sdk.Libraries.e.a(jSONObject, DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(j2));
        com.chartboost.sdk.Libraries.e.a(jSONObject, "session_id", this.j);
        this.o.a(new File(this.o.a, "cb_previous_session_info"), jSONObject.toString().getBytes());
    }

    private aj b(JSONObject jSONObject) {
        aj ajVar = new aj("/api/track", this.g, null, 3, null);
        ajVar.a("track", jSONObject);
        ajVar.l = true;
        return ajVar;
    }

    public String toString() {
        return "Session [ startTime: " + j() + " sessionEvents: " + i() + " ]";
    }

    String d() {
        return this.j;
    }

    private JSONArray i() {
        return this.k;
    }

    private long j() {
        return this.l;
    }

    private static Object a(Object obj) {
        return obj != null ? obj : "";
    }

    private void k() {
        this.k = new JSONArray();
    }
}
