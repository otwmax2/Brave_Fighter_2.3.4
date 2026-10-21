package com.unity3d.ads.misc;

import android.text.TextUtils;
import com.unity3d.ads.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JsonStorage {
    private JSONObject _data;

    public synchronized boolean initData() {
        boolean z;
        if (this._data == null) {
            this._data = new JSONObject();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void setData(JSONObject data) {
        this._data = data;
    }

    public synchronized JSONObject getData() {
        return this._data;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean hasData() {
        /*
            r1 = this;
            monitor-enter(r1)
            org.json.JSONObject r0 = r1._data     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            org.json.JSONObject r0 = r1._data     // Catch: java.lang.Throwable -> L12
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L12
            if (r0 <= 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.misc.JsonStorage.hasData():boolean");
    }

    public synchronized void clearData() {
        this._data = null;
    }

    public synchronized boolean set(String key, Object value) {
        boolean z = false;
        synchronized (this) {
            if (this._data == null || key == null || key.length() == 0 || value == null) {
                DeviceLog.error("Storage not properly initialized or incorrect parameters:" + this._data + ", " + key + ", " + value);
            } else {
                createObjectTree(getParentObjectTreeFor(key));
                if (findObject(getParentObjectTreeFor(key)) instanceof JSONObject) {
                    JSONObject parentObject = (JSONObject) findObject(getParentObjectTreeFor(key));
                    String[] objects = key.split("\\.");
                    if (parentObject != null) {
                        try {
                            parentObject.put(objects[objects.length - 1], value);
                            z = true;
                        } catch (JSONException e) {
                            DeviceLog.exception("Couldn't set value", e);
                        }
                    } else {
                        z = true;
                    }
                } else {
                    DeviceLog.debug("Cannot set subvalue to an object that is not JSONObject");
                }
            }
        }
        return z;
    }

    public synchronized Object get(String key) {
        JSONObject parentObject;
        Object o = null;
        synchronized (this) {
            if (this._data == null) {
                DeviceLog.error("Data is NULL, readStorage probably not called");
            } else {
                String[] objects = key.split("\\.");
                if ((findObject(getParentObjectTreeFor(key)) instanceof JSONObject) && (parentObject = (JSONObject) findObject(getParentObjectTreeFor(key))) != null) {
                    o = null;
                    try {
                        if (parentObject.has(objects[objects.length - 1])) {
                            o = parentObject.get(objects[objects.length - 1]);
                        }
                    } catch (Exception e) {
                        DeviceLog.exception("Error getting data", e);
                    }
                }
            }
        }
        return o;
    }

    public synchronized List<String> getKeys(String key, boolean recursive) {
        List<String> keys;
        if (get(key) instanceof JSONObject) {
            JSONObject parentObject = (JSONObject) get(key);
            keys = new ArrayList<>();
            if (parentObject != null) {
                Iterator<String> i = parentObject.keys();
                while (i.hasNext()) {
                    String currentKey = i.next();
                    List<String> subkeys = null;
                    if (recursive) {
                        subkeys = getKeys(key + "." + currentKey, recursive);
                    }
                    keys.add(currentKey);
                    if (subkeys != null) {
                        for (String subkey : subkeys) {
                            keys.add(currentKey + "." + subkey);
                        }
                    }
                }
            }
        } else {
            keys = null;
        }
        return keys;
    }

    public synchronized boolean delete(String key) {
        JSONObject parentObject;
        boolean z = false;
        synchronized (this) {
            if (this._data == null) {
                DeviceLog.error("Data is NULL, readStorage probably not called");
            } else {
                String[] objects = key.split("\\.");
                if ((findObject(getParentObjectTreeFor(key)) instanceof JSONObject) && (parentObject = (JSONObject) findObject(getParentObjectTreeFor(key))) != null && parentObject.remove(objects[objects.length - 1]) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    private synchronized Object findObject(String key) {
        JSONObject jSONObject = null;
        synchronized (this) {
            String[] objects = key.split("\\.");
            JSONObject parentObject = this._data;
            if (key.length() != 0) {
                int idx = 0;
                while (true) {
                    if (idx >= objects.length) {
                        jSONObject = parentObject;
                        break;
                    }
                    if (!parentObject.has(objects[idx])) {
                        break;
                    }
                    try {
                        parentObject = parentObject.getJSONObject(objects[idx]);
                        idx++;
                    } catch (Exception e) {
                        DeviceLog.exception("Couldn't read JSONObject: " + objects[idx], e);
                        return jSONObject;
                    }
                }
            } else {
                jSONObject = parentObject;
            }
        }
        return jSONObject;
    }

    private synchronized void createObjectTree(String tree) {
        String[] objects = tree.split("\\.");
        JSONObject parentObject = this._data;
        if (tree.length() != 0) {
            for (int idx = 0; idx < objects.length; idx++) {
                if (!parentObject.has(objects[idx])) {
                    try {
                        parentObject = parentObject.put(objects[idx], new JSONObject()).getJSONObject(objects[idx]);
                    } catch (Exception e) {
                        DeviceLog.exception("Couldn't create new JSONObject", e);
                    }
                } else {
                    try {
                        parentObject = parentObject.getJSONObject(objects[idx]);
                    } catch (Exception e2) {
                        DeviceLog.exception("Couldn't get existing JSONObject", e2);
                    }
                }
            }
        }
    }

    private synchronized String getParentObjectTreeFor(String tree) {
        String parentObject;
        Object[] objects = tree.split("\\.");
        ArrayList<String> tmpObs = new ArrayList<>(Arrays.asList(objects));
        tmpObs.remove(tmpObs.size() - 1);
        Object[] objects2 = tmpObs.toArray();
        parentObject = TextUtils.join(".", objects2);
        return parentObject;
    }
}
