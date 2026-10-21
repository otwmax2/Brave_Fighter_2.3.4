package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class mc extends vs {
    @Inject
    public mc() {
    }

    @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.put("privacyPolicyEnabled", true);
        return jSONObjectB;
    }
}
