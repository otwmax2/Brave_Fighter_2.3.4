package com.google.android.gms.tagmanager;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zzai;
import com.ironsource.sdk.constants.Constants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class zzdm extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzaf.UNIVERSAL_ANALYTICS.toString();
    private static final String ayX = com.google.android.gms.internal.zzag.ACCOUNT.toString();
    private static final String ayY = com.google.android.gms.internal.zzag.ANALYTICS_PASS_THROUGH.toString();
    private static final String ayZ = com.google.android.gms.internal.zzag.ENABLE_ECOMMERCE.toString();
    private static final String aza = com.google.android.gms.internal.zzag.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String azb = com.google.android.gms.internal.zzag.ECOMMERCE_MACRO_DATA.toString();
    private static final String azc = com.google.android.gms.internal.zzag.ANALYTICS_FIELDS.toString();
    private static final String azd = com.google.android.gms.internal.zzag.TRACK_TRANSACTION.toString();
    private static final String aze = com.google.android.gms.internal.zzag.TRANSACTION_DATALAYER_MAP.toString();
    private static final String azf = com.google.android.gms.internal.zzag.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> azg = Arrays.asList(ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern azh = Pattern.compile("dimension(\\d+)");
    private static final Pattern azi = Pattern.compile("metric(\\d+)");
    private static Map<String, String> azj;
    private static Map<String, String> azk;
    private final DataLayer ava;
    private final Set<String> azl;
    private final zzdi azm;

    public zzdm(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzdi(context));
    }

    zzdm(Context context, DataLayer dataLayer, zzdi zzdiVar) {
        super(ID, new String[0]);
        this.ava = dataLayer;
        this.azm = zzdiVar;
        this.azl = new HashSet();
        this.azl.add("");
        this.azl.add(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.azl.add("false");
    }

    private void zza(Tracker tracker, Map<String, zzai.zza> map) {
        String strZzox = zzox("transactionId");
        if (strZzox == null) {
            zzbn.e("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList linkedList = new LinkedList();
        try {
            Map<String, String> mapZzm = zzm(map.get(azc));
            mapZzm.put("&t", "transaction");
            for (Map.Entry<String, String> entry : zzbh(map).entrySet()) {
                zze(mapZzm, entry.getValue(), zzox(entry.getKey()));
            }
            linkedList.add(mapZzm);
            List<Map<String, String>> listZzoy = zzoy("transactionProducts");
            if (listZzoy != null) {
                for (Map<String, String> map2 : listZzoy) {
                    if (map2.get("name") == null) {
                        zzbn.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map<String, String> mapZzm2 = zzm(map.get(azc));
                    mapZzm2.put("&t", "item");
                    mapZzm2.put("&ti", strZzox);
                    for (Map.Entry<String, String> entry2 : zzbi(map).entrySet()) {
                        zze(mapZzm2, entry2.getValue(), map2.get(entry2.getKey()));
                    }
                    linkedList.add(mapZzm2);
                }
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                tracker.send((Map) it.next());
            }
        } catch (IllegalArgumentException e) {
            zzbn.zzb("Unable to send transaction", e);
        }
    }

    private Double zzav(Object obj) {
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String strValueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(strValueOf.length() != 0 ? "Cannot convert the object to Double: ".concat(strValueOf) : new String("Cannot convert the object to Double: "));
            }
        }
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        String strValueOf2 = String.valueOf(obj.toString());
        throw new RuntimeException(strValueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(strValueOf2) : new String("Cannot convert the object to Double: "));
    }

    private Integer zzaw(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String strValueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(strValueOf.length() != 0 ? "Cannot convert the object to Integer: ".concat(strValueOf) : new String("Cannot convert the object to Integer: "));
            }
        }
        if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        String strValueOf2 = String.valueOf(obj.toString());
        throw new RuntimeException(strValueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(strValueOf2) : new String("Cannot convert the object to Integer: "));
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzb(com.google.android.gms.analytics.Tracker r8, java.util.Map<java.lang.String, com.google.android.gms.internal.zzai.zza> r9) {
        /*
            Method dump skipped, instruction units count: 473
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzdm.zzb(com.google.android.gms.analytics.Tracker, java.util.Map):void");
    }

    private Promotion zzbf(Map<String, String> map) {
        Promotion promotion = new Promotion();
        String str = map.get(ShareConstants.WEB_DIALOG_PARAM_ID);
        if (str != null) {
            promotion.setId(String.valueOf(str));
        }
        String str2 = map.get("name");
        if (str2 != null) {
            promotion.setName(String.valueOf(str2));
        }
        String str3 = map.get("creative");
        if (str3 != null) {
            promotion.setCreative(String.valueOf(str3));
        }
        String str4 = map.get(Constants.ParametersKeys.POSITION);
        if (str4 != null) {
            promotion.setPosition(String.valueOf(str4));
        }
        return promotion;
    }

    private Product zzbg(Map<String, Object> map) {
        Product product = new Product();
        Object obj = map.get(ShareConstants.WEB_DIALOG_PARAM_ID);
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get("name");
        if (obj2 != null) {
            product.setName(String.valueOf(obj2));
        }
        Object obj3 = map.get("brand");
        if (obj3 != null) {
            product.setBrand(String.valueOf(obj3));
        }
        Object obj4 = map.get("category");
        if (obj4 != null) {
            product.setCategory(String.valueOf(obj4));
        }
        Object obj5 = map.get("variant");
        if (obj5 != null) {
            product.setVariant(String.valueOf(obj5));
        }
        Object obj6 = map.get("coupon");
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get(Constants.ParametersKeys.POSITION);
        if (obj7 != null) {
            product.setPosition(zzaw(obj7).intValue());
        }
        Object obj8 = map.get(InAppPurchaseMetaData.KEY_PRICE);
        if (obj8 != null) {
            product.setPrice(zzav(obj8).doubleValue());
        }
        Object obj9 = map.get("quantity");
        if (obj9 != null) {
            product.setQuantity(zzaw(obj9).intValue());
        }
        for (String str : map.keySet()) {
            Matcher matcher = azh.matcher(str);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str)));
                } catch (NumberFormatException e) {
                    String strValueOf = String.valueOf(str);
                    zzbn.zzcy(strValueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(strValueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = azi.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzaw(map.get(str)).intValue());
                    } catch (NumberFormatException e2) {
                        String strValueOf2 = String.valueOf(str);
                        zzbn.zzcy(strValueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(strValueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    private Map<String, String> zzbh(Map<String, zzai.zza> map) {
        zzai.zza zzaVar = map.get(aze);
        if (zzaVar != null) {
            return zzc(zzaVar);
        }
        if (azj == null) {
            HashMap map2 = new HashMap();
            map2.put("transactionId", "&ti");
            map2.put("transactionAffiliation", "&ta");
            map2.put("transactionTax", "&tt");
            map2.put("transactionShipping", "&ts");
            map2.put("transactionTotal", "&tr");
            map2.put("transactionCurrency", "&cu");
            azj = map2;
        }
        return azj;
    }

    private Map<String, String> zzbi(Map<String, zzai.zza> map) {
        zzai.zza zzaVar = map.get(azf);
        if (zzaVar != null) {
            return zzc(zzaVar);
        }
        if (azk == null) {
            HashMap map2 = new HashMap();
            map2.put("name", "&in");
            map2.put("sku", "&ic");
            map2.put("category", "&iv");
            map2.put(InAppPurchaseMetaData.KEY_PRICE, "&ip");
            map2.put("quantity", "&iq");
            map2.put(InAppPurchaseMetaData.KEY_CURRENCY, "&cu");
            azk = map2;
        }
        return azk;
    }

    private Map<String, String> zzc(zzai.zza zzaVar) {
        Object objZzl = zzdl.zzl(zzaVar);
        if (!(objZzl instanceof Map)) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) objZzl).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private void zze(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private ProductAction zzg(String str, Map<String, Object> map) {
        ProductAction productAction = new ProductAction(str);
        Object obj = map.get(ShareConstants.WEB_DIALOG_PARAM_ID);
        if (obj != null) {
            productAction.setTransactionId(String.valueOf(obj));
        }
        Object obj2 = map.get("affiliation");
        if (obj2 != null) {
            productAction.setTransactionAffiliation(String.valueOf(obj2));
        }
        Object obj3 = map.get("coupon");
        if (obj3 != null) {
            productAction.setTransactionCouponCode(String.valueOf(obj3));
        }
        Object obj4 = map.get("list");
        if (obj4 != null) {
            productAction.setProductActionList(String.valueOf(obj4));
        }
        Object obj5 = map.get("option");
        if (obj5 != null) {
            productAction.setCheckoutOptions(String.valueOf(obj5));
        }
        Object obj6 = map.get("revenue");
        if (obj6 != null) {
            productAction.setTransactionRevenue(zzav(obj6).doubleValue());
        }
        Object obj7 = map.get("tax");
        if (obj7 != null) {
            productAction.setTransactionTax(zzav(obj7).doubleValue());
        }
        Object obj8 = map.get("shipping");
        if (obj8 != null) {
            productAction.setTransactionShipping(zzav(obj8).doubleValue());
        }
        Object obj9 = map.get("step");
        if (obj9 != null) {
            productAction.setCheckoutStep(zzaw(obj9).intValue());
        }
        return productAction;
    }

    private boolean zzj(Map<String, zzai.zza> map, String str) {
        zzai.zza zzaVar = map.get(str);
        if (zzaVar == null) {
            return false;
        }
        return zzdl.zzk(zzaVar).booleanValue();
    }

    private Map<String, String> zzm(zzai.zza zzaVar) {
        Map<String, String> mapZzc;
        if (zzaVar != null && (mapZzc = zzc(zzaVar)) != null) {
            String str = mapZzc.get("&aip");
            if (str != null && this.azl.contains(str.toLowerCase())) {
                mapZzc.remove("&aip");
            }
            return mapZzc;
        }
        return new HashMap();
    }

    private String zzox(String str) {
        Object obj = this.ava.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    private List<Map<String, String>> zzoy(String str) {
        Object obj = this.ava.get(str);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof Map)) {
                throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
            }
        }
        return (List) obj;
    }

    @Override // com.google.android.gms.tagmanager.zzdj, com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ zzai.zza zzav(Map map) {
        return super.zzav((Map<String, zzai.zza>) map);
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzax(Map<String, zzai.zza> map) {
        Tracker trackerZzop = this.azm.zzop("_GTM_DEFAULT_TRACKER_");
        trackerZzop.enableAdvertisingIdCollection(zzj(map, "collect_adid"));
        if (zzj(map, ayZ)) {
            zzb(trackerZzop, map);
            return;
        }
        if (zzj(map, ayY)) {
            trackerZzop.send(zzm(map.get(azc)));
        } else if (zzj(map, azd)) {
            zza(trackerZzop, map);
        } else {
            zzbn.zzcy("Ignoring unknown tag.");
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj, com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ boolean zzcac() {
        return super.zzcac();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ String zzcbl() {
        return super.zzcbl();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ Set zzcbm() {
        return super.zzcbm();
    }
}
