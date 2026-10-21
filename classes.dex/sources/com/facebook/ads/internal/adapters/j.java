package com.facebook.ads.internal.adapters;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j implements Serializable {
    public static final int a = Color.parseColor("#90949c");
    public static final int b = Color.parseColor("#4b4f56");
    public static final int c = Color.parseColor("#f6f7f9");
    public static final int d = Color.parseColor("#ff4080ff");
    public static final int e = Color.parseColor("#23272F");
    public static final int f = Color.parseColor("#ff4080ff");
    private static final long serialVersionUID = 8946536326456653736L;
    private int g = a;
    private int h = b;
    private int i = ViewCompat.MEASURED_STATE_MASK;
    private int j = c;
    private int k = d;
    private int l = -1;
    private int m = ViewCompat.MEASURED_STATE_MASK;

    public static j a(JSONObject jSONObject) {
        j jVar = new j();
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("accent_color");
            String strOptString2 = jSONObject.optString("body_color");
            String strOptString3 = jSONObject.optString("subtitle_color");
            String strOptString4 = jSONObject.optString("bg_color");
            String strOptString5 = jSONObject.optString("cta_color");
            String strOptString6 = jSONObject.optString("cta_text_color");
            String strOptString7 = jSONObject.optString("title_color");
            if (!TextUtils.isEmpty(strOptString)) {
                jVar.g = Color.parseColor(strOptString);
            }
            if (!TextUtils.isEmpty(strOptString2)) {
                jVar.h = Color.parseColor(strOptString2);
            }
            if (!TextUtils.isEmpty(strOptString3)) {
                jVar.i = Color.parseColor(strOptString3);
            }
            if (!TextUtils.isEmpty(strOptString4)) {
                jVar.j = Color.parseColor(strOptString4);
            }
            if (!TextUtils.isEmpty(strOptString5)) {
                jVar.k = Color.parseColor(strOptString5);
            }
            if (!TextUtils.isEmpty(strOptString6)) {
                jVar.l = Color.parseColor(strOptString6);
            }
            if (!TextUtils.isEmpty(strOptString7)) {
                jVar.m = Color.parseColor(strOptString7);
            }
        }
        return jVar;
    }

    public int a(boolean z) {
        if (z) {
            return -1;
        }
        return this.g;
    }

    public int b(boolean z) {
        if (z) {
            return -1;
        }
        return this.h;
    }

    public int c(boolean z) {
        if (z) {
            return -1;
        }
        return this.i;
    }

    public int d(boolean z) {
        return z ? e : this.j;
    }

    public int e(boolean z) {
        if (z) {
            return -1;
        }
        return this.k;
    }

    public int f(boolean z) {
        return z ? f : this.l;
    }

    public int g(boolean z) {
        if (z) {
            return -1;
        }
        return this.m;
    }
}
