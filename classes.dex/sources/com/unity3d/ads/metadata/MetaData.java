package com.unity3d.ads.metadata;

import android.content.Context;
import com.unity3d.ads.device.Storage;
import com.unity3d.ads.device.StorageEvent;
import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.JsonStorage;
import com.unity3d.ads.misc.Utilities;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MetaData extends JsonStorage {
    private String _category;
    protected Context _context;

    public MetaData(Context context) {
        this._context = context.getApplicationContext();
    }

    public void setCategory(String category) {
        this._category = category;
    }

    public String getCategory() {
        return this._category;
    }

    @Override // com.unity3d.ads.misc.JsonStorage
    public synchronized boolean set(String key, Object value) {
        boolean success;
        initData();
        success = false;
        if (super.set(getActualKey(key) + ".value", value)) {
            if (super.set(getActualKey(key) + ".ts", Long.valueOf(System.currentTimeMillis()))) {
                success = true;
            }
        }
        return success;
    }

    protected synchronized boolean setRaw(String key, Object value) {
        boolean success;
        initData();
        success = false;
        if (super.set(getActualKey(key), value)) {
            success = true;
        }
        return success;
    }

    public void commit() {
        if (StorageManager.init(this._context)) {
            Storage storage = StorageManager.getStorage(StorageManager.StorageType.PUBLIC);
            if (getData() != null && storage != null) {
                JSONObject data = getData();
                Iterator<String> keys = data.keys();
                while (keys.hasNext()) {
                    String key = keys.next();
                    Object value = get(key);
                    if (storage.get(key) != null && (storage.get(key) instanceof JSONObject) && (get(key) instanceof JSONObject)) {
                        try {
                            value = Utilities.mergeJsonObjects((JSONObject) value, (JSONObject) storage.get(key));
                        } catch (Exception e) {
                            DeviceLog.exception("Exception merging JSONs", e);
                        }
                    }
                    storage.set(key, value);
                }
                storage.writeStorage();
                storage.sendEvent(StorageEvent.SET, getData());
                return;
            }
            return;
        }
        DeviceLog.error("Unity Ads could not commit metadata due to storage error");
    }

    private String getActualKey(String key) {
        if (getCategory() == null) {
            return key;
        }
        String finalKey = getCategory() + "." + key;
        return finalKey;
    }
}
