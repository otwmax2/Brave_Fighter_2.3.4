package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzl implements Handler.Callback {
    private final Handler mHandler;
    private final zza ys;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> yt = new ArrayList<>();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> yu = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> yv = new ArrayList<>();
    private volatile boolean yw = false;
    private final AtomicInteger yx = new AtomicInteger(0);
    private boolean yy = false;
    private final Object zzail = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzamc();
    }

    public zzl(Looper looper, zza zzaVar) {
        this.ys = zzaVar;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zzail) {
            if (this.yw && this.ys.isConnected() && this.yt.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.ys.zzamc());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean zContains;
        zzab.zzaa(connectionCallbacks);
        synchronized (this.zzail) {
            zContains = this.yt.contains(connectionCallbacks);
        }
        return zContains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean zContains;
        zzab.zzaa(onConnectionFailedListener);
        synchronized (this.zzail) {
            zContains = this.yv.contains(onConnectionFailedListener);
        }
        return zContains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzab.zzaa(connectionCallbacks);
        synchronized (this.zzail) {
            if (this.yt.contains(connectionCallbacks)) {
                String strValueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(strValueOf).length() + 62).append("registerConnectionCallbacks(): listener ").append(strValueOf).append(" is already registered").toString());
            } else {
                this.yt.add(connectionCallbacks);
            }
        }
        if (this.ys.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzab.zzaa(onConnectionFailedListener);
        synchronized (this.zzail) {
            if (this.yv.contains(onConnectionFailedListener)) {
                String strValueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(strValueOf).length() + 67).append("registerConnectionFailedListener(): listener ").append(strValueOf).append(" is already registered").toString());
            } else {
                this.yv.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzab.zzaa(connectionCallbacks);
        synchronized (this.zzail) {
            if (!this.yt.remove(connectionCallbacks)) {
                String strValueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(strValueOf).length() + 52).append("unregisterConnectionCallbacks(): listener ").append(strValueOf).append(" not found").toString());
            } else if (this.yy) {
                this.yu.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzab.zzaa(onConnectionFailedListener);
        synchronized (this.zzail) {
            if (!this.yv.remove(onConnectionFailedListener)) {
                String strValueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(strValueOf).length() + 57).append("unregisterConnectionFailedListener(): listener ").append(strValueOf).append(" not found").toString());
            }
        }
    }

    public void zzass() {
        this.yw = false;
        this.yx.incrementAndGet();
    }

    public void zzast() {
        this.yw = true;
    }

    public void zzgb(int i) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzail) {
            this.yy = true;
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.yt);
            int i2 = this.yx.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.yw || this.yx.get() != i2) {
                    break;
                } else if (this.yt.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.yu.clear();
            this.yy = false;
        }
    }

    public void zzm(ConnectionResult connectionResult) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzail) {
            ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList = new ArrayList(this.yv);
            int i = this.yx.get();
            for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList) {
                if (!this.yw || this.yx.get() != i) {
                    return;
                }
                if (this.yv.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzo(Bundle bundle) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzail) {
            zzab.zzbm(!this.yy);
            this.mHandler.removeMessages(1);
            this.yy = true;
            zzab.zzbm(this.yu.size() == 0);
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.yt);
            int i = this.yx.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.yw || !this.ys.isConnected() || this.yx.get() != i) {
                    break;
                } else if (!this.yu.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.yu.clear();
            this.yy = false;
        }
    }
}
