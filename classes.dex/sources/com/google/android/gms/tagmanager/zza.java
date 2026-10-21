package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class zza {
    private static Object auM = new Object();
    private static zza auN;
    private volatile long auG;
    private volatile long auH;
    private volatile long auI;
    private volatile long auJ;
    private final Object auK;
    private InterfaceC0162zza auL;
    private volatile boolean mClosed;
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzaoa;
    private final Thread zzcko;
    private volatile AdvertisingIdClient.Info zzcwf;

    /* JADX INFO: renamed from: com.google.android.gms.tagmanager.zza$zza, reason: collision with other inner class name */
    public interface InterfaceC0162zza {
        AdvertisingIdClient.Info zzcab();
    }

    private zza(Context context) {
        this(context, null, com.google.android.gms.common.util.zzh.zzavi());
    }

    public zza(Context context, InterfaceC0162zza interfaceC0162zza, com.google.android.gms.common.util.zze zzeVar) {
        this.auG = 900000L;
        this.auH = 30000L;
        this.mClosed = false;
        this.auK = new Object();
        this.auL = new InterfaceC0162zza() { // from class: com.google.android.gms.tagmanager.zza.1
            @Override // com.google.android.gms.tagmanager.zza.InterfaceC0162zza
            public AdvertisingIdClient.Info zzcab() {
                try {
                    return AdvertisingIdClient.getAdvertisingIdInfo(zza.this.mContext);
                } catch (GooglePlayServicesNotAvailableException e) {
                    zzbn.zzd("GooglePlayServicesNotAvailableException getting Advertising Id Info", e);
                    return null;
                } catch (GooglePlayServicesRepairableException e2) {
                    zzbn.zzd("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
                    return null;
                } catch (IOException e3) {
                    zzbn.zzd("IOException getting Ad Id Info", e3);
                    return null;
                } catch (IllegalStateException e4) {
                    zzbn.zzd("IllegalStateException getting Advertising Id Info", e4);
                    return null;
                } catch (Exception e5) {
                    zzbn.zzd("Unknown exception. Could not get the Advertising Id Info.", e5);
                    return null;
                }
            }
        };
        this.zzaoa = zzeVar;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        if (interfaceC0162zza != null) {
            this.auL = interfaceC0162zza;
        }
        this.auI = this.zzaoa.currentTimeMillis();
        this.zzcko = new Thread(new Runnable() { // from class: com.google.android.gms.tagmanager.zza.2
            @Override // java.lang.Runnable
            public void run() {
                zza.this.zzcaa();
            }
        });
    }

    private void zzbzx() {
        synchronized (this) {
            try {
                zzbzy();
                wait(500L);
            } catch (InterruptedException e) {
            }
        }
    }

    private void zzbzy() {
        if (this.zzaoa.currentTimeMillis() - this.auI > this.auH) {
            synchronized (this.auK) {
                this.auK.notify();
            }
            this.auI = this.zzaoa.currentTimeMillis();
        }
    }

    private void zzbzz() {
        if (this.zzaoa.currentTimeMillis() - this.auJ > 3600000) {
            this.zzcwf = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzcaa() {
        Process.setThreadPriority(10);
        while (!this.mClosed) {
            AdvertisingIdClient.Info infoZzcab = this.auL.zzcab();
            if (infoZzcab != null) {
                this.zzcwf = infoZzcab;
                this.auJ = this.zzaoa.currentTimeMillis();
                zzbn.zzcx("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.auK) {
                    this.auK.wait(this.auG);
                }
            } catch (InterruptedException e) {
                zzbn.zzcx("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zza zzdr(Context context) {
        if (auN == null) {
            synchronized (auM) {
                if (auN == null) {
                    auN = new zza(context);
                    auN.start();
                }
            }
        }
        return auN;
    }

    public boolean isLimitAdTrackingEnabled() {
        if (this.zzcwf == null) {
            zzbzx();
        } else {
            zzbzy();
        }
        zzbzz();
        if (this.zzcwf == null) {
            return true;
        }
        return this.zzcwf.isLimitAdTrackingEnabled();
    }

    public void start() {
        this.zzcko.start();
    }

    public String zzbzw() {
        if (this.zzcwf == null) {
            zzbzx();
        } else {
            zzbzy();
        }
        zzbzz();
        if (this.zzcwf == null) {
            return null;
        }
        return this.zzcwf.getId();
    }
}
