package com.vungle.publisher;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class xb extends vs {
    private Map<String, String> a;

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends vy<xb> {
        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vy
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public xb e(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            xb xbVarB = b();
            xbVarB.a = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                xbVarB.a.put(next, ra.f(jSONObject, next));
            }
            return xbVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public xb[] b(int i) {
            return new xb[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public xb b() {
            return new xb();
        }
    }
}
