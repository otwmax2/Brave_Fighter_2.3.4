package com.vungle.publisher;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wy {
    final String a;
    final String b;
    final String c;

    public wy(String str, JSONObject jSONObject) throws JSONException {
        this.a = jSONObject.getString("extension");
        this.b = jSONObject.getString("url");
        this.c = str;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }
}
