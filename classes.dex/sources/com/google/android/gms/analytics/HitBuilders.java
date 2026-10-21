package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HitBuilders {

    @Deprecated
    public static class AppViewBuilder extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    public static class EventBuilder extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            set("&t", "event");
        }

        public EventBuilder(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public EventBuilder setAction(String str) {
            set("&ea", str);
            return this;
        }

        public EventBuilder setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public EventBuilder setLabel(String str) {
            set("&el", str);
            return this;
        }

        public EventBuilder setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    public static class ExceptionBuilder extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            set("&t", "exception");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public ExceptionBuilder setFatal(boolean z) {
            set("&exf", zzao.zzat(z));
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class HitBuilder<T extends HitBuilder> {
        ProductAction zzcsr;
        private Map<String, String> zzcsq = new HashMap();
        Map<String, List<Product>> zzcss = new HashMap();
        List<Promotion> zzcst = new ArrayList();
        List<Product> zzcsu = new ArrayList();

        protected HitBuilder() {
        }

        private T zzo(String str, String str2) {
            if (str == null) {
                zzae.zzcy("HitBuilder.setIfNonNull() called with a null paramName.");
            } else if (str2 != null) {
                this.zzcsq.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzae.zzcy("product should be non-null");
            } else {
                if (str == null) {
                    str = "";
                }
                if (!this.zzcss.containsKey(str)) {
                    this.zzcss.put(str, new ArrayList());
                }
                this.zzcss.get(str).add(product);
            }
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzae.zzcy("product should be non-null");
            } else {
                this.zzcsu.add(product);
            }
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzae.zzcy("promotion should be non-null");
            } else {
                this.zzcst.add(promotion);
            }
            return this;
        }

        public Map<String, String> build() {
            HashMap map = new HashMap(this.zzcsq);
            if (this.zzcsr != null) {
                map.putAll(this.zzcsr.build());
            }
            Iterator<Promotion> it = this.zzcst.iterator();
            int i = 1;
            while (it.hasNext()) {
                map.putAll(it.next().zzef(zzc.zzbi(i)));
                i++;
            }
            Iterator<Product> it2 = this.zzcsu.iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                map.putAll(it2.next().zzef(zzc.zzbg(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.zzcss.entrySet()) {
                List<Product> value = entry.getValue();
                String strZzbl = zzc.zzbl(i3);
                int i4 = 1;
                for (Product product : value) {
                    String strValueOf = String.valueOf(strZzbl);
                    String strValueOf2 = String.valueOf(zzc.zzbk(i4));
                    map.putAll(product.zzef(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String strValueOf3 = String.valueOf(strZzbl);
                    String strValueOf4 = String.valueOf("nm");
                    map.put(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3), entry.getKey());
                }
                i3++;
            }
            return map;
        }

        protected String get(String str) {
            return this.zzcsq.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.zzcsq.put(str, str2);
            } else {
                zzae.zzcy("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map != null) {
                this.zzcsq.putAll(new HashMap(map));
            }
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String strZzfa = zzao.zzfa(str);
            if (!TextUtils.isEmpty(strZzfa)) {
                Map<String, String> mapZzey = zzao.zzey(strZzfa);
                zzo("&cc", mapZzey.get("utm_content"));
                zzo("&cm", mapZzey.get("utm_medium"));
                zzo("&cn", mapZzey.get("utm_campaign"));
                zzo("&cs", mapZzey.get("utm_source"));
                zzo("&ck", mapZzey.get("utm_term"));
                zzo("&ci", mapZzey.get("utm_id"));
                zzo("&anid", mapZzey.get("anid"));
                zzo("&gclid", mapZzey.get("gclid"));
                zzo("&dclid", mapZzey.get("dclid"));
                zzo("&aclid", mapZzey.get("aclid"));
                zzo("&gmob_t", mapZzey.get("gmob_t"));
            }
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(zzc.zzbc(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(zzc.zzbe(i), Float.toString(f));
            return this;
        }

        protected T setHitType(String str) {
            set("&t", str);
            return this;
        }

        public T setNewSession() {
            set("&sc", "start");
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", zzao.zzat(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzcsr = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.zzcsq.put("&promoa", str);
            return this;
        }
    }

    @Deprecated
    public static class ItemBuilder extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            set("&t", "item");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ItemBuilder setCategory(String str) {
            set("&iv", str);
            return this;
        }

        public ItemBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public ItemBuilder setName(String str) {
            set("&in", str);
            return this;
        }

        public ItemBuilder setPrice(double d) {
            set("&ip", Double.toString(d));
            return this;
        }

        public ItemBuilder setQuantity(long j) {
            set("&iq", Long.toString(j));
            return this;
        }

        public ItemBuilder setSku(String str) {
            set("&ic", str);
            return this;
        }

        public ItemBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }

    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    public static class SocialBuilder extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            set("&t", "social");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public SocialBuilder setAction(String str) {
            set("&sa", str);
            return this;
        }

        public SocialBuilder setNetwork(String str) {
            set("&sn", str);
            return this;
        }

        public SocialBuilder setTarget(String str) {
            set("&st", str);
            return this;
        }
    }

    public static class TimingBuilder extends HitBuilder<TimingBuilder> {
        public TimingBuilder() {
            set("&t", "timing");
        }

        public TimingBuilder(String str, String str2, long j) {
            this();
            setVariable(str2);
            setValue(j);
            setCategory(str);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TimingBuilder setCategory(String str) {
            set("&utc", str);
            return this;
        }

        public TimingBuilder setLabel(String str) {
            set("&utl", str);
            return this;
        }

        public TimingBuilder setValue(long j) {
            set("&utt", Long.toString(j));
            return this;
        }

        public TimingBuilder setVariable(String str) {
            set("&utv", str);
            return this;
        }
    }

    @Deprecated
    public static class TransactionBuilder extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            set("&t", "transaction");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TransactionBuilder setAffiliation(String str) {
            set("&ta", str);
            return this;
        }

        public TransactionBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public TransactionBuilder setRevenue(double d) {
            set("&tr", Double.toString(d));
            return this;
        }

        public TransactionBuilder setShipping(double d) {
            set("&ts", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTax(double d) {
            set("&tt", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }
}
