package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.AsyncEmitter;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action1;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import rx.internal.util.unsafe.SpscUnboundedArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

/* JADX INFO: loaded from: classes2.dex */
public final class OnSubscribeFromEmitter<T> implements Observable.OnSubscribe<T> {
    final Action1<AsyncEmitter<T>> asyncEmitter;
    final AsyncEmitter.BackpressureMode backpressure;

    public OnSubscribeFromEmitter(Action1<AsyncEmitter<T>> asyncEmitter, AsyncEmitter.BackpressureMode backpressure) {
        this.asyncEmitter = asyncEmitter;
        this.backpressure = backpressure;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        BaseAsyncEmitter latestAsyncEmitter;
        switch (this.backpressure) {
            case NONE:
                latestAsyncEmitter = new NoneAsyncEmitter(subscriber);
                break;
            case ERROR:
                latestAsyncEmitter = new ErrorAsyncEmitter(subscriber);
                break;
            case DROP:
                latestAsyncEmitter = new DropAsyncEmitter(subscriber);
                break;
            case LATEST:
                latestAsyncEmitter = new LatestAsyncEmitter(subscriber);
                break;
            default:
                latestAsyncEmitter = new BufferAsyncEmitter(subscriber, RxRingBuffer.SIZE);
                break;
        }
        subscriber.add(latestAsyncEmitter);
        subscriber.setProducer(latestAsyncEmitter);
        this.asyncEmitter.call(latestAsyncEmitter);
    }

    static final class CancellableSubscription extends AtomicReference<AsyncEmitter.Cancellable> implements Subscription {
        private static final long serialVersionUID = 5718521705281392066L;

        public CancellableSubscription(AsyncEmitter.Cancellable cancellable) {
            super(cancellable);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == null;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            AsyncEmitter.Cancellable c;
            if (get() != null && (c = getAndSet(null)) != null) {
                try {
                    c.cancel();
                } catch (Exception ex) {
                    Exceptions.throwIfFatal(ex);
                    RxJavaHooks.onError(ex);
                }
            }
        }
    }

    static abstract class BaseAsyncEmitter<T> extends AtomicLong implements AsyncEmitter<T>, Producer, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        final Subscriber<? super T> actual;
        final SerialSubscription serial = new SerialSubscription();

        public BaseAsyncEmitter(Subscriber<? super T> actual) {
            this.actual = actual;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (!this.actual.isUnsubscribed()) {
                try {
                    this.actual.onCompleted();
                } finally {
                    this.serial.unsubscribe();
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            if (!this.actual.isUnsubscribed()) {
                try {
                    this.actual.onError(e);
                } finally {
                    this.serial.unsubscribe();
                }
            }
        }

        @Override // rx.Subscription
        public final void unsubscribe() {
            this.serial.unsubscribe();
            onUnsubscribed();
        }

        void onUnsubscribed() {
        }

        @Override // rx.Subscription
        public final boolean isUnsubscribed() {
            return this.serial.isUnsubscribed();
        }

        @Override // rx.Producer
        public final void request(long n) {
            if (BackpressureUtils.validate(n)) {
                BackpressureUtils.getAndAddRequest(this, n);
                onRequested();
            }
        }

        void onRequested() {
        }

        @Override // rx.AsyncEmitter
        public final void setSubscription(Subscription s) {
            this.serial.set(s);
        }

        @Override // rx.AsyncEmitter
        public final void setCancellation(AsyncEmitter.Cancellable c) {
            setSubscription(new CancellableSubscription(c));
        }

        @Override // rx.AsyncEmitter
        public final long requested() {
            return get();
        }
    }

    static final class NoneAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public NoneAsyncEmitter(Subscriber<? super T> actual) {
            super(actual);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long r;
            if (!this.actual.isUnsubscribed()) {
                this.actual.onNext(t);
                do {
                    r = get();
                    if (r == 0) {
                        return;
                    }
                } while (!compareAndSet(r, r - 1));
            }
        }
    }

    static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        abstract void onOverflow();

        public NoOverflowBaseAsyncEmitter(Subscriber<? super T> actual) {
            super(actual);
        }

        public void onNext(T t) {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            if (get() != 0) {
                this.actual.onNext(t);
                BackpressureUtils.produced(this, 1L);
            } else {
                onOverflow();
            }
        }
    }

    static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        public DropAsyncEmitter(Subscriber<? super T> actual) {
            super(actual);
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.NoOverflowBaseAsyncEmitter
        void onOverflow() {
        }
    }

    static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;
        private boolean done;

        public ErrorAsyncEmitter(Subscriber<? super T> actual) {
            super(actual);
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.NoOverflowBaseAsyncEmitter, rx.Observer
        public void onNext(T t) {
            if (!this.done) {
                super.onNext(t);
            }
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                super.onCompleted();
            }
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onError(Throwable e) {
            if (this.done) {
                RxJavaHooks.onError(e);
            } else {
                this.done = true;
                super.onError(e);
            }
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.NoOverflowBaseAsyncEmitter
        void onOverflow() {
            onError(new MissingBackpressureException("fromEmitter: could not emit value due to lack of requests"));
        }
    }

    static final class BufferAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        volatile boolean done;
        Throwable error;
        final NotificationLite<T> nl;
        final Queue<Object> queue;
        final AtomicInteger wip;

        public BufferAsyncEmitter(Subscriber<? super T> actual, int capacityHint) {
            super(actual);
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscUnboundedArrayQueue<>(capacityHint) : new SpscUnboundedAtomicArrayQueue<>(capacityHint);
            this.wip = new AtomicInteger();
            this.nl = NotificationLite.instance();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.queue.offer(this.nl.next(t));
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter
        void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        void drain() {
            if (this.wip.getAndIncrement() == 0) {
                int iAddAndGet = 1;
                Subscriber<? super T> subscriber = this.actual;
                Queue<Object> queue = this.queue;
                do {
                    long j = get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (subscriber.isUnsubscribed()) {
                            queue.clear();
                            return;
                        }
                        boolean z = this.done;
                        Object objPoll = queue.poll();
                        boolean z2 = objPoll == null;
                        if (z && z2) {
                            Throwable th = this.error;
                            if (th != null) {
                                super.onError(th);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(this.nl.getValue(objPoll));
                        j2++;
                    }
                    if (j2 == j) {
                        if (subscriber.isUnsubscribed()) {
                            queue.clear();
                            return;
                        }
                        boolean z3 = this.done;
                        boolean zIsEmpty = queue.isEmpty();
                        if (z3 && zIsEmpty) {
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                super.onError(th2);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        BackpressureUtils.produced(this, j2);
                    }
                    iAddAndGet = this.wip.addAndGet(-iAddAndGet);
                } while (iAddAndGet != 0);
            }
        }
    }

    static final class LatestAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        volatile boolean done;
        Throwable error;
        final NotificationLite<T> nl;
        final AtomicReference<Object> queue;
        final AtomicInteger wip;

        public LatestAsyncEmitter(Subscriber<? super T> actual) {
            super(actual);
            this.queue = new AtomicReference<>();
            this.wip = new AtomicInteger();
            this.nl = NotificationLite.instance();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.queue.set(this.nl.next(t));
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter, rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter
        void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        void drain() {
            if (this.wip.getAndIncrement() == 0) {
                int iAddAndGet = 1;
                Subscriber<? super T> subscriber = this.actual;
                AtomicReference<Object> atomicReference = this.queue;
                do {
                    long j = get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (subscriber.isUnsubscribed()) {
                            atomicReference.lazySet(null);
                            return;
                        }
                        boolean z = this.done;
                        Object andSet = atomicReference.getAndSet(null);
                        boolean z2 = andSet == null;
                        if (z && z2) {
                            Throwable th = this.error;
                            if (th != null) {
                                super.onError(th);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(this.nl.getValue(andSet));
                        j2++;
                    }
                    if (j2 == j) {
                        if (subscriber.isUnsubscribed()) {
                            atomicReference.lazySet(null);
                            return;
                        }
                        boolean z3 = this.done;
                        boolean z4 = atomicReference.get() == null;
                        if (z3 && z4) {
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                super.onError(th2);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        BackpressureUtils.produced(this, j2);
                    }
                    iAddAndGet = this.wip.addAndGet(-iAddAndGet);
                } while (iAddAndGet != 0);
            }
        }
    }
}
