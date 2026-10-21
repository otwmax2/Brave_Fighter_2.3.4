package com.vungle.publisher;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wz {
    Map<String, wy> a;

    public Collection<wy> a() {
        return this.a.values();
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends vy<wz> {
        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vy
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wz c(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            wz wzVarB = b();
            wzVarB.a = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                wzVarB.a.put(next, new wy(next, jSONObject.getJSONObject(next)));
            }
            return wzVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wz[] b(int i) {
            return new wz[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wz b() {
            return new wz();
        }
    }
}
