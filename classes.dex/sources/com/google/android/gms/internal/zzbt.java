package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzbt<T1 extends Result, T2 extends Result> extends PendingResult<T1> {
    private PendingResult<T2> zzahr;

    protected zzbt(PendingResult<T2> pendingResult) {
        this.zzahr = null;
        this.zzahr = pendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public T1 await() {
        return (T1) zza(this.zzahr.await());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public T1 await(long j, @NonNull TimeUnit timeUnit) {
        return (T1) zza(this.zzahr.await(j, timeUnit));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        this.zzahr.cancel();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        return this.zzahr.isCanceled();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(@NonNull final ResultCallback<? super T1> resultCallback) {
        this.zzahr.setResultCallback(new ResultCallback<T2>() { // from class: com.google.android.gms.internal.zzbt.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(@NonNull T2 t2) {
                resultCallback.onResult(zzbt.this.zza(t2));
            }
        });
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(@NonNull final ResultCallback<? super T1> resultCallback, long j, @NonNull TimeUnit timeUnit) {
        this.zzahr.setResultCallback(new ResultCallback<T2>() { // from class: com.google.android.gms.internal.zzbt.2
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(@NonNull T2 t2) {
                resultCallback.onResult(zzbt.this.zza(t2));
            }
        }, j, timeUnit);
    }

    protected abstract T1 zza(T2 t2);
}
