package com.google.android.gms.internal;

import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpr;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class zzpg implements com.google.android.gms.clearcut.zzc {
    private static ScheduledExecutorService qv;
    private GoogleApiClient hb;
    private long qA;
    private final long qB;
    private ScheduledFuture<?> qC;
    private final Runnable qD;
    private final zza qy;
    private final Object qz;
    private final com.google.android.gms.common.util.zze zzaoa;
    private static final Object qu = new Object();
    private static final zze qw = new zze();
    private static final long qx = TimeUnit.MILLISECONDS.convert(2, TimeUnit.MINUTES);

    public interface zza {
    }

    public static class zzb implements zza {
    }

    static abstract class zzc<R extends Result> extends zzpr.zza<R, zzph> {
        public zzc(GoogleApiClient googleApiClient) {
            super(com.google.android.gms.clearcut.zzb.API, googleApiClient);
        }
    }

    static final class zzd extends zzc<Status> {
        private final LogEventParcelable qI;

        zzd(LogEventParcelable logEventParcelable, GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.qI = logEventParcelable;
        }

        public boolean equals(Object obj) {
            if (obj instanceof zzd) {
                return this.qI.equals(((zzd) obj).qI);
            }
            return false;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.qI);
            return new StringBuilder(String.valueOf(strValueOf).length() + 12).append("MethodImpl(").append(strValueOf).append(")").toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(zzph zzphVar) throws RemoteException {
            zzpj.zza zzaVar = new zzpj.zza() { // from class: com.google.android.gms.internal.zzpg.zzd.1
                @Override // com.google.android.gms.internal.zzpj
                public void zzw(Status status) {
                    zzd.this.zzc(status);
                }
            };
            try {
                zzpg.zza(this.qI);
                zzphVar.zza(zzaVar, this.qI);
            } catch (RuntimeException e) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
                zzz(new Status(10, "MessageProducer"));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    private static final class zze {
        private int mSize;

        private zze() {
            this.mSize = 0;
        }

        public synchronized void zzamz() {
            this.mSize++;
        }

        public synchronized void zzana() {
            if (this.mSize == 0) {
                throw new RuntimeException("too many decrements");
            }
            this.mSize--;
            if (this.mSize == 0) {
                notifyAll();
            }
        }
    }

    public zzpg() {
        this(new com.google.android.gms.common.util.zzh(), qx, new zzb());
    }

    public zzpg(com.google.android.gms.common.util.zze zzeVar, long j, zza zzaVar) {
        this.qz = new Object();
        this.qA = 0L;
        this.qC = null;
        this.hb = null;
        this.qD = new Runnable() { // from class: com.google.android.gms.internal.zzpg.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzpg.this.qz) {
                    if (zzpg.zzb(zzpg.this) <= zzpg.this.zzaoa.elapsedRealtime() && zzpg.this.hb != null) {
                        Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
                        zzpg.this.hb.disconnect();
                        zzpg.this.hb = null;
                    }
                }
            }
        };
        this.zzaoa = zzeVar;
        this.qB = j;
        this.qy = zzaVar;
    }

    private PendingResult<Status> zza(final GoogleApiClient googleApiClient, final zzc<Status> zzcVar) {
        zzamx().execute(new Runnable() { // from class: com.google.android.gms.internal.zzpg.3
            @Override // java.lang.Runnable
            public void run() {
                googleApiClient.zzc(zzcVar);
            }
        });
        return zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(LogEventParcelable logEventParcelable) {
        if (logEventParcelable.qs != null && logEventParcelable.qr.biM.length == 0) {
            logEventParcelable.qr.biM = logEventParcelable.qs.zzamw();
        }
        if (logEventParcelable.qt != null && logEventParcelable.qr.biT.length == 0) {
            logEventParcelable.qr.biT = logEventParcelable.qt.zzamw();
        }
        logEventParcelable.ql = zzapc.zzf(logEventParcelable.qr);
    }

    private ScheduledExecutorService zzamx() {
        synchronized (qu) {
            if (qv == null) {
                qv = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.google.android.gms.internal.zzpg.2
                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(final Runnable runnable) {
                        return new Thread(new Runnable() { // from class: com.google.android.gms.internal.zzpg.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Process.setThreadPriority(10);
                                runnable.run();
                            }
                        }, "ClearcutLoggerApiImpl");
                    }
                });
            }
        }
        return qv;
    }

    static /* synthetic */ long zzb(zzpg zzpgVar) {
        return 0L;
    }

    private zzd zzb(GoogleApiClient googleApiClient, LogEventParcelable logEventParcelable) {
        qw.zzamz();
        zzd zzdVar = new zzd(logEventParcelable, googleApiClient);
        zzdVar.zza(new PendingResult.zza() { // from class: com.google.android.gms.internal.zzpg.4
            @Override // com.google.android.gms.common.api.PendingResult.zza
            public void zzv(Status status) {
                zzpg.qw.zzana();
            }
        });
        return zzdVar;
    }

    @Override // com.google.android.gms.clearcut.zzc
    public PendingResult<Status> zza(GoogleApiClient googleApiClient, LogEventParcelable logEventParcelable) {
        return zza(googleApiClient, zzb(googleApiClient, logEventParcelable));
    }
}
