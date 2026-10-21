package rx;

import rx.AsyncEmitter;
import rx.annotations.Experimental;

/* JADX INFO: loaded from: classes2.dex */
@Experimental
public interface CompletableEmitter {
    void onCompleted();

    void onError(Throwable th);

    void setCancellation(AsyncEmitter.Cancellable cancellable);

    void setSubscription(Subscription subscription);
}
