package com.facebook.ads.internal.h;

import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static final String c = d.class.getSimpleName();
    private static final AdPlacementType d = AdPlacementType.UNKNOWN;
    public int a;
    public int b;
    private final long e = System.currentTimeMillis();
    private AdPlacementType f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private List<b> o;

    private d(Map<String, String> map) {
        this.a = -1;
        this.b = -1;
        this.f = d;
        this.g = 1;
        this.h = 0;
        this.i = 0;
        this.j = 20;
        this.k = 0;
        this.l = 1000;
        this.m = 10000;
        this.n = false;
        this.o = null;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            switch (entry.getKey()) {
                case "type":
                    this.f = AdPlacementType.fromString(entry.getValue());
                    break;
                case "min_viewability_percentage":
                    this.g = Integer.parseInt(entry.getValue());
                    break;
                case "viewability_check_ticker":
                    this.h = Integer.parseInt(entry.getValue());
                    break;
                case "refresh":
                    this.i = Integer.parseInt(entry.getValue());
                    break;
                case "refresh_threshold":
                    this.j = Integer.parseInt(entry.getValue());
                    break;
                case "cacheable":
                    this.n = Boolean.valueOf(entry.getValue()).booleanValue();
                    break;
                case "placement_width":
                    this.a = Integer.parseInt(entry.getValue());
                    break;
                case "placement_height":
                    this.b = Integer.parseInt(entry.getValue());
                    break;
                case "viewability_check_initial_delay":
                    this.k = Integer.parseInt(entry.getValue());
                    break;
                case "viewability_check_interval":
                    this.l = Integer.parseInt(entry.getValue());
                    break;
                case "request_timeout":
                    this.m = Integer.parseInt(entry.getValue());
                    break;
                case "conv_tracking_data":
                    this.o = b.a(entry.getValue());
                    try {
                        CookieManager cookieManager = CookieManager.getInstance();
                        boolean zAcceptCookie = cookieManager.acceptCookie();
                        cookieManager.setAcceptCookie(true);
                        for (b bVar : this.o) {
                            if (bVar.b()) {
                                cookieManager.setCookie(bVar.a, bVar.b + Constants.RequestParameters.EQUAL + bVar.c + ";Domain=" + bVar.a + ";Expires=" + bVar.a() + ";path=/");
                            }
                            break;
                        }
                        if (Build.VERSION.SDK_INT < 21) {
                            CookieSyncManager.getInstance().startSync();
                        }
                        cookieManager.setAcceptCookie(zAcceptCookie);
                        break;
                    } catch (Exception e) {
                        Log.w(c, "Failed to set cookie.", e);
                        break;
                    }
                    break;
            }
        }
    }

    public static d a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        HashMap map = new HashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, String.valueOf(jSONObject.opt(next)));
        }
        return new d(map);
    }

    public long a() {
        return this.e;
    }

    public AdPlacementType b() {
        return this.f;
    }

    public long c() {
        return this.i * 1000;
    }

    public long d() {
        return this.j * 1000;
    }

    public boolean e() {
        return this.n;
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.h;
    }

    public int h() {
        return this.k;
    }

    public int i() {
        return this.l;
    }

    public int j() {
        return this.m;
    }
}
