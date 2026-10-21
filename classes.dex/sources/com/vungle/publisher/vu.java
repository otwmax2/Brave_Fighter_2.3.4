package com.vungle.publisher;

import com.vungle.publisher.wu;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class vu extends wu {
    protected Map<String, List<String>> a;

    @Inject
    vu() {
    }

    public Collection<String> c() {
        if (this.a == null) {
            return null;
        }
        return this.a.keySet();
    }

    public List<String> a(String str) {
        if (this.a == null) {
            return null;
        }
        return this.a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends wu.a<vu> {

        @Inject
        Provider<vu> a;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wu.a, com.vungle.publisher.vy
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public vu e(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            vu vuVarB = b();
            vuVarB.a = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                List<String> listH = ra.h(jSONObject, next);
                if (next != null && listH != null) {
                    vuVarB.a.put(next, listH);
                }
            }
            return vuVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vu[] b(int i) {
            return new vu[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public vu b() {
            return this.a.get();
        }
    }
}
