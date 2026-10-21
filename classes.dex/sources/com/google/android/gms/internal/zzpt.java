package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzpt<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> sI = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.zzpt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: zzaov, reason: merged with bridge method [inline-methods] */
        public Boolean initialValue() {
            return false;
        }
    };
    private final Object sJ;
    protected final zza<R> sK;
    protected final WeakReference<GoogleApiClient> sL;
    private final ArrayList<PendingResult.zza> sM;
    private ResultCallback<? super R> sN;
    private zzb sO;
    private volatile boolean sP;
    private boolean sQ;
    private com.google.android.gms.common.internal.zzr sR;
    private volatile zzrc<R> sS;
    private boolean sT;
    private R sc;
    private boolean zzak;
    private final CountDownLatch zzalc;

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    break;
                case 2:
                    ((zzpt) message.obj).zzaa(Status.sj);
                    break;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    break;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzpt<R> zzptVar, long j) {
            sendMessageDelayed(obtainMessage(2, zzptVar), j);
        }

        public void zzaow() {
            removeMessages(2);
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzpt.zze(r);
                throw e;
            }
        }
    }

    private final class zzb {
        private zzb() {
        }

        protected void finalize() throws Throwable {
            zzpt.zze(zzpt.this.sc);
            super.finalize();
        }
    }

    @Deprecated
    zzpt() {
        this.sJ = new Object();
        this.zzalc = new CountDownLatch(1);
        this.sM = new ArrayList<>();
        this.sT = false;
        this.sK = new zza<>(Looper.getMainLooper());
        this.sL = new WeakReference<>(null);
    }

    @Deprecated
    protected zzpt(Looper looper) {
        this.sJ = new Object();
        this.zzalc = new CountDownLatch(1);
        this.sM = new ArrayList<>();
        this.sT = false;
        this.sK = new zza<>(looper);
        this.sL = new WeakReference<>(null);
    }

    protected zzpt(GoogleApiClient googleApiClient) {
        this.sJ = new Object();
        this.zzalc = new CountDownLatch(1);
        this.sM = new ArrayList<>();
        this.sT = false;
        this.sK = new zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.sL = new WeakReference<>(googleApiClient);
    }

    private R get() {
        R r;
        synchronized (this.sJ) {
            com.google.android.gms.common.internal.zzab.zza(this.sP ? false : true, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
            r = this.sc;
            this.sc = null;
            this.sN = null;
            this.sP = true;
        }
        zzaop();
        return r;
    }

    private void zzd(R r) {
        this.sc = r;
        this.sR = null;
        this.zzalc.countDown();
        Status status = this.sc.getStatus();
        if (this.zzak) {
            this.sN = null;
        } else if (this.sN != null) {
            this.sK.zzaow();
            this.sK.zza(this.sN, get());
        } else if (this.sc instanceof Releasable) {
            this.sO = new zzb();
        }
        Iterator<PendingResult.zza> it = this.sM.iterator();
        while (it.hasNext()) {
            it.next().zzv(status);
        }
        this.sM.clear();
    }

    public static void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(result);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Unable to release ").append(strValueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed");
        com.google.android.gms.common.internal.zzab.zza(this.sS == null, "Cannot await if then() has been called.");
        try {
            this.zzalc.await();
        } catch (InterruptedException e) {
            zzaa(Status.sh);
        }
        com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
        return (R) get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        com.google.android.gms.common.internal.zzab.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzab.zza(this.sS == null, "Cannot await if then() has been called.");
        try {
            if (!this.zzalc.await(j, timeUnit)) {
                zzaa(Status.sj);
            }
        } catch (InterruptedException e) {
            zzaa(Status.sh);
        }
        com.google.android.gms.common.internal.zzab.zza(isReady(), "Result is not ready.");
        return (R) get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.sJ) {
            if (this.zzak || this.sP) {
                return;
            }
            if (this.sR != null) {
                try {
                    this.sR.cancel();
                } catch (RemoteException e) {
                }
            }
            zze(this.sc);
            this.zzak = true;
            zzd(zzc(Status.sk));
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.sJ) {
            z = this.zzak;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzalc.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.sJ) {
            if (resultCallback == null) {
                this.sN = null;
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(this.sS == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.sK.zza(resultCallback, get());
            } else {
                this.sN = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.sJ) {
            if (resultCallback == null) {
                this.sN = null;
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzab.zza(this.sS == null, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.sK.zza(resultCallback, get());
            } else {
                this.sN = resultCallback;
                this.sK.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> transformedResultThen;
        com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed.");
        synchronized (this.sJ) {
            com.google.android.gms.common.internal.zzab.zza(this.sS == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.sN == null, "Cannot call then() if callbacks are set.");
            this.sT = true;
            this.sS = new zzrc<>(this.sL);
            transformedResultThen = this.sS.then(resultTransform);
            if (isReady()) {
                this.sK.zza(this.sS, get());
            } else {
                this.sN = this.sS;
            }
        }
        return transformedResultThen;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult.zza zzaVar) {
        com.google.android.gms.common.internal.zzab.zza(!this.sP, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzab.zzb(zzaVar != null, "Callback cannot be null.");
        synchronized (this.sJ) {
            if (isReady()) {
                zzaVar.zzv(this.sc.getStatus());
            } else {
                this.sM.add(zzaVar);
            }
        }
    }

    protected final void zza(com.google.android.gms.common.internal.zzr zzrVar) {
        synchronized (this.sJ) {
            this.sR = zzrVar;
        }
    }

    public final void zzaa(Status status) {
        synchronized (this.sJ) {
            if (!isReady()) {
                zzc(zzc(status));
                this.sQ = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zzaog() {
        return null;
    }

    protected void zzaop() {
    }

    public boolean zzaos() {
        boolean zIsCanceled;
        synchronized (this.sJ) {
            if (this.sL.get() == null || !this.sT) {
                cancel();
            }
            zIsCanceled = isCanceled();
        }
        return zIsCanceled;
    }

    public void zzaot() {
        this.sT = this.sT || sI.get().booleanValue();
    }

    boolean zzaou() {
        return false;
    }

    protected abstract R zzc(Status status);

    public final void zzc(R r) {
        synchronized (this.sJ) {
            if (this.sQ || this.zzak || (isReady() && zzaou())) {
                zze(r);
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(!isReady(), "Results have already been set");
            com.google.android.gms.common.internal.zzab.zza(this.sP ? false : true, "Result has already been consumed");
            zzd(r);
        }
    }
}
