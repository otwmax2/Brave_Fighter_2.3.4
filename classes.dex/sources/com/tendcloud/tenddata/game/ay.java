package com.tendcloud.tenddata.game;

import com.ironsource.sdk.constants.Constants;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ay {
    private static cr a = new cr();
    private static cq b = new cq();

    ay() {
    }

    private String a() {
        return "\"appProfile\":" + b.a();
    }

    private String b() {
        return "\"deviceProfile\":" + a.a();
    }

    private String d(List list) {
        StringBuilder sb = new StringBuilder("\"events\":[");
        boolean z = false;
        Iterator it = list.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                sb.append(Constants.RequestParameters.RIGHT_BRACKETS);
                return sb.toString();
            }
            ap apVar = (ap) it.next();
            if (z2) {
                sb.append(",");
            }
            sb.append(apVar.b);
            z = true;
        }
    }

    String a(List list) {
        try {
            StringBuilder sb = new StringBuilder("{");
            sb.append(a()).append(",").append(b()).append(",");
            if (list == null || list.size() == 0) {
                sb.append("\"events\":[]");
            } else {
                sb.append(d(list));
            }
            return sb.append("}").toString();
        } catch (Exception e) {
            bp.c("PostDataPackage.getPostData() message : " + e.getMessage());
            return null;
        }
    }

    void b(List list) {
        aw.b();
    }

    void c(List list) {
    }
}
