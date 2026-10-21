package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

/* JADX INFO: loaded from: classes2.dex */
public final class CompletableOnSubscribeConcat implements Completable.OnSubscribe {
    final int prefetch;
    final Observable<Completable> sources;

    /* JADX WARN: Multi-variable type inference failed */
    public CompletableOnSubscribeConcat(Observable<? extends Completable> observable, int prefetch) {
        this.sources = observable;
        this.prefetch = prefetch;
    }

    @Override // rx.functions.Action1
    public void call(CompletableSubscriber s) {
        CompletableConcatSubscriber parent = new CompletableConcatSubscriber(s, this.prefetch);
        s.onSubscribe(parent);
        this.sources.subscribe((Subscriber<? super Completable>) parent);
    }

    static final class CompletableConcatSubscriber extends Subscriber<Completable> {
        final CompletableSubscriber actual;
        volatile boolean done;
        final SpscArrayQueue<Completable> queue;
        final SerialSubscription sr = new SerialSubscription();
        final ConcatInnerSubscriber inner = new ConcatInnerSubscriber();
        final AtomicInteger wip = new AtomicInteger();
        final AtomicBoolean once = new AtomicBoolean();

        public CompletableConcatSubscriber(CompletableSubscriber actual, int prefetch) {
            this.actual = actual;
            this.queue = new SpscArrayQueue<>(prefetch);
            add(this.sr);
            request(prefetch);
        }

        @Override // rx.Observer
        public void onNext(Completable t) {
            if (!this.queue.offer(t)) {
                onError(new MissingBackpressureException());
            } else if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable t) {
            if (this.once.compareAndSet(false, true)) {
                this.actual.onError(t);
            } else {
                RxJavaHooks.onError(t);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                if (this.wip.getAndIncrement() == 0) {
                    next();
                }
            }
        }

        void innerError(Throwable e) {
            unsubscribe();
            onError(e);
        }

        void innerComplete() {
            if (this.wip.decrementAndGet() != 0) {
                next();
            }
            if (!this.done) {
                request(1L);
            }
        }

        void next() {
            boolean d = this.done;
            Completable c = this.queue.poll();
            if (c == null) {
                if (d) {
                    if (this.once.compareAndSet(false, true)) {
                        this.actual.onCompleted();
                        return;
                    }
                    return;
                }
                RxJavaHooks.onError(new IllegalStateException("Queue is empty?!"));
                return;
            }
            c.unsafeSubscribe(this.inner);
        }

        final class ConcatInnerSubscriber implements CompletableSubscriber {
            ConcatInnerSubscriber() {
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription d) {
                CompletableConcatSubscriber.this.sr.set(d);
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable e) {
                CompletableConcatSubscriber.this.innerError(e);
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                CompletableConcatSubscriber.this.innerComplete();
            }
        }
    }
}
