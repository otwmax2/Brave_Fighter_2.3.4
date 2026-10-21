package com.tendcloud.tenddata.game;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.IntentFilter;
import android.os.ParcelUuid;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static final String a = "STATE_OFF";
    private static final String b = "STATE_ON";
    private static final String c = "STATE_TURNING_OFF";
    private static final String d = "STATE_TURNING_ON";
    private static final String e = "UNKNOWN";
    private static final String f = "CLASSIC";
    private static final String g = "LOW_ENERGY";
    private static final String h = "DUAL_MODE";
    private static final String i = "UNKNOWN";
    private static final String j = "SCAN_MODE_CONNECTABLE";
    private static final String k = "SCAN_MODE_CONNECTABLE_DISCOVERABLE";
    private static final String l = "UNPAIRED";
    private static final String m = "PAIRING";
    private static final String n = "PAIRED";
    private static JSONArray o = new JSONArray();
    private static Context p = null;
    private static Object q = null;

    private static String a(int i2) {
        switch (i2) {
            case 0:
                return "UNKNOWN";
            case 1:
                return f;
            case 2:
                return g;
            case 3:
                return h;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            default:
                return "EXCEPTION_CODE";
            case 10:
                return l;
            case 11:
                return m;
            case 12:
                return n;
        }
    }

    public static boolean a(Context context) {
        BluetoothAdapter defaultAdapter;
        try {
            if (!aa.b(context, "android.permission.BLUETOOTH") || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
                return false;
            }
            return defaultAdapter.isEnabled();
        } catch (Throwable th) {
            return false;
        }
    }

    private static String b(int i2) {
        switch (i2) {
            case 10:
                return a;
            case 11:
                return d;
            case 12:
                return b;
            case 13:
                return c;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 22:
            default:
                return "EXCEPTION_CODE";
            case 20:
                return "UNKNOWN";
            case 21:
                return j;
            case 23:
                return k;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject b(Context context, BluetoothDevice bluetoothDevice) {
        ParcelUuid[] uuids;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!aa.b(context, "android.permission.BLUETOOTH")) {
                jSONObject.put("error", "NO_PERMISSION");
                return jSONObject;
            }
            if (bluetoothDevice == null) {
                return jSONObject;
            }
            jSONObject.put("address", bluetoothDevice.getAddress());
            jSONObject.put("name", bluetoothDevice.getName());
            if (aa.a(18)) {
                jSONObject.put("type", a(bluetoothDevice.getType()));
            }
            jSONObject.put("bondState", a(bluetoothDevice.getBondState()));
            if (!aa.a(15) || (uuids = bluetoothDevice.getUuids()) == null) {
                return jSONObject;
            }
            JSONArray jSONArray = new JSONArray();
            for (ParcelUuid parcelUuid : uuids) {
                jSONArray.put(parcelUuid.toString());
            }
            jSONObject.put("uuids", jSONArray.toString());
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean b(Context context) {
        boolean zStartLeScan;
        try {
            p = context;
            if (aa.b(context, "android.permission.BLUETOOTH_ADMIN")) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                o = new JSONArray();
                if (!aa.a(18) || defaultAdapter == null) {
                    zStartLeScan = false;
                } else {
                    e eVar = new e();
                    q = eVar;
                    zStartLeScan = defaultAdapter.startLeScan(eVar);
                }
                if (zStartLeScan) {
                    return zStartLeScan;
                }
                context.registerReceiver(new f(), new IntentFilter("android.bluetooth.device.action.FOUND"));
                return defaultAdapter.startDiscovery();
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static void c(Context context) {
        try {
            if (aa.b(context, "android.permission.BLUETOOTH_ADMIN")) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null && aa.a(18) && q != null && (q instanceof BluetoothAdapter.LeScanCallback)) {
                    defaultAdapter.stopLeScan((BluetoothAdapter.LeScanCallback) q);
                }
                defaultAdapter.cancelDiscovery();
            }
        } catch (Throwable th) {
        }
    }

    public static JSONArray d(Context context) {
        return o;
    }

    public static JSONObject e(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (aa.b(context, "android.permission.BLUETOOTH")) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null) {
                    String address = defaultAdapter.getAddress();
                    if (BluetoothAdapter.checkBluetoothAddress(address)) {
                        jSONObject = b(context, defaultAdapter.getRemoteDevice(address));
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                        jSONObject.put("name", defaultAdapter.getName());
                        jSONObject.put("state", b(defaultAdapter.getState()));
                        jSONObject.put("scanMode", b(defaultAdapter.getScanMode()));
                    } else {
                        jSONObject.put("error", "DEVICE_INVALID");
                    }
                } else {
                    jSONObject.put("error", "NOT_SUPPORT_BLUETOOTH");
                }
            } else {
                jSONObject.put("error", "NO_PERMISSION");
            }
        } catch (Throwable th) {
            try {
                jSONObject.put("error", "EXCEPTION");
            } catch (JSONException e2) {
            }
        }
        return jSONObject;
    }

    public static JSONArray f(Context context) {
        BluetoothAdapter defaultAdapter;
        Set<BluetoothDevice> bondedDevices;
        try {
            if (aa.b(context, "android.permission.BLUETOOTH") && (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) != null && (bondedDevices = defaultAdapter.getBondedDevices()) != null && bondedDevices.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<BluetoothDevice> it = bondedDevices.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectB = b(context, it.next());
                    if (jSONObjectB != null) {
                        jSONArray.put(jSONObjectB);
                    }
                }
                return jSONArray;
            }
        } catch (Throwable th) {
        }
        return null;
    }
}
