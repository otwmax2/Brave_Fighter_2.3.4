package com.tendcloud.tenddata.game;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ck extends bz {
    String g;
    String h;
    String i;

    public ck(String str, String str2, String str3) {
        super("G16");
        this.g = null;
        this.h = null;
        this.i = null;
        this.i = str;
        this.h = str2;
        this.g = str3;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("dt", this.h);
        } catch (JSONException e) {
            Log.e("TDGA EventPushToken", "deviceToken error");
        }
        a("channel", this.g).a("appId", this.i).a("deviceToken", jSONObject);
    }

    public String g() {
        return this.h;
    }

    public String h() {
        return this.i;
    }

    public String i() {
        return this.g;
    }
}
