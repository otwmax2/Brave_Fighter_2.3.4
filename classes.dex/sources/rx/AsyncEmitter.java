package rx;

import rx.annotations.Experimental;

/* JADX INFO: loaded from: classes2.dex */
@Experimental
public interface AsyncEmitter<T> extends Observer<T> {

    public enum BackpressureMode {
        NONE,
        ERROR,
        BUFFER,
        DROP,
        LATEST
    }

    public interface Cancellable {
        void cancel() throws Exception;
    }

    long requested();

    void setCancellation(Cancellable cancellable);

    void setSubscription(Subscription subscription);
}
