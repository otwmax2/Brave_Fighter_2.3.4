package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class zzdb extends zzda {
    private static final Object ayh = new Object();
    private static zzdb ayt;
    private Context ayi;
    private zzav ayj;
    private volatile zzat ayk;
    private zza ayq;
    private zzbs ayr;
    private int ayl = 1800000;
    private boolean aym = true;
    private boolean ayn = false;
    private boolean connected = true;
    private boolean ayo = true;
    private zzaw ayp = new zzaw() { // from class: com.google.android.gms.tagmanager.zzdb.1
        @Override // com.google.android.gms.tagmanager.zzaw
        public void zzcg(boolean z) {
            zzdb.this.zze(z, zzdb.this.connected);
        }
    };
    private boolean ays = false;

    public interface zza {
        void cancel();

        void zzcdd();

        void zzv(long j);
    }

    private class zzb implements zza {
        private Handler handler;

        private zzb() {
            this.handler = new Handler(zzdb.this.ayi.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.tagmanager.zzdb.zzb.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (1 == message.what && zzdb.ayh.equals(message.obj)) {
                        zzdb.this.dispatch();
                        if (!zzdb.this.isPowerSaveMode()) {
                            zzb.this.zzv(zzdb.this.ayl);
                        }
                    }
                    return true;
                }
            });
        }

        private Message obtainMessage() {
            return this.handler.obtainMessage(1, zzdb.ayh);
        }

        @Override // com.google.android.gms.tagmanager.zzdb.zza
        public void cancel() {
            this.handler.removeMessages(1, zzdb.ayh);
        }

        @Override // com.google.android.gms.tagmanager.zzdb.zza
        public void zzcdd() {
            this.handler.removeMessages(1, zzdb.ayh);
            this.handler.sendMessage(obtainMessage());
        }

        @Override // com.google.android.gms.tagmanager.zzdb.zza
        public void zzv(long j) {
            this.handler.removeMessages(1, zzdb.ayh);
            this.handler.sendMessageDelayed(obtainMessage(), j);
        }
    }

    private zzdb() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPowerSaveMode() {
        return this.ays || !this.connected || this.ayl <= 0;
    }

    private void zzaam() {
        if (isPowerSaveMode()) {
            this.ayq.cancel();
            zzbn.v("PowerSaveMode initiated.");
        } else {
            this.ayq.zzv(this.ayl);
            zzbn.v("PowerSaveMode terminated.");
        }
    }

    public static zzdb zzccy() {
        if (ayt == null) {
            ayt = new zzdb();
        }
        return ayt;
    }

    private void zzccz() {
        this.ayr = new zzbs(this);
        this.ayr.zzea(this.ayi);
    }

    private void zzcda() {
        this.ayq = new zzb();
        if (this.ayl > 0) {
            this.ayq.zzv(this.ayl);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzda
    public synchronized void dispatch() {
        if (this.ayn) {
            this.ayk.zzo(new Runnable() { // from class: com.google.android.gms.tagmanager.zzdb.2
                @Override // java.lang.Runnable
                public void run() {
                    zzdb.this.ayj.dispatch();
                }
            });
        } else {
            zzbn.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.aym = true;
        }
    }

    synchronized void zza(Context context, zzat zzatVar) {
        if (this.ayi == null) {
            this.ayi = context.getApplicationContext();
            if (this.ayk == null) {
                this.ayk = zzatVar;
            }
        }
    }

    synchronized zzav zzcdb() {
        if (this.ayj == null) {
            if (this.ayi == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.ayj = new zzcf(this.ayp, this.ayi);
        }
        if (this.ayq == null) {
            zzcda();
        }
        this.ayn = true;
        if (this.aym) {
            dispatch();
            this.aym = false;
        }
        if (this.ayr == null && this.ayo) {
            zzccz();
        }
        return this.ayj;
    }

    @Override // com.google.android.gms.tagmanager.zzda
    public synchronized void zzch(boolean z) {
        zze(this.ays, z);
    }

    synchronized void zze(boolean z, boolean z2) {
        boolean zIsPowerSaveMode = isPowerSaveMode();
        this.ays = z;
        this.connected = z2;
        if (isPowerSaveMode() != zIsPowerSaveMode) {
            zzaam();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzda
    public synchronized void zzys() {
        if (!isPowerSaveMode()) {
            this.ayq.zzcdd();
        }
    }
}
