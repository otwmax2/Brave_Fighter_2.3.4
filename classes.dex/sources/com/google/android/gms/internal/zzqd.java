package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqj;
import com.google.android.gms.internal.zzqm;
import com.google.android.gms.internal.zzrd;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public final class zzqd extends GoogleApiClient implements zzqm.zza {
    private final Context mContext;
    private final int rV;
    private final GoogleApiAvailability rX;
    final Api.zza<? extends zzvx, zzvy> rY;
    final com.google.android.gms.common.internal.zzg tD;
    final Map<Api<?>, Integer> tE;
    private final com.google.android.gms.common.internal.zzl tQ;
    private volatile boolean tT;
    private final zza tW;
    zzqj tX;
    final Map<Api.zzc<?>, Api.zze> tY;
    private final Lock th;
    private final ArrayList<zzpu> ub;
    private Integer uc;
    final zzrd ue;
    private final Looper zzahv;
    private zzqm tR = null;
    final Queue<zzpr.zza<?, ?>> tS = new LinkedList();
    private long tU = 120000;
    private long tV = 5000;
    Set<Scope> tZ = new HashSet();
    private final zzqt ua = new zzqt();
    Set<zzrc> ud = null;
    private final zzl.zza uf = new zzl.zza() { // from class: com.google.android.gms.internal.zzqd.1
        @Override // com.google.android.gms.common.internal.zzl.zza
        public boolean isConnected() {
            return zzqd.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzl.zza
        public Bundle zzamc() {
            return null;
        }
    };

    final class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzqd.this.zzapr();
                    break;
                case 2:
                    zzqd.this.resume();
                    break;
                default:
                    Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    break;
            }
        }
    }

    static class zzb extends zzqj.zza {
        private WeakReference<zzqd> uk;

        zzb(zzqd zzqdVar) {
            this.uk = new WeakReference<>(zzqdVar);
        }

        @Override // com.google.android.gms.internal.zzqj.zza
        public void zzaor() {
            zzqd zzqdVar = this.uk.get();
            if (zzqdVar == null) {
                return;
            }
            zzqdVar.resume();
        }
    }

    public zzqd(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzvx, zzvy> zzaVar, Map<Api<?>, Integer> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.zzc<?>, Api.zze> map2, int i, int i2, ArrayList<zzpu> arrayList) {
        this.uc = null;
        this.mContext = context;
        this.th = lock;
        this.tQ = new com.google.android.gms.common.internal.zzl(looper, this.uf);
        this.zzahv = looper;
        this.tW = new zza(looper);
        this.rX = googleApiAvailability;
        this.rV = i;
        if (this.rV >= 0) {
            this.uc = Integer.valueOf(i2);
        }
        this.tE = map;
        this.tY = map2;
        this.ub = arrayList;
        this.ue = new zzrd(this.tY);
        Iterator<GoogleApiClient.ConnectionCallbacks> it = list.iterator();
        while (it.hasNext()) {
            this.tQ.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient.OnConnectionFailedListener> it2 = list2.iterator();
        while (it2.hasNext()) {
            this.tQ.registerConnectionFailedListener(it2.next());
        }
        this.tD = zzgVar;
        this.rY = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        this.th.lock();
        try {
            if (isResuming()) {
                zzapq();
            }
        } finally {
            this.th.unlock();
        }
    }

    public static int zza(Iterable<Api.zze> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.zze zzeVar : iterable) {
            if (zzeVar.zzafk()) {
                z3 = true;
            }
            z2 = zzeVar.zzafz() ? true : z2;
        }
        if (z3) {
            return (z2 && z) ? 2 : 1;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(final GoogleApiClient googleApiClient, final zzqz zzqzVar, final boolean z) {
        zzrj.zh.zzg(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzqd.4
            @Override // com.google.android.gms.common.api.ResultCallback
            /* JADX INFO: renamed from: zzp, reason: merged with bridge method [inline-methods] */
            public void onResult(@NonNull Status status) {
                com.google.android.gms.auth.api.signin.internal.zzk.zzbc(zzqd.this.mContext).zzagl();
                if (status.isSuccess() && zzqd.this.isConnected()) {
                    zzqd.this.reconnect();
                }
                zzqzVar.zzc(status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private void zzapq() {
        this.tQ.zzast();
        this.tR.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapr() {
        this.th.lock();
        try {
            if (zzapt()) {
                zzapq();
            }
        } finally {
            this.th.unlock();
        }
    }

    private void zzb(@NonNull zzqn zzqnVar) {
        if (this.rV < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zzpp.zza(zzqnVar).zzff(this.rV);
    }

    private void zzfi(int i) {
        if (this.uc == null) {
            this.uc = Integer.valueOf(i);
        } else if (this.uc.intValue() != i) {
            String strValueOf = String.valueOf(zzfj(i));
            String strValueOf2 = String.valueOf(zzfj(this.uc.intValue()));
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(strValueOf2).length()).append("Cannot use sign-in mode: ").append(strValueOf).append(". Mode was already set to ").append(strValueOf2).toString());
        }
        if (this.tR != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.zze zzeVar : this.tY.values()) {
            if (zzeVar.zzafk()) {
                z2 = true;
            }
            z = zzeVar.zzafz() ? true : z;
        }
        switch (this.uc.intValue()) {
            case 1:
                if (!z2) {
                    throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                }
                if (z) {
                    throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
                break;
            case 2:
                if (z2) {
                    this.tR = zzpv.zza(this.mContext, this, this.th, this.zzahv, this.rX, this.tY, this.tD, this.tE, this.rY, this.ub);
                    return;
                }
                break;
        }
        this.tR = new zzqf(this.mContext, this, this.th, this.zzahv, this.rX, this.tY, this.tD, this.tE, this.rY, this.ub, this);
    }

    static String zzfj(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.th.lock();
        try {
            if (this.rV >= 0) {
                com.google.android.gms.common.internal.zzab.zza(this.uc != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.uc == null) {
                this.uc = Integer.valueOf(zza(this.tY.values(), false));
            } else if (this.uc.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfi(this.uc.intValue());
            this.tQ.zzast();
            return this.tR.blockingConnect();
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.zzab.zzb(timeUnit, "TimeUnit must not be null");
        this.th.lock();
        try {
            if (this.uc == null) {
                this.uc = Integer.valueOf(zza(this.tY.values(), false));
            } else if (this.uc.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzfi(this.uc.intValue());
            this.tQ.zzast();
            return this.tR.blockingConnect(j, timeUnit);
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        com.google.android.gms.common.internal.zzab.zza(isConnected(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.zzab.zza(this.uc.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        final zzqz zzqzVar = new zzqz(this);
        if (this.tY.containsKey(zzrj.bN)) {
            zza(this, zzqzVar, false);
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this.mContext).addApi(zzrj.API).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzqd.2
                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzqd.this.zza((GoogleApiClient) atomicReference.get(), zzqzVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.internal.zzqd.3
                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
                    zzqzVar.zzc(new Status(8));
                }
            }).setHandler(this.tW).build();
            atomicReference.set(googleApiClientBuild);
            googleApiClientBuild.connect();
        }
        return zzqzVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.th.lock();
        try {
            if (this.rV >= 0) {
                com.google.android.gms.common.internal.zzab.zza(this.uc != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.uc == null) {
                this.uc = Integer.valueOf(zza(this.tY.values(), false));
            } else if (this.uc.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.uc.intValue());
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect(int i) {
        boolean z = true;
        this.th.lock();
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.zzab.zzb(z, new StringBuilder(33).append("Illegal sign-in mode: ").append(i).toString());
            zzfi(i);
            zzapq();
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.th.lock();
        try {
            this.ue.release();
            if (this.tR != null) {
                this.tR.disconnect();
            }
            this.ua.release();
            for (zzpr.zza<?, ?> zzaVar : this.tS) {
                zzaVar.zza((zzrd.zzb) null);
                zzaVar.cancel();
            }
            this.tS.clear();
            if (this.tR == null) {
                return;
            }
            zzapt();
            this.tQ.zzass();
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.mContext);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.tT);
        printWriter.append(" mWorkQueue.size()=").print(this.tS.size());
        this.ue.dump(printWriter);
        if (this.tR != null) {
            this.tR.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.th.lock();
        try {
            if (!isConnected() && !isResuming()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.tY.containsKey(api.zzanp())) {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
            ConnectionResult connectionResult = this.tR.getConnectionResult(api);
            if (connectionResult == null) {
                if (isResuming()) {
                    connectionResult = ConnectionResult.qR;
                } else {
                    Log.i("GoogleApiClientImpl", zzapv());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
            }
            return connectionResult;
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzahv;
    }

    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(@NonNull Api<?> api) {
        Api.zze zzeVar = this.tY.get(api.zzanp());
        return zzeVar != null && zzeVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.tR != null && this.tR.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.tR != null && this.tR.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.tQ.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.tQ.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    boolean isResuming() {
        return this.tT;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.tQ.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.tQ.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        zzb(new zzqn(fragmentActivity));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.tQ.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.tQ.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        C c = (C) this.tY.get(zzcVar);
        com.google.android.gms.common.internal.zzab.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzrc zzrcVar) {
        this.th.lock();
        try {
            if (this.ud == null) {
                this.ud = new HashSet();
            }
            this.ud.add(zzrcVar);
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(@NonNull Api<?> api) {
        return this.tY.containsKey(api.zzanp());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(zzqy zzqyVar) {
        return this.tR != null && this.tR.zza(zzqyVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzaoc() {
        if (this.tR != null) {
            this.tR.zzaoc();
        }
    }

    void zzaps() {
        if (isResuming()) {
            return;
        }
        this.tT = true;
        if (this.tX == null) {
            this.tX = this.rX.zza(this.mContext.getApplicationContext(), new zzb(this));
        }
        this.tW.sendMessageDelayed(this.tW.obtainMessage(1), this.tU);
        this.tW.sendMessageDelayed(this.tW.obtainMessage(2), this.tV);
    }

    boolean zzapt() {
        if (!isResuming()) {
            return false;
        }
        this.tT = false;
        this.tW.removeMessages(2);
        this.tW.removeMessages(1);
        if (this.tX != null) {
            this.tX.unregister();
            this.tX = null;
        }
        return true;
    }

    boolean zzapu() {
        this.th.lock();
        try {
            if (this.ud != null) {
                z = this.ud.isEmpty() ? false : true;
            }
            return z;
        } finally {
            this.th.unlock();
        }
    }

    String zzapv() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    <C extends Api.zze> C zzb(Api.zzc<?> zzcVar) {
        C c = (C) this.tY.get(zzcVar);
        com.google.android.gms.common.internal.zzab.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzrc zzrcVar) {
        this.th.lock();
        try {
            if (this.ud == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.ud.remove(zzrcVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!zzapu()) {
                this.tR.zzaoy();
            }
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(@NonNull T t) {
        com.google.android.gms.common.internal.zzab.zzb(t.zzanp() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean zContainsKey = this.tY.containsKey(t.zzanp());
        String name = t.zzanw() != null ? t.zzanw().getName() : "the API";
        com.google.android.gms.common.internal.zzab.zzb(zContainsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.th.lock();
        try {
            if (this.tR == null) {
                this.tS.add(t);
            } else {
                t = (T) this.tR.zzc(t);
            }
            return t;
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqm.zza
    public void zzc(int i, boolean z) {
        if (i == 1 && !z) {
            zzaps();
        }
        this.ue.zzaqv();
        this.tQ.zzgb(i);
        this.tQ.zzass();
        if (i == 2) {
            zzapq();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(@NonNull T t) {
        com.google.android.gms.common.internal.zzab.zzb(t.zzanp() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean zContainsKey = this.tY.containsKey(t.zzanp());
        String name = t.zzanw() != null ? t.zzanw().getName() : "the API";
        com.google.android.gms.common.internal.zzab.zzb(zContainsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.th.lock();
        try {
            if (this.tR == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (isResuming()) {
                this.tS.add(t);
                while (!this.tS.isEmpty()) {
                    zzpr.zza<?, ?> zzaVarRemove = this.tS.remove();
                    this.ue.zzg(zzaVarRemove);
                    zzaVarRemove.zzz(Status.si);
                }
            } else {
                t = (T) this.tR.zzd(t);
            }
            return t;
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqm.zza
    public void zzd(ConnectionResult connectionResult) {
        if (!this.rX.zzc(this.mContext, connectionResult.getErrorCode())) {
            zzapt();
        }
        if (isResuming()) {
            return;
        }
        this.tQ.zzm(connectionResult);
        this.tQ.zzass();
    }

    @Override // com.google.android.gms.internal.zzqm.zza
    public void zzm(Bundle bundle) {
        while (!this.tS.isEmpty()) {
            zzd(this.tS.remove());
        }
        this.tQ.zzo(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzqs<L> zzt(@NonNull L l) {
        this.th.lock();
        try {
            return this.ua.zzb(l, this.zzahv);
        } finally {
            this.th.unlock();
        }
    }
}
