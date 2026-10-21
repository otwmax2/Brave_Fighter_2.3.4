package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class zzqf implements zzqm {
    private final Context mContext;
    final Api.zza<? extends zzvx, zzvy> rY;
    final zzqd sX;
    final com.google.android.gms.common.internal.zzg tD;
    final Map<Api<?>, Integer> tE;
    final Map<Api.zzc<?>, Api.zze> tY;
    private final Lock th;
    private final com.google.android.gms.common.zzc tp;
    private final Condition ul;
    private final zzb um;
    private volatile zzqe uo;
    int uq;
    final zzqm.zza ur;
    final Map<Api.zzc<?>, ConnectionResult> un = new HashMap();
    private ConnectionResult up = null;

    static abstract class zza {
        private final zzqe us;

        protected zza(zzqe zzqeVar) {
            this.us = zzqeVar;
        }

        protected abstract void zzapi();

        public final void zzd(zzqf zzqfVar) {
            zzqfVar.th.lock();
            try {
                if (zzqfVar.uo != this.us) {
                    return;
                }
                zzapi();
            } finally {
                zzqfVar.th.unlock();
            }
        }
    }

    final class zzb extends Handler {
        zzb(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((zza) message.obj).zzd(zzqf.this);
                    return;
                case 2:
                    throw ((RuntimeException) message.obj);
                default:
                    Log.w("GACStateManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzqf(Context context, zzqd zzqdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzvx, zzvy> zzaVar, ArrayList<zzpu> arrayList, zzqm.zza zzaVar2) {
        this.mContext = context;
        this.th = lock;
        this.tp = zzcVar;
        this.tY = map;
        this.tD = zzgVar;
        this.tE = map2;
        this.rY = zzaVar;
        this.sX = zzqdVar;
        this.ur = zzaVar2;
        Iterator<zzpu> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().zza(this);
        }
        this.um = new zzb(looper);
        this.ul = lock.newCondition();
        this.uo = new zzqc(this);
    }

    @Override // com.google.android.gms.internal.zzqm
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.ul.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.qR : this.up != null ? this.up : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzqm
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.ul.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.qR : this.up != null ? this.up : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzqm
    public void connect() {
        this.uo.connect();
    }

    @Override // com.google.android.gms.internal.zzqm
    public void disconnect() {
        if (this.uo.disconnect()) {
            this.un.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String strConcat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.uo);
        for (Api<?> api : this.tE.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.tY.get(api.zzanp()).dump(strConcat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        Api.zzc<?> zzcVarZzanp = api.zzanp();
        if (this.tY.containsKey(zzcVarZzanp)) {
            if (this.tY.get(zzcVarZzanp).isConnected()) {
                return ConnectionResult.qR;
            }
            if (this.un.containsKey(zzcVarZzanp)) {
                return this.un.get(zzcVarZzanp);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzqm
    public boolean isConnected() {
        return this.uo instanceof zzqa;
    }

    @Override // com.google.android.gms.internal.zzqm
    public boolean isConnecting() {
        return this.uo instanceof zzqb;
    }

    public void onConnected(@Nullable Bundle bundle) {
        this.th.lock();
        try {
            this.uo.onConnected(bundle);
        } finally {
            this.th.unlock();
        }
    }

    public void onConnectionSuspended(int i) {
        this.th.lock();
        try {
            this.uo.onConnectionSuspended(i);
        } finally {
            this.th.unlock();
        }
    }

    public void zza(@NonNull ConnectionResult connectionResult, @NonNull Api<?> api, int i) {
        this.th.lock();
        try {
            this.uo.zza(connectionResult, api, i);
        } finally {
            this.th.unlock();
        }
    }

    void zza(zza zzaVar) {
        this.um.sendMessage(this.um.obtainMessage(1, zzaVar));
    }

    void zza(RuntimeException runtimeException) {
        this.um.sendMessage(this.um.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.internal.zzqm
    public boolean zza(zzqy zzqyVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzaoc() {
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzaoy() {
        if (isConnected()) {
            ((zzqa) this.uo).zzaph();
        }
    }

    void zzapw() {
        this.th.lock();
        try {
            this.uo = new zzqb(this, this.tD, this.tE, this.tp, this.rY, this.th, this.mContext);
            this.uo.begin();
            this.ul.signalAll();
        } finally {
            this.th.unlock();
        }
    }

    void zzapx() {
        this.th.lock();
        try {
            this.sX.zzapt();
            this.uo = new zzqa(this);
            this.uo.begin();
            this.ul.signalAll();
        } finally {
            this.th.unlock();
        }
    }

    void zzapy() {
        Iterator<Api.zze> it = this.tY.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(@NonNull T t) {
        t.zzaot();
        return (T) this.uo.zzc(t);
    }

    @Override // com.google.android.gms.internal.zzqm
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(@NonNull T t) {
        t.zzaot();
        return (T) this.uo.zzd(t);
    }

    void zzi(ConnectionResult connectionResult) {
        this.th.lock();
        try {
            this.up = connectionResult;
            this.uo = new zzqc(this);
            this.uo.begin();
            this.ul.signalAll();
        } finally {
            this.th.unlock();
        }
    }
}
