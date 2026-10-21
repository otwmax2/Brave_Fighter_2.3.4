package com.tendcloud.tenddata.game;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class f extends BroadcastReceiver {
    f() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.bluetooth.device.action.FOUND".equals(intent.getAction())) {
            JSONObject jSONObjectB = d.b(context, (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE"));
            try {
                jSONObjectB.put("name", intent.getStringExtra("android.bluetooth.device.extra.NAME"));
            } catch (JSONException e) {
            }
            d.o.put(jSONObjectB);
        }
    }
}
