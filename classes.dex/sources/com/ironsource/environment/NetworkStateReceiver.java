package com.ironsource.environment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    private boolean mConnected;
    private NetworkStateReceiverListener mListener;
    private ConnectivityManager mManager;

    public interface NetworkStateReceiverListener {
        void onNetworkAvailabilityChanged(boolean z);
    }

    public NetworkStateReceiver(Context context, NetworkStateReceiverListener listener) {
        this.mListener = listener;
        this.mManager = (ConnectivityManager) context.getSystemService("connectivity");
        checkAndSetState();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getExtras() != null && checkAndSetState()) {
            notifyState();
        }
    }

    private boolean checkAndSetState() {
        boolean prev = this.mConnected;
        NetworkInfo activeNetwork = this.mManager.getActiveNetworkInfo();
        this.mConnected = activeNetwork != null && activeNetwork.isConnectedOrConnecting();
        return prev != this.mConnected;
    }

    private void notifyState() {
        if (this.mListener != null) {
            if (this.mConnected) {
                this.mListener.onNetworkAvailabilityChanged(true);
            } else {
                this.mListener.onNetworkAvailabilityChanged(false);
            }
        }
    }
}
