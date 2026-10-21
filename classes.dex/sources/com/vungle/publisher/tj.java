package com.vungle.publisher;

import com.vungle.publisher.bw;
import com.vungle.publisher.log.Logger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class tj extends tq {

    @Inject
    uq a;

    @Inject
    bw b;

    @Inject
    tj() {
    }

    public void a(cn cnVar, jf jfVar, List<String> list) {
        HashMap map = new HashMap();
        map.put("%timestamp%", String.valueOf(System.currentTimeMillis()));
        a(cnVar, jfVar, map, list);
    }

    public void a(cn cnVar, jf jfVar, String... strArr) {
        if (strArr != null) {
            a(cnVar, jfVar, (Map<String, String>) null, Arrays.asList(strArr));
        }
    }

    void a(cn cnVar, jf jfVar, Map<String, String> map, List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str != null) {
                    this.b.a(tk.a(this, cnVar, jfVar, str, map), bw.b.externalNetworkRequest);
                }
            }
        }
    }

    /* synthetic */ void a(cn cnVar, jf jfVar, String str, Map map) {
        try {
            this.a.a(cnVar, jfVar, a(str, map)).d();
        } catch (Exception e) {
            Logger.w(Logger.NETWORK_TAG, "error sending " + jfVar + " event", e);
        }
    }

    String a(String str, Map<String, String> map) {
        if (map != null) {
            StringBuilder sb = new StringBuilder(str);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                int i = -1;
                while (true) {
                    int iIndexOf = sb.indexOf(key, i);
                    if (iIndexOf > 0) {
                        sb.replace(iIndexOf, key.length() + iIndexOf, entry.getValue() == null ? "" : entry.getValue());
                        i = iIndexOf;
                    }
                }
            }
            return sb.toString();
        }
        return str;
    }
}
