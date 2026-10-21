package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class zzrc<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> sL;
    private final zza vp;
    private ResultTransform<? super R, ? extends Result> vk = null;
    private zzrc<? extends Result> vl = null;
    private volatile ResultCallbacks<? super R> vm = null;
    private PendingResult<R> vn = null;
    private final Object sJ = new Object();
    private Status vo = null;
    private boolean vq = false;

    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    PendingResult<?> pendingResult = (PendingResult) message.obj;
                    synchronized (zzrc.this.sJ) {
                        if (pendingResult == null) {
                            zzrc.this.vl.zzac(new Status(13, "Transform returned null"));
                        } else if (pendingResult instanceof zzqx) {
                            zzrc.this.vl.zzac(((zzqx) pendingResult).getStatus());
                        } else {
                            zzrc.this.vl.zza(pendingResult);
                        }
                        break;
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String strValueOf = String.valueOf(runtimeException.getMessage());
                    Log.e("TransformedResultImpl", strValueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(strValueOf) : new String("Runtime exception on the transformation worker thread: "));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzrc(WeakReference<GoogleApiClient> weakReference) {
        com.google.android.gms.common.internal.zzab.zzb(weakReference, "GoogleApiClient reference must not be null");
        this.sL = weakReference;
        GoogleApiClient googleApiClient = this.sL.get();
        this.vp = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzac(Status status) {
        synchronized (this.sJ) {
            this.vo = status;
            zzad(this.vo);
        }
    }

    private void zzad(Status status) {
        synchronized (this.sJ) {
            if (this.vk != null) {
                Status statusOnFailure = this.vk.onFailure(status);
                com.google.android.gms.common.internal.zzab.zzb(statusOnFailure, "onFailure must not return null");
                this.vl.zzac(statusOnFailure);
            } else if (zzaqu()) {
                this.vm.onFailure(status);
            }
        }
    }

    private void zzaqs() {
        if (this.vk == null && this.vm == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.sL.get();
        if (!this.vq && this.vk != null && googleApiClient != null) {
            googleApiClient.zza(this);
            this.vq = true;
        }
        if (this.vo != null) {
            zzad(this.vo);
        } else if (this.vn != null) {
            this.vn.setResultCallback(this);
        }
    }

    private boolean zzaqu() {
        return (this.vm == null || this.sL.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zze(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(result);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Unable to release ").append(strValueOf).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.sJ) {
            com.google.android.gms.common.internal.zzab.zza(this.vm == null, "Cannot call andFinally() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.vk == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.vm = resultCallbacks;
            zzaqs();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(final R r) {
        synchronized (this.sJ) {
            if (!r.getStatus().isSuccess()) {
                zzac(r.getStatus());
                zze(r);
            } else if (this.vk != null) {
                zzqw.zzapz().submit(new Runnable() { // from class: com.google.android.gms.internal.zzrc.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    @WorkerThread
                    public void run() {
                        try {
                            try {
                                zzpt.sI.set(true);
                                zzrc.this.vp.sendMessage(zzrc.this.vp.obtainMessage(0, zzrc.this.vk.onSuccess(r)));
                                zzpt.sI.set(false);
                                zzrc.this.zze(r);
                                GoogleApiClient googleApiClient = (GoogleApiClient) zzrc.this.sL.get();
                                if (googleApiClient != null) {
                                    googleApiClient.zzb(zzrc.this);
                                }
                            } catch (RuntimeException e) {
                                zzrc.this.vp.sendMessage(zzrc.this.vp.obtainMessage(1, e));
                                zzpt.sI.set(false);
                                zzrc.this.zze(r);
                                GoogleApiClient googleApiClient2 = (GoogleApiClient) zzrc.this.sL.get();
                                if (googleApiClient2 != null) {
                                    googleApiClient2.zzb(zzrc.this);
                                }
                            }
                        } finally {
                        }
                    }
                });
            } else if (zzaqu()) {
                this.vm.onSuccess(r);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        zzrc<? extends Result> zzrcVar;
        synchronized (this.sJ) {
            com.google.android.gms.common.internal.zzab.zza(this.vk == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzab.zza(this.vm == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.vk = resultTransform;
            zzrcVar = new zzrc<>(this.sL);
            this.vl = zzrcVar;
            zzaqs();
        }
        return zzrcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.sJ) {
            this.vn = pendingResult;
            zzaqs();
        }
    }

    void zzaqt() {
        this.vm = null;
    }
}
