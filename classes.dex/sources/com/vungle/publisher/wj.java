package com.vungle.publisher;

import com.vungle.publisher.wc;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wj extends wc {
    private String m;

    public String n() {
        return this.m;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wc.a<wj> {
        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wc.a, com.vungle.publisher.vy
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public wj e(JSONObject jSONObject) throws JSONException {
            wj wjVar = (wj) super.e(jSONObject);
            if (wjVar != null) {
                wjVar.m = ra.f(jSONObject, "mraidContent");
            }
            return wjVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wj[] b(int i) {
            return new wj[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wj b() {
            return new wj();
        }
    }
}
