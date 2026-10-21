package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.zzab;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ProductAction {
    public static final String ACTION_ADD = "add";
    public static final String ACTION_CHECKOUT = "checkout";
    public static final String ACTION_CHECKOUT_OPTION = "checkout_option";

    @Deprecated
    public static final String ACTION_CHECKOUT_OPTIONS = "checkout_options";
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_DETAIL = "detail";
    public static final String ACTION_PURCHASE = "purchase";
    public static final String ACTION_REFUND = "refund";
    public static final String ACTION_REMOVE = "remove";
    Map<String, String> zzcwd = new HashMap();

    public ProductAction(String str) {
        put("&pa", str);
    }

    public Map<String, String> build() {
        return new HashMap(this.zzcwd);
    }

    void put(String str, String str2) {
        zzab.zzb(str, "Name should be non-null");
        this.zzcwd.put(str, str2);
    }

    public ProductAction setCheckoutOptions(String str) {
        put("&col", str);
        return this;
    }

    public ProductAction setCheckoutStep(int i) {
        put("&cos", Integer.toString(i));
        return this;
    }

    public ProductAction setProductActionList(String str) {
        put("&pal", str);
        return this;
    }

    public ProductAction setProductListSource(String str) {
        put("&pls", str);
        return this;
    }

    public ProductAction setTransactionAffiliation(String str) {
        put("&ta", str);
        return this;
    }

    public ProductAction setTransactionCouponCode(String str) {
        put("&tcc", str);
        return this;
    }

    public ProductAction setTransactionId(String str) {
        put("&ti", str);
        return this;
    }

    public ProductAction setTransactionRevenue(double d) {
        put("&tr", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionShipping(double d) {
        put("&ts", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionTax(double d) {
        put("&tt", Double.toString(d));
        return this;
    }

    public String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : this.zzcwd.entrySet()) {
            if (entry.getKey().startsWith(Constants.RequestParameters.AMPERSAND)) {
                map.put(entry.getKey().substring(1), entry.getValue());
            } else {
                map.put(entry.getKey(), entry.getValue());
            }
        }
        return zzg.zzao(map);
    }
}
