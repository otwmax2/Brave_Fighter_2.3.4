package com.google.android.gms.analytics.ecommerce;

import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.zzab;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Promotion {
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_VIEW = "view";
    Map<String, String> zzcwd = new HashMap();

    void put(String str, String str2) {
        zzab.zzb(str, "Name should be non-null");
        this.zzcwd.put(str, str2);
    }

    public Promotion setCreative(String str) {
        put("cr", str);
        return this;
    }

    public Promotion setId(String str) {
        put(ShareConstants.WEB_DIALOG_PARAM_ID, str);
        return this;
    }

    public Promotion setName(String str) {
        put("nm", str);
        return this;
    }

    public Promotion setPosition(String str) {
        put("ps", str);
        return this;
    }

    public String toString() {
        return zzg.zzao(this.zzcwd);
    }

    public Map<String, String> zzef(String str) {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : this.zzcwd.entrySet()) {
            String strValueOf = String.valueOf(str);
            String strValueOf2 = String.valueOf(entry.getKey());
            map.put(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), entry.getValue());
        }
        return map;
    }
}
