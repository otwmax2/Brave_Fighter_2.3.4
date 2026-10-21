package com.google.android.gms.analytics.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
class zzag extends BroadcastReceiver {
    static final String ad = zzag.class.getName();
    private boolean ae;
    private boolean af;
    private final zzf zzcws;

    zzag(zzf zzfVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzfVar);
        this.zzcws = zzfVar;
    }

    private Context getContext() {
        return this.zzcws.getContext();
    }

    private void zzadh() {
        zzyx();
        zzwd();
    }

    private zzb zzwd() {
        return this.zzcws.zzwd();
    }

    private zzaf zzyx() {
        return this.zzcws.zzyx();
    }

    public boolean isConnected() {
        if (!this.ae) {
            this.zzcws.zzyx().zzel("Connectivity unknown. Receiver not registered");
        }
        return this.af;
    }

    public boolean isRegistered() {
        return this.ae;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzadh();
        String action = intent.getAction();
        this.zzcws.zzyx().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zZzadj = zzadj();
            if (this.af != zZzadj) {
                this.af = zZzadj;
                zzwd().zzas(zZzadj);
                return;
            }
            return;
        }
        if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.zzcws.zzyx().zzd("NetworkBroadcastReceiver received unknown action", action);
        } else {
            if (intent.hasExtra(ad)) {
                return;
            }
            zzwd().zzys();
        }
    }

    public void unregister() {
        if (isRegistered()) {
            this.zzcws.zzyx().zzei("Unregistering connectivity change receiver");
            this.ae = false;
            this.af = false;
            try {
                getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                zzyx().zze("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public void zzadg() {
        zzadh();
        if (this.ae) {
            return;
        }
        Context context = getContext();
        context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(context.getPackageName());
        context.registerReceiver(this, intentFilter);
        this.af = zzadj();
        this.zzcws.zzyx().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.af));
        this.ae = true;
    }

    public void zzadi() {
        if (Build.VERSION.SDK_INT <= 10) {
            return;
        }
        Context context = getContext();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(ad, true);
        context.sendOrderedBroadcast(intent, null);
    }

    protected boolean zzadj() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException e) {
            return false;
        }
    }
}
