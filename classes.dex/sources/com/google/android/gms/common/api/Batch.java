package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzpt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Batch extends zzpt<BatchResult> {
    private final PendingResult<?>[] rA;

    /* JADX INFO: renamed from: rx, reason: collision with root package name */
    private int f447rx;
    private boolean ry;
    private boolean rz;
    private final Object zzail;

    public static final class Builder {
        private GoogleApiClient hb;
        private List<PendingResult<?>> rC = new ArrayList();

        public Builder(GoogleApiClient googleApiClient) {
            this.hb = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.rC.size());
            this.rC.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.rC, this.hb);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzail = new Object();
        this.f447rx = list.size();
        this.rA = new PendingResult[this.f447rx];
        if (list.isEmpty()) {
            zzc(new BatchResult(Status.sg, this.rA));
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.rA[i2] = pendingResult;
            pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.api.Batch.1
                @Override // com.google.android.gms.common.api.PendingResult.zza
                public void zzv(Status status) {
                    synchronized (Batch.this.zzail) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.rz = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.ry = true;
                        }
                        Batch.zzb(Batch.this);
                        if (Batch.this.f447rx == 0) {
                            if (Batch.this.rz) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.zzc(new BatchResult(Batch.this.ry ? new Status(13) : Status.sg, Batch.this.rA));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.f447rx;
        batch.f447rx = i - 1;
        return i;
    }

    @Override // com.google.android.gms.internal.zzpt, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.rA) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.internal.zzpt
    /* JADX INFO: renamed from: createFailedResult, reason: merged with bridge method [inline-methods] */
    public BatchResult zzc(Status status) {
        return new BatchResult(status, this.rA);
    }
}
