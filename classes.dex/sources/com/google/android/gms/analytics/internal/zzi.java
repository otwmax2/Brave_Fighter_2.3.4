package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.zzac;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class zzi extends zzd {
    private final zza zzcxp;
    private zzac zzcxq;
    private final zzt zzcxr;
    private zzal zzcxs;

    protected class zza implements ServiceConnection {
        private volatile zzac zzcxu;
        private volatile boolean zzcxv;

        protected zza() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.google.android.gms.common.internal.zzab.zzhj("AnalyticsServiceConnection.onServiceConnected");
            synchronized (this) {
                try {
                    if (iBinder == null) {
                        zzi.this.zzem("Service connected with null binder");
                        return;
                    }
                    final zzac zzacVarZzbk = null;
                    try {
                        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                        if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                            zzacVarZzbk = zzac.zza.zzbk(iBinder);
                            zzi.this.zzei("Bound to IAnalyticsService interface");
                        } else {
                            zzi.this.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                        }
                    } catch (RemoteException e) {
                        zzi.this.zzem("Service connect failed to get IAnalyticsService");
                    }
                    if (zzacVarZzbk == null) {
                        try {
                            com.google.android.gms.common.stats.zzb.zzaut().zza(zzi.this.getContext(), zzi.this.zzcxp);
                        } catch (IllegalArgumentException e2) {
                        }
                    } else if (this.zzcxv) {
                        this.zzcxu = zzacVarZzbk;
                    } else {
                        zzi.this.zzel("onServiceConnected received after the timeout limit");
                        zzi.this.zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzi.zza.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (zzi.this.isConnected()) {
                                    return;
                                }
                                zzi.this.zzej("Connected to service after a timeout");
                                zzi.this.zza(zzacVarZzbk);
                            }
                        });
                    }
                } finally {
                    notifyAll();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(final ComponentName componentName) {
            com.google.android.gms.common.internal.zzab.zzhj("AnalyticsServiceConnection.onServiceDisconnected");
            zzi.this.zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzi.zza.2
                @Override // java.lang.Runnable
                public void run() {
                    zzi.this.onServiceDisconnected(componentName);
                }
            });
        }

        public zzac zzzv() {
            zzac zzacVar = null;
            zzi.this.zzwu();
            Intent intent = new Intent("com.google.android.gms.analytics.service.START");
            intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
            Context context = zzi.this.getContext();
            intent.putExtra("app_package_name", context.getPackageName());
            com.google.android.gms.common.stats.zzb zzbVarZzaut = com.google.android.gms.common.stats.zzb.zzaut();
            synchronized (this) {
                this.zzcxu = null;
                this.zzcxv = true;
                boolean zZza = zzbVarZzaut.zza(context, intent, zzi.this.zzcxp, 129);
                zzi.this.zza("Bind to service requested", Boolean.valueOf(zZza));
                if (zZza) {
                    try {
                        wait(zzi.this.zzyy().zzaby());
                    } catch (InterruptedException e) {
                        zzi.this.zzel("Wait for service connect was interrupted");
                    }
                    this.zzcxv = false;
                    zzacVar = this.zzcxu;
                    this.zzcxu = null;
                    if (zzacVar == null) {
                        zzi.this.zzem("Successfully bound to service but never got onServiceConnected callback");
                    }
                } else {
                    this.zzcxv = false;
                }
            }
            return zzacVar;
        }
    }

    protected zzi(zzf zzfVar) {
        super(zzfVar);
        this.zzcxs = new zzal(zzfVar.zzyw());
        this.zzcxp = new zza();
        this.zzcxr = new zzt(zzfVar) { // from class: com.google.android.gms.analytics.internal.zzi.1
            @Override // com.google.android.gms.analytics.internal.zzt
            public void run() {
                zzi.this.zzzu();
            }
        };
    }

    private void onDisconnect() {
        zzwd().zzyr();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceDisconnected(ComponentName componentName) {
        zzwu();
        if (this.zzcxq != null) {
            this.zzcxq = null;
            zza("Disconnected from device AnalyticsService", componentName);
            onDisconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzac zzacVar) {
        zzwu();
        this.zzcxq = zzacVar;
        zzzt();
        zzwd().onServiceConnected();
    }

    private void zzzt() {
        this.zzcxs.start();
        this.zzcxr.zzv(zzyy().zzabx());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzzu() {
        zzwu();
        if (isConnected()) {
            zzei("Inactivity, disconnecting from device AnalyticsService");
            disconnect();
        }
    }

    public boolean connect() {
        zzwu();
        zzzg();
        if (this.zzcxq != null) {
            return true;
        }
        zzac zzacVarZzzv = this.zzcxp.zzzv();
        if (zzacVarZzzv == null) {
            return false;
        }
        this.zzcxq = zzacVarZzzv;
        zzzt();
        return true;
    }

    public void disconnect() {
        zzwu();
        zzzg();
        try {
            com.google.android.gms.common.stats.zzb.zzaut().zza(getContext(), this.zzcxp);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        if (this.zzcxq != null) {
            this.zzcxq = null;
            onDisconnect();
        }
    }

    public boolean isConnected() {
        zzwu();
        zzzg();
        return this.zzcxq != null;
    }

    public boolean zzb(zzab zzabVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        zzwu();
        zzzg();
        zzac zzacVar = this.zzcxq;
        if (zzacVar == null) {
            return false;
        }
        try {
            zzacVar.zza(zzabVar.zzm(), zzabVar.zzacz(), zzabVar.zzadb() ? zzyy().zzabq() : zzyy().zzabr(), Collections.emptyList());
            zzzt();
            return true;
        } catch (RemoteException e) {
            zzei("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
    }

    public boolean zzzs() {
        zzwu();
        zzzg();
        zzac zzacVar = this.zzcxq;
        if (zzacVar == null) {
            return false;
        }
        try {
            zzacVar.zzyo();
            zzzt();
            return true;
        } catch (RemoteException e) {
            zzei("Failed to clear hits from AnalyticsService");
            return false;
        }
    }
}
