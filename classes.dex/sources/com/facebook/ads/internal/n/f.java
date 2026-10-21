package com.facebook.ads.internal.n;

import android.support.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final String a;
    private final int b;
    private final int c;

    public f(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    @Nullable
    public static f a(JSONObject jSONObject) {
        String strOptString;
        if (jSONObject == null || (strOptString = jSONObject.optString("url")) == null) {
            return null;
        }
        return new f(strOptString, jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    public String a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }
}
