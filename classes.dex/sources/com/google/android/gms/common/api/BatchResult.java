package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class BatchResult implements Result {
    private final Status cc;
    private final PendingResult<?>[] rA;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.cc = status;
        this.rA = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzab.zzb(batchResultToken.mId < this.rA.length, "The result token does not belong to this batch");
        return (R) this.rA[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
