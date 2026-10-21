package com.vungle.publisher;

import com.vungle.publisher.wc;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wd extends wc {
    boolean m;
    JSONObject n;

    protected wd() {
    }

    public boolean n() {
        return this.m;
    }

    public JSONObject o() {
        return this.n;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wc.a<wd> {
        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wc.a, com.vungle.publisher.vy
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public wd e(JSONObject jSONObject) throws JSONException {
            wd wdVar = (wd) super.e(jSONObject);
            wdVar.n = jSONObject;
            wdVar.m = wdVar.j() == null;
            return wdVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wd[] b(int i) {
            return new wd[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wd b() {
            return new wd();
        }
    }
}
