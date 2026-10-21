package com.facebook.ads.internal.f;

import com.facebook.ads.internal.q.a.m;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends d {
    public a(String str, String str2) {
        super(m.b(), m.c(), a(str, str2));
    }

    private static Map<String, String> a(String str, String str2) {
        HashMap map = new HashMap();
        map.put(Constants.ParametersKeys.KEY, str);
        map.put(Constants.ParametersKeys.VALUE, str2);
        return map;
    }

    @Override // com.facebook.ads.internal.f.d
    public String a() {
        return "client_response";
    }
}
