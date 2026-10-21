package com.google.android.gms.internal;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzme extends com.google.android.gms.analytics.zzg<zzme> {
    private ProductAction zzcsr;
    private final List<Product> zzcsu = new ArrayList();
    private final List<Promotion> zzcst = new ArrayList();
    private final Map<String, List<Product>> zzcss = new HashMap();

    public String toString() {
        HashMap map = new HashMap();
        if (!this.zzcsu.isEmpty()) {
            map.put("products", this.zzcsu);
        }
        if (!this.zzcst.isEmpty()) {
            map.put("promotions", this.zzcst);
        }
        if (!this.zzcss.isEmpty()) {
            map.put("impressions", this.zzcss);
        }
        map.put("productAction", this.zzcsr);
        return zzk(map);
    }

    public void zza(Product product, String str) {
        if (product == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (!this.zzcss.containsKey(str)) {
            this.zzcss.put(str, new ArrayList());
        }
        this.zzcss.get(str).add(product);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzme zzmeVar) {
        zzmeVar.zzcsu.addAll(this.zzcsu);
        zzmeVar.zzcst.addAll(this.zzcst);
        for (Map.Entry<String, List<Product>> entry : this.zzcss.entrySet()) {
            String key = entry.getKey();
            Iterator<Product> it = entry.getValue().iterator();
            while (it.hasNext()) {
                zzmeVar.zza(it.next(), key);
            }
        }
        if (this.zzcsr != null) {
            zzmeVar.zzcsr = this.zzcsr;
        }
    }

    public ProductAction zzxs() {
        return this.zzcsr;
    }

    public List<Product> zzxt() {
        return Collections.unmodifiableList(this.zzcsu);
    }

    public Map<String, List<Product>> zzxu() {
        return this.zzcss;
    }

    public List<Promotion> zzxv() {
        return Collections.unmodifiableList(this.zzcst);
    }
}
