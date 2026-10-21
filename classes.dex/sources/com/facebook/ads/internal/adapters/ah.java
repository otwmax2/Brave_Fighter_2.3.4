package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ah extends BroadcastReceiver {
    private Context a;
    private com.facebook.ads.internal.view.n b;
    private boolean c = false;

    public ah(com.facebook.ads.internal.view.n nVar, Context context) {
        this.b = nVar;
        this.a = context.getApplicationContext();
    }

    public void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.ads.interstitial.displayed:" + this.b.getUniqueId());
        intentFilter.addAction("videoInterstitalEvent:" + this.b.getUniqueId());
        intentFilter.addAction("performCtaClick:" + this.b.getUniqueId());
        LocalBroadcastManager.getInstance(this.a).registerReceiver(this, intentFilter);
    }

    public void b() {
        try {
            LocalBroadcastManager.getInstance(this.a).unregisterReceiver(this);
        } catch (Exception e) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String[] strArrSplit = intent.getAction().split(":");
        if (strArrSplit.length == 2 && strArrSplit[1].equals(this.b.getUniqueId())) {
            if (strArrSplit[0].equals("com.facebook.ads.interstitial.displayed")) {
                if (this.b.getListener() != null) {
                    this.b.getListener().g();
                    this.b.getListener().a();
                    return;
                }
                return;
            }
            if (!strArrSplit[0].equals("videoInterstitalEvent")) {
                if (strArrSplit[0].equals("performCtaClick")) {
                    this.b.b();
                    return;
                }
                return;
            }
            Serializable serializableExtra = intent.getSerializableExtra("event");
            if (serializableExtra instanceof com.facebook.ads.internal.view.e.b.p) {
                if (this.b.getListener() != null) {
                    this.b.getListener().f();
                    this.b.getListener().a();
                }
                if (this.c) {
                    this.b.a(1);
                } else {
                    this.b.a(((com.facebook.ads.internal.view.e.b.p) serializableExtra).b());
                }
                this.b.setVisibility(0);
                this.b.a(com.facebook.ads.internal.view.e.a.a.USER_STARTED);
                return;
            }
            if (serializableExtra instanceof com.facebook.ads.internal.view.e.b.f) {
                if (this.b.getListener() != null) {
                    this.b.getListener().d();
                    return;
                }
                return;
            }
            if (serializableExtra instanceof com.facebook.ads.internal.view.e.b.g) {
                if (this.b.getListener() != null) {
                    this.b.getListener().e();
                }
            } else if (serializableExtra instanceof com.facebook.ads.internal.view.e.b.b) {
                if (this.b.getListener() != null) {
                    this.b.getListener().h();
                }
                this.c = true;
            } else if (serializableExtra instanceof com.facebook.ads.internal.view.e.b.j) {
                if (this.b.getListener() != null) {
                    this.b.getListener().c();
                }
                this.c = false;
            } else {
                if (!(serializableExtra instanceof com.facebook.ads.internal.view.e.b.h) || this.b.getListener() == null) {
                    return;
                }
                this.b.getListener().b();
            }
        }
    }
}
