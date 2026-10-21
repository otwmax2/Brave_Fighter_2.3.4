package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzn extends zzm implements Handler.Callback {
    private final Handler mHandler;
    private final HashMap<zza, zzb> yB = new HashMap<>();
    private final com.google.android.gms.common.stats.zzb yC = com.google.android.gms.common.stats.zzb.zzaut();
    private final long yD = 5000;
    private final Context zzaqj;

    private static final class zza {
        private final String yE;
        private final ComponentName yF;
        private final String zzcvf;

        public zza(ComponentName componentName) {
            this.zzcvf = null;
            this.yE = null;
            this.yF = (ComponentName) zzab.zzaa(componentName);
        }

        public zza(String str, String str2) {
            this.zzcvf = zzab.zzhs(str);
            this.yE = zzab.zzhs(str2);
            this.yF = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzaa.equal(this.zzcvf, zzaVar.zzcvf) && zzaa.equal(this.yF, zzaVar.yF);
        }

        public int hashCode() {
            return zzaa.hashCode(this.zzcvf, this.yF);
        }

        public String toString() {
            return this.zzcvf == null ? this.yF.flattenToString() : this.zzcvf;
        }

        public Intent zzasu() {
            return this.zzcvf != null ? new Intent(this.zzcvf).setPackage(this.yE) : new Intent().setComponent(this.yF);
        }
    }

    private final class zzb {
        private IBinder xA;
        private ComponentName yF;
        private boolean yI;
        private final zza yJ;
        private final zza yG = new zza();
        private final Set<ServiceConnection> yH = new HashSet();
        private int mState = 2;

        public class zza implements ServiceConnection {
            public zza() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (zzn.this.yB) {
                    zzb.this.xA = iBinder;
                    zzb.this.yF = componentName;
                    Iterator it = zzb.this.yH.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    zzb.this.mState = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (zzn.this.yB) {
                    zzb.this.xA = null;
                    zzb.this.yF = componentName;
                    Iterator it = zzb.this.yH.iterator();
                    while (it.hasNext()) {
                        ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                    }
                    zzb.this.mState = 2;
                }
            }
        }

        public zzb(zza zzaVar) {
            this.yJ = zzaVar;
        }

        public IBinder getBinder() {
            return this.xA;
        }

        public ComponentName getComponentName() {
            return this.yF;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.yI;
        }

        public void zza(ServiceConnection serviceConnection, String str) {
            zzn.this.yC.zza(zzn.this.zzaqj, serviceConnection, str, this.yJ.zzasu());
            this.yH.add(serviceConnection);
        }

        public boolean zza(ServiceConnection serviceConnection) {
            return this.yH.contains(serviceConnection);
        }

        public boolean zzasv() {
            return this.yH.isEmpty();
        }

        public void zzb(ServiceConnection serviceConnection, String str) {
            zzn.this.yC.zzb(zzn.this.zzaqj, serviceConnection);
            this.yH.remove(serviceConnection);
        }

        @TargetApi(14)
        public void zzhn(String str) {
            this.mState = 3;
            this.yI = zzn.this.yC.zza(zzn.this.zzaqj, str, this.yJ.zzasu(), this.yG, 129);
            if (this.yI) {
                return;
            }
            this.mState = 2;
            try {
                zzn.this.yC.zza(zzn.this.zzaqj, this.yG);
            } catch (IllegalArgumentException e) {
            }
        }

        public void zzho(String str) {
            zzn.this.yC.zza(zzn.this.zzaqj, this.yG);
            this.yI = false;
            this.mState = 2;
        }
    }

    zzn(Context context) {
        this.zzaqj = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    private boolean zza(zza zzaVar, ServiceConnection serviceConnection, String str) {
        boolean zIsBound;
        zzab.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.yB) {
            zzb zzbVar = this.yB.get(zzaVar);
            if (zzbVar != null) {
                this.mHandler.removeMessages(0, zzbVar);
                if (!zzbVar.zza(serviceConnection)) {
                    zzbVar.zza(serviceConnection, str);
                    switch (zzbVar.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzbVar.getComponentName(), zzbVar.getBinder());
                            break;
                        case 2:
                            zzbVar.zzhn(str);
                            break;
                    }
                } else {
                    String strValueOf = String.valueOf(zzaVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(strValueOf).toString());
                }
            } else {
                zzbVar = new zzb(zzaVar);
                zzbVar.zza(serviceConnection, str);
                zzbVar.zzhn(str);
                this.yB.put(zzaVar, zzbVar);
            }
            zIsBound = zzbVar.isBound();
        }
        return zIsBound;
    }

    private void zzb(zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzab.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.yB) {
            zzb zzbVar = this.yB.get(zzaVar);
            if (zzbVar == null) {
                String strValueOf = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 50).append("Nonexistent connection status for service config: ").append(strValueOf).toString());
            }
            if (!zzbVar.zza(serviceConnection)) {
                String strValueOf2 = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(strValueOf2).toString());
            }
            zzbVar.zzb(serviceConnection, str);
            if (zzbVar.zzasv()) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzbVar), this.yD);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                zzb zzbVar = (zzb) message.obj;
                synchronized (this.yB) {
                    if (zzbVar.zzasv()) {
                        if (zzbVar.isBound()) {
                            zzbVar.zzho("GmsClientSupervisor");
                        }
                        this.yB.remove(zzbVar.yJ);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzm
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public boolean zza(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return zza(new zza(str, str2), serviceConnection, str3);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzm
    public void zzb(String str, String str2, ServiceConnection serviceConnection, String str3) {
        zzb(new zza(str, str2), serviceConnection, str3);
    }
}
