package com.facebook.ads.internal.q.a;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class t {
    public static String a(Set<String> set, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(str);
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : "";
    }
}
