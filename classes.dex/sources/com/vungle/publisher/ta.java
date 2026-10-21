package com.vungle.publisher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import com.vungle.publisher.log.Logger;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ta extends BroadcastReceiver {
    private static final IntentFilter e = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

    @Inject
    Context a;

    @Inject
    sz b;

    @Inject
    qg c;

    @Inject
    ConnectivityManager d;
    private final AtomicBoolean f = new AtomicBoolean(false);

    @Inject
    ta() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (intent.getBooleanExtra("noConnectivity", false)) {
                if (this.f.compareAndSet(true, false)) {
                    Logger.d(Logger.NETWORK_TAG, "lost connectivity");
                    this.c.a(new lv());
                    return;
                }
                return;
            }
            if (intent.getBooleanExtra("isFailover", false)) {
                Logger.d(Logger.NETWORK_TAG, "connectivity failover");
                return;
            }
            Logger.d(Logger.NETWORK_TAG, "connectivity established");
            synchronized (this) {
                notifyAll();
            }
            if (this.f.compareAndSet(false, true)) {
                this.c.a(new lu());
            }
        }
    }

    public void a() {
        this.a.registerReceiver(this, e);
    }

    public void b() {
        try {
            this.a.unregisterReceiver(this);
        } catch (IllegalArgumentException e2) {
            Logger.w(Logger.NETWORK_TAG, "error unregistering network broadcast receiver - not registered");
        }
    }
}
