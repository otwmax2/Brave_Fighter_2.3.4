package com.unity3d.ads.metadata;

import android.content.Context;
import com.unity3d.ads.device.Storage;
import com.unity3d.ads.device.StorageEvent;
import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class InAppPurchaseMetaData extends MetaData {
    public static final String IAP_KEY = "iap";
    public static final String KEY_CURRENCY = "currency";
    public static final String KEY_PRICE = "price";
    public static final String KEY_PRODUCT_ID = "productId";
    public static final String KEY_RECEIPT_PURCHASE_DATA = "receiptPurchaseData";
    public static final String KEY_SIGNATURE = "signature";

    public InAppPurchaseMetaData(Context context) {
        super(context);
    }

    public void setProductId(String productId) {
        set(KEY_PRODUCT_ID, productId);
    }

    public void setPrice(Double price) {
        set(KEY_PRICE, price);
    }

    public void setCurrency(String currency) {
        set(KEY_CURRENCY, currency);
    }

    public void setReceiptPurchaseData(String receiptPurchaseData) {
        set(KEY_RECEIPT_PURCHASE_DATA, receiptPurchaseData);
    }

    public void setSignature(String signature) {
        set(KEY_SIGNATURE, signature);
    }

    @Override // com.unity3d.ads.metadata.MetaData, com.unity3d.ads.misc.JsonStorage
    public synchronized boolean set(String key, Object value) {
        return setRaw(key, value);
    }

    @Override // com.unity3d.ads.metadata.MetaData
    public void commit() {
        if (StorageManager.init(this._context)) {
            Storage storage = StorageManager.getStorage(StorageManager.StorageType.PUBLIC);
            if (getData() != null && storage != null) {
                Object purchaseObject = storage.get("iap.purchases");
                JSONArray purchases = null;
                if (purchaseObject != null) {
                    try {
                        purchases = (JSONArray) purchaseObject;
                    } catch (Exception e) {
                        DeviceLog.error("Invalid object type for purchases");
                    }
                }
                if (purchases == null) {
                    purchases = new JSONArray();
                }
                JSONObject purchase = getData();
                try {
                    purchase.put("ts", System.currentTimeMillis());
                    purchases.put(purchase);
                    storage.set("iap.purchases", purchases);
                    storage.writeStorage();
                    storage.sendEvent(StorageEvent.SET, storage.get("iap.purchases"));
                    return;
                } catch (JSONException e2) {
                    DeviceLog.error("Error constructing purchase object");
                    return;
                }
            }
            return;
        }
        DeviceLog.error("Unity Ads could not commit metadata due to storage error or the data is null");
    }
}
