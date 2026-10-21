package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.ironsource.sdk.constants.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class v implements Serializable {
    private static final long serialVersionUID = 8751287062553772011L;
    private final List<d> a;
    private final String b;
    private final String c;
    private final j d;
    private final String e;
    private final String f;
    private final String g;
    private final j h;
    private final String i;
    private final int j;
    private final int k;

    private v(List<d> list, String str, String str2, String str3, String str4, String str5, String str6, j jVar, j jVar2, int i, int i2) {
        this.a = list;
        this.b = str;
        this.c = str2;
        this.d = jVar2;
        this.e = str3;
        this.f = str4;
        this.g = str6;
        this.h = jVar;
        this.i = str5;
        this.j = i;
        this.k = i2;
    }

    public static v a(JSONObject jSONObject, Context context) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = null;
        String strOptString = jSONObject.optString("ad_choices_link_url");
        String strOptString2 = jSONObject.optString("ct");
        String strOptString3 = jSONObject.optString("title");
        int iOptInt = jSONObject.optInt("viewability_check_initial_delay", 0);
        int iOptInt2 = jSONObject.optInt("viewability_check_interval", 1000);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("icon");
        String strOptString4 = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optString("url") : "";
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("layout");
        if (jSONObjectOptJSONObject4 != null) {
            jSONObjectOptJSONObject = jSONObjectOptJSONObject4.optJSONObject(Constants.ParametersKeys.ORIENTATION_PORTRAIT);
            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject4.optJSONObject(Constants.ParametersKeys.ORIENTATION_LANDSCAPE);
        } else {
            jSONObjectOptJSONObject = null;
        }
        JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("generic_text");
        String strOptString5 = jSONObjectOptJSONObject5 != null ? jSONObjectOptJSONObject5.optString("sponsored", "Sponsored") : "Sponsored";
        j jVarA = j.a(jSONObjectOptJSONObject);
        j jVarA2 = j.a(jSONObjectOptJSONObject2);
        String strOptString6 = jSONObject.optString("request_id", "");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("carousel");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            arrayList.add(d.a(jSONObject));
        } else {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    arrayList.add(d.a(jSONArrayOptJSONArray.getJSONObject(i)));
                } catch (JSONException e) {
                    com.facebook.ads.internal.q.d.a.a(e, context);
                    e.printStackTrace();
                }
            }
        }
        return new v(arrayList, strOptString, strOptString2, strOptString3, strOptString4, strOptString6, strOptString5, jVarA, jVarA2, iOptInt, iOptInt2);
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.f;
    }

    public List<d> d() {
        return Collections.unmodifiableList(this.a);
    }

    public String e() {
        return this.b;
    }

    public String f() {
        return this.i;
    }

    public String g() {
        return this.g;
    }

    public j h() {
        return this.h;
    }

    public j i() {
        return this.d;
    }

    public int j() {
        return this.j;
    }

    public int k() {
        return this.k;
    }
}
