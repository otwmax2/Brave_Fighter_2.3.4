package com.unity3d.ads.device;

import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.JsonStorage;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Storage extends JsonStorage {
    private String _targetFileName;
    private StorageManager.StorageType _type;

    public Storage(String targetFileName, StorageManager.StorageType type) {
        this._targetFileName = targetFileName;
        this._type = type;
    }

    public StorageManager.StorageType getType() {
        return this._type;
    }

    public synchronized boolean readStorage() {
        boolean z = false;
        synchronized (this) {
            File f = new File(this._targetFileName);
            String fileData = Utilities.readFile(f);
            if (fileData != null) {
                try {
                    setData(new JSONObject(Utilities.readFile(f)));
                    z = true;
                } catch (Exception e) {
                    DeviceLog.exception("Error creating storage JSON", e);
                }
            }
        }
        return z;
    }

    public synchronized boolean initStorage() {
        readStorage();
        super.initData();
        return true;
    }

    public synchronized boolean writeStorage() {
        File f;
        f = new File(this._targetFileName);
        return getData() != null ? Utilities.writeFile(f, getData().toString()) : false;
    }

    public synchronized boolean clearStorage() {
        File f;
        clearData();
        f = new File(this._targetFileName);
        return f.delete();
    }

    public synchronized boolean storageFileExists() {
        File f;
        f = new File(this._targetFileName);
        return f.exists();
    }

    public synchronized void sendEvent(StorageEvent eventType, Object value) {
        boolean success = WebViewApp.getCurrentApp() != null ? WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.STORAGE, eventType, this._type.name(), value) : false;
        if (!success) {
            DeviceLog.debug("Couldn't send storage event to WebApp");
        }
    }
}
