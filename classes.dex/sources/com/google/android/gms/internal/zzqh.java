package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class zzqh implements Handler.Callback {
    private static zzqh uw;
    private static final Object zzamp = new Object();
    private final Context mContext;
    private final Handler mHandler;
    private final GoogleApiAvailability rX;
    private long tU;
    private long tV;
    private final Map<zzpo<?>, zzc<?>> uA;
    private zzpw uB;
    private final Set<zzpo<?>> uC;
    private final ReferenceQueue<com.google.android.gms.common.api.zzc<?>> uD;
    private final SparseArray<zza> uE;
    private zzb uF;
    private long uv;
    private int ux;
    private final AtomicInteger uy;
    private final SparseArray<zzc<?>> uz;

    private final class zza extends PhantomReference<com.google.android.gms.common.api.zzc<?>> {
        private final int sn;

        public zza(com.google.android.gms.common.api.zzc zzcVar, int i, ReferenceQueue<com.google.android.gms.common.api.zzc<?>> referenceQueue) {
            super(zzcVar, referenceQueue);
            this.sn = i;
        }

        public void zzaqd() {
            zzqh.this.mHandler.sendMessage(zzqh.this.mHandler.obtainMessage(2, this.sn, 2));
        }
    }

    private static final class zzb extends Thread {
        private final ReferenceQueue<com.google.android.gms.common.api.zzc<?>> uD;
        private final SparseArray<zza> uE;
        private final AtomicBoolean uH;

        public zzb(ReferenceQueue<com.google.android.gms.common.api.zzc<?>> referenceQueue, SparseArray<zza> sparseArray) {
            super("GoogleApiCleanup");
            this.uH = new AtomicBoolean();
            this.uD = referenceQueue;
            this.uE = sparseArray;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.uH.set(true);
            Process.setThreadPriority(10);
            while (this.uH.get()) {
                try {
                    zza zzaVar = (zza) this.uD.remove();
                    this.uE.remove(zzaVar.sn);
                    zzaVar.zzaqd();
                } catch (InterruptedException e) {
                    return;
                } finally {
                    this.uH.set(false);
                }
            }
        }
    }

    private class zzc<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private final zzpo<O> rG;
        private boolean tT;
        private final Api.zze uJ;
        private final Api.zzb uK;
        private final Queue<zzpn> uI = new LinkedList();
        private final SparseArray<zzrd> uL = new SparseArray<>();
        private final Set<zzpq> uM = new HashSet();
        private final SparseArray<Map<Object, zzpr.zza>> uN = new SparseArray<>();
        private ConnectionResult uO = null;

        @WorkerThread
        public zzc(com.google.android.gms.common.api.zzc<O> zzcVar) {
            this.uJ = zzb(zzcVar);
            if (this.uJ instanceof com.google.android.gms.common.internal.zzah) {
                this.uK = ((com.google.android.gms.common.internal.zzah) this.uJ).zzatj();
            } else {
                this.uK = this.uJ;
            }
            this.rG = zzcVar.zzany();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void connect() {
            if (this.uJ.isConnected() || this.uJ.isConnecting()) {
                return;
            }
            if (this.uJ.zzanr() && zzqh.this.ux != 0) {
                zzqh.this.ux = zzqh.this.rX.isGooglePlayServicesAvailable(zzqh.this.mContext);
                if (zzqh.this.ux != 0) {
                    onConnectionFailed(new ConnectionResult(zzqh.this.ux, null));
                    return;
                }
            }
            this.uJ.zza(zzqh.this.new zzd(this.uJ, this.rG));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void resume() {
            if (this.tT) {
                connect();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void zzab(Status status) {
            Iterator<zzpn> it = this.uI.iterator();
            while (it.hasNext()) {
                it.next().zzx(status);
            }
            this.uI.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void zzapr() {
            if (this.tT) {
                zzaqh();
                zzab(zzqh.this.rX.isGooglePlayServicesAvailable(zzqh.this.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.uJ.disconnect();
            }
        }

        @WorkerThread
        private void zzaqh() {
            if (this.tT) {
                zzqh.this.mHandler.removeMessages(9, this.rG);
                zzqh.this.mHandler.removeMessages(8, this.rG);
                this.tT = false;
            }
        }

        private void zzaqi() {
            zzqh.this.mHandler.removeMessages(10, this.rG);
            zzqh.this.mHandler.sendMessageDelayed(zzqh.this.mHandler.obtainMessage(10, this.rG), zzqh.this.uv);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaqj() {
            if (!this.uJ.isConnected() || this.uN.size() != 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.uL.size()) {
                    this.uJ.disconnect();
                    return;
                } else {
                    if (this.uL.get(this.uL.keyAt(i2)).zzaqw()) {
                        zzaqi();
                        return;
                    }
                    i = i2 + 1;
                }
            }
        }

        @WorkerThread
        private Api.zze zzb(com.google.android.gms.common.api.zzc zzcVar) {
            Api<O> apiZzanw = zzcVar.zzanw();
            if (!apiZzanw.zzanq()) {
                return zzcVar.zzanw().zzann().zza(zzcVar.getApplicationContext(), zzqh.this.mHandler.getLooper(), com.google.android.gms.common.internal.zzg.zzcd(zzcVar.getApplicationContext()), zzcVar.zzanx(), this, this);
            }
            Api.zzh<?, O> zzhVarZzano = apiZzanw.zzano();
            return new com.google.android.gms.common.internal.zzah(zzcVar.getApplicationContext(), zzqh.this.mHandler.getLooper(), zzhVarZzano.zzant(), this, this, com.google.android.gms.common.internal.zzg.zzcd(zzcVar.getApplicationContext()), zzhVarZzano.zzs(zzcVar.zzanx()));
        }

        @WorkerThread
        private void zzc(zzpn zzpnVar) {
            Map map;
            zzpnVar.zza(this.uL);
            if (zzpnVar.it == 3) {
                try {
                    Map<Object, zzpr.zza> map2 = this.uN.get(zzpnVar.sn);
                    if (map2 == null) {
                        ArrayMap arrayMap = new ArrayMap(1);
                        this.uN.put(zzpnVar.sn, arrayMap);
                        map = arrayMap;
                    } else {
                        map = map2;
                    }
                    Object obj = ((zzpn.zza) zzpnVar).so;
                    map.put(((zzqr) obj).zzaqq(), obj);
                } catch (ClassCastException e) {
                    throw new IllegalStateException("Listener registration methods must implement ListenerApiMethod");
                }
            } else if (zzpnVar.it == 4) {
                try {
                    Map<Object, zzpr.zza> map3 = this.uN.get(zzpnVar.sn);
                    zzqr zzqrVar = (zzqr) ((zzpn.zza) zzpnVar).so;
                    if (map3 != null) {
                        map3.remove(zzqrVar.zzaqq());
                    } else {
                        Log.w("GoogleApiManager", "Received call to unregister a listener without a matching registration call.");
                    }
                } catch (ClassCastException e2) {
                    throw new IllegalStateException("Listener unregistration methods must implement ListenerApiMethod");
                }
            }
            try {
                zzpnVar.zzb(this.uK);
            } catch (DeadObjectException e3) {
                this.uJ.disconnect();
                onConnectionSuspended(1);
            }
        }

        @WorkerThread
        private void zzj(ConnectionResult connectionResult) {
            Iterator<zzpq> it = this.uM.iterator();
            while (it.hasNext()) {
                it.next().zza(this.rG, connectionResult);
            }
            this.uM.clear();
        }

        boolean isConnected() {
            return this.uJ.isConnected();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnected(@Nullable Bundle bundle) {
            zzaqf();
            zzj(ConnectionResult.qR);
            zzaqh();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.uN.size()) {
                    zzaqe();
                    zzaqi();
                    return;
                }
                Iterator<zzpr.zza> it = this.uN.get(this.uN.keyAt(i2)).values().iterator();
                while (it.hasNext()) {
                    try {
                        it.next().zzb(this.uK);
                    } catch (DeadObjectException e) {
                        this.uJ.disconnect();
                        onConnectionSuspended(1);
                    }
                }
                i = i2 + 1;
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        @WorkerThread
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzaqf();
            zzqh.this.ux = -1;
            zzj(connectionResult);
            int iKeyAt = this.uL.keyAt(0);
            if (this.uI.isEmpty()) {
                this.uO = connectionResult;
                return;
            }
            synchronized (zzqh.zzamp) {
                if (zzqh.zzd(zzqh.this) != null && zzqh.this.uC.contains(this.rG)) {
                    zzqh.zzd(zzqh.this).zzb(connectionResult, iKeyAt);
                } else if (!zzqh.this.zzc(connectionResult, iKeyAt)) {
                    if (connectionResult.getErrorCode() == 18) {
                        this.tT = true;
                    }
                    if (this.tT) {
                        zzqh.this.mHandler.sendMessageDelayed(Message.obtain(zzqh.this.mHandler, 8, this.rG), zzqh.this.tV);
                    } else {
                        String strValueOf = String.valueOf(this.rG.zzaok());
                        zzab(new Status(17, new StringBuilder(String.valueOf(strValueOf).length() + 38).append("API: ").append(strValueOf).append(" is not available on this device.").toString()));
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        @WorkerThread
        public void onConnectionSuspended(int i) {
            zzaqf();
            this.tT = true;
            zzqh.this.mHandler.sendMessageDelayed(Message.obtain(zzqh.this.mHandler, 8, this.rG), zzqh.this.tV);
            zzqh.this.mHandler.sendMessageDelayed(Message.obtain(zzqh.this.mHandler, 9, this.rG), zzqh.this.tU);
            zzqh.this.ux = -1;
        }

        @WorkerThread
        public void zzaqe() {
            while (this.uJ.isConnected() && !this.uI.isEmpty()) {
                zzc(this.uI.remove());
            }
        }

        @WorkerThread
        public void zzaqf() {
            this.uO = null;
        }

        ConnectionResult zzaqg() {
            return this.uO;
        }

        @WorkerThread
        public void zzb(zzpn zzpnVar) {
            if (this.uJ.isConnected()) {
                zzc(zzpnVar);
                zzaqi();
                return;
            }
            this.uI.add(zzpnVar);
            if (this.uO == null || !this.uO.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.uO);
            }
        }

        @WorkerThread
        public void zzb(zzpq zzpqVar) {
            this.uM.add(zzpqVar);
        }

        @WorkerThread
        public void zzf(int i, boolean z) {
            Iterator<zzpn> it = this.uI.iterator();
            while (it.hasNext()) {
                zzpn next = it.next();
                if (next.sn == i && next.it != 1 && next.cancel()) {
                    it.remove();
                }
            }
            this.uL.get(i).release();
            this.uN.delete(i);
            if (z) {
                return;
            }
            this.uL.remove(i);
            zzqh.this.uE.remove(i);
            if (this.uL.size() == 0 && this.uI.isEmpty()) {
                zzaqh();
                this.uJ.disconnect();
                zzqh.this.uA.remove(this.rG);
                synchronized (zzqh.zzamp) {
                    zzqh.this.uC.remove(this.rG);
                }
            }
        }

        @WorkerThread
        public void zzfk(int i) {
            this.uL.put(i, new zzrd(this.rG.zzanp(), this.uJ));
        }
    }

    private class zzd implements zzd.zzf {
        private final zzpo<?> rG;
        private final Api.zze uJ;

        public zzd(Api.zze zzeVar, zzpo<?> zzpoVar) {
            this.uJ = zzeVar;
            this.rG = zzpoVar;
        }

        @Override // com.google.android.gms.common.internal.zzd.zzf
        @WorkerThread
        public void zzh(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                this.uJ.zza(null, Collections.emptySet());
            } else {
                ((zzc) zzqh.this.uA.get(this.rG)).onConnectionFailed(connectionResult);
            }
        }
    }

    private zzqh(Context context) {
        this(context, GoogleApiAvailability.getInstance());
    }

    private zzqh(Context context, GoogleApiAvailability googleApiAvailability) {
        this.tV = 5000L;
        this.tU = 120000L;
        this.uv = 10000L;
        this.ux = -1;
        this.uy = new AtomicInteger(1);
        this.uz = new SparseArray<>();
        this.uA = new ConcurrentHashMap(5, 0.75f, 1);
        this.uB = null;
        this.uC = new com.google.android.gms.common.util.zza();
        this.uD = new ReferenceQueue<>();
        this.uE = new SparseArray<>();
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper(), this);
        this.rX = googleApiAvailability;
    }

    private int zza(com.google.android.gms.common.api.zzc<?> zzcVar) {
        int andIncrement = this.uy.getAndIncrement();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, andIncrement, 0, zzcVar));
        return andIncrement;
    }

    public static Pair<zzqh, Integer> zza(Context context, com.google.android.gms.common.api.zzc<?> zzcVar) {
        Pair<zzqh, Integer> pairCreate;
        synchronized (zzamp) {
            if (uw == null) {
                uw = new zzqh(context.getApplicationContext());
            }
            pairCreate = Pair.create(uw, Integer.valueOf(uw.zza(zzcVar)));
        }
        return pairCreate;
    }

    @WorkerThread
    private void zza(com.google.android.gms.common.api.zzc<?> zzcVar, int i) {
        Object objZzany = zzcVar.zzany();
        if (!this.uA.containsKey(objZzany)) {
            this.uA.put((zzpo<?>) objZzany, new zzc<>(zzcVar));
        }
        zzc<?> zzcVar2 = this.uA.get(objZzany);
        zzcVar2.zzfk(i);
        this.uz.put(i, zzcVar2);
        zzcVar2.connect();
        this.uE.put(i, new zza(zzcVar, i, this.uD));
        if (this.uF == null || !this.uF.uH.get()) {
            this.uF = new zzb(this.uD, this.uE);
            this.uF.start();
        }
    }

    @WorkerThread
    private void zza(zzpn zzpnVar) {
        this.uz.get(zzpnVar.sn).zzb(zzpnVar);
    }

    public static zzqh zzaqa() {
        zzqh zzqhVar;
        synchronized (zzamp) {
            zzqhVar = uw;
        }
        return zzqhVar;
    }

    @WorkerThread
    private void zzaqb() {
        for (zzc<?> zzcVar : this.uA.values()) {
            zzcVar.zzaqf();
            zzcVar.connect();
        }
    }

    static /* synthetic */ zzpw zzd(zzqh zzqhVar) {
        return null;
    }

    @WorkerThread
    private void zze(int i, boolean z) {
        zzc<?> zzcVar = this.uz.get(i);
        if (zzcVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(52).append("onRelease received for unknown instance: ").append(i).toString(), new Exception());
            return;
        }
        if (!z) {
            this.uz.delete(i);
        }
        zzcVar.zzf(i, z);
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zza((zzpq) message.obj);
                break;
            case 2:
            case 7:
                zze(message.arg1, message.arg2 == 1);
                break;
            case 3:
                zzaqb();
                break;
            case 4:
                zza((zzpn) message.obj);
                break;
            case 5:
                if (this.uz.get(message.arg1) != null) {
                    this.uz.get(message.arg1).zzab(new Status(17, "Error resolution was canceled by the user."));
                }
                break;
            case 6:
                zza((com.google.android.gms.common.api.zzc<?>) message.obj, message.arg1);
                break;
            case 8:
                if (this.uA.containsKey(message.obj)) {
                    this.uA.get(message.obj).resume();
                }
                break;
            case 9:
                if (this.uA.containsKey(message.obj)) {
                    this.uA.get(message.obj).zzapr();
                }
                break;
            case 10:
                if (this.uA.containsKey(message.obj)) {
                    this.uA.get(message.obj).zzaqj();
                }
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
        return true;
    }

    public void zza(ConnectionResult connectionResult, int i) {
        if (zzc(connectionResult, i)) {
            return;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0));
    }

    public <O extends Api.ApiOptions> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzpr.zza<? extends Result, Api.zzb> zzaVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzpn.zza(zzcVar.getInstanceId(), i, zzaVar)));
    }

    public <O extends Api.ApiOptions, TResult> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzrb<Api.zzb, TResult> zzrbVar, TaskCompletionSource<TResult> taskCompletionSource) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzpn.zzb(zzcVar.getInstanceId(), i, zzrbVar, taskCompletionSource)));
    }

    @WorkerThread
    public void zza(zzpq zzpqVar) {
        for (zzpo<?> zzpoVar : zzpqVar.zzaon()) {
            zzc<?> zzcVar = this.uA.get(zzpoVar);
            if (zzcVar == null) {
                zzpqVar.cancel();
                return;
            } else if (zzcVar.isConnected()) {
                zzpqVar.zza(zzpoVar, ConnectionResult.qR);
            } else if (zzcVar.zzaqg() != null) {
                zzpqVar.zza(zzpoVar, zzcVar.zzaqg());
            } else {
                zzcVar.zzb(zzpqVar);
            }
        }
    }

    public void zza(zzpw zzpwVar) {
        synchronized (zzamp) {
            if (zzpwVar == null) {
                this.uB = null;
                this.uC.clear();
            }
        }
    }

    public void zzaol() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    boolean zzc(ConnectionResult connectionResult, int i) {
        if (!connectionResult.hasResolution() && !this.rX.isUserResolvableError(connectionResult.getErrorCode())) {
            return false;
        }
        this.rX.zza(this.mContext, connectionResult, i);
        return true;
    }

    public void zzd(int i, boolean z) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, i, z ? 1 : 2));
    }
}
