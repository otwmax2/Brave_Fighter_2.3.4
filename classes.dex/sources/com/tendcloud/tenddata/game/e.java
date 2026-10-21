package com.tendcloud.tenddata.game;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes.dex */
final class e implements BluetoothAdapter.LeScanCallback {
    e() {
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        if (d.p != null) {
            d.o.put(d.b(d.p, bluetoothDevice));
        }
    }
}
