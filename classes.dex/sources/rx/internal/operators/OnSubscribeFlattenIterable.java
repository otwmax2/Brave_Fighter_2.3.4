package rx.internal.operators;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Func1;
import rx.internal.operators.OnSubscribeFromIterable;
import rx.internal.util.ExceptionsUtils;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.atomic.SpscLinkedArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;

/* JADX INFO: loaded from: classes2.dex */
public final class OnSubscribeFlattenIterable<T, R> implements Observable.OnSubscribe<R> {
    final Func1<? super T, ? extends Iterable<? extends R>> mapper;
    final int prefetch;
    final Observable<? extends T> source;

    protected OnSubscribeFlattenIterable(Observable<? extends T> source, Func1<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        this.source = source;
        this.mapper = mapper;
        this.prefetch = prefetch;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super R> t) {
        final FlattenIterableSubscriber<T, R> parent = new FlattenIterableSubscriber<>(t, this.mapper, this.prefetch);
        t.add(parent);
        t.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeFlattenIterable.1
            @Override // rx.Producer
            public void request(long n) {
                parent.requestMore(n);
            }
        });
        this.source.unsafeSubscribe(parent);
    }

    public static <T, R> Observable<R> createFrom(Observable<? extends T> source, Func1<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        return source instanceof ScalarSynchronousObservable ? Observable.create(new OnSubscribeScalarFlattenIterable(((ScalarSynchronousObservable) source).get(), mapper)) : Observable.create(new OnSubscribeFlattenIterable(source, mapper, prefetch));
    }

    static final class FlattenIterableSubscriber<T, R> extends Subscriber<T> {
        Iterator<? extends R> active;
        final Subscriber<? super R> actual;
        volatile boolean done;
        final long limit;
        final Func1<? super T, ? extends Iterable<? extends R>> mapper;
        long produced;
        final Queue<Object> queue;
        final AtomicReference<Throwable> error = new AtomicReference<>();
        final AtomicInteger wip = new AtomicInteger();
        final AtomicLong requested = new AtomicLong();
        final NotificationLite<T> nl = NotificationLite.instance();

        public FlattenIterableSubscriber(Subscriber<? super R> actual, Func1<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
            this.actual = actual;
            this.mapper = mapper;
            if (prefetch == Integer.MAX_VALUE) {
                this.limit = Long.MAX_VALUE;
                this.queue = new SpscLinkedArrayQueue(RxRingBuffer.SIZE);
            } else {
                this.limit = prefetch - (prefetch >> 2);
                if (UnsafeAccess.isUnsafeAvailable()) {
                    this.queue = new SpscArrayQueue(prefetch);
                } else {
                    this.queue = new SpscAtomicArrayQueue(prefetch);
                }
            }
            request(prefetch);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (!this.queue.offer(this.nl.next(t))) {
                unsubscribe();
                onError(new MissingBackpressureException());
            } else {
                drain();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            if (ExceptionsUtils.addThrowable(this.error, e)) {
                this.done = true;
                drain();
            } else {
                RxJavaHooks.onError(e);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        void requestMore(long n) {
            if (n > 0) {
                BackpressureUtils.getAndAddRequest(this.requested, n);
                drain();
            } else if (n < 0) {
                throw new IllegalStateException("n >= 0 required but it was " + n);
            }
        }

        void drain() {
            if (this.wip.getAndIncrement() == 0) {
                Subscriber<? super R> subscriber = this.actual;
                Queue<?> queue = this.queue;
                int iAddAndGet = 1;
                while (true) {
                    Iterator<? extends R> it = this.active;
                    if (it == null) {
                        boolean z = this.done;
                        Object objPoll = queue.poll();
                        boolean z2 = objPoll == null;
                        if (!checkTerminated(z, z2, subscriber, queue)) {
                            if (!z2) {
                                long j = this.produced + 1;
                                if (j == this.limit) {
                                    this.produced = 0L;
                                    request(j);
                                } else {
                                    this.produced = j;
                                }
                                try {
                                    it = this.mapper.call(this.nl.getValue(objPoll)).iterator();
                                } catch (Throwable th) {
                                    Exceptions.throwIfFatal(th);
                                    onError(th);
                                }
                                if (it.hasNext()) {
                                    this.active = it;
                                } else {
                                    continue;
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    if (it != null) {
                        long j2 = this.requested.get();
                        long j3 = 0;
                        while (true) {
                            if (j3 == j2) {
                                break;
                            }
                            if (!checkTerminated(this.done, false, subscriber, queue)) {
                                try {
                                    subscriber.onNext(it.next());
                                    if (!checkTerminated(this.done, false, subscriber, queue)) {
                                        j3++;
                                        try {
                                            if (!it.hasNext()) {
                                                it = null;
                                                this.active = null;
                                                break;
                                            }
                                        } catch (Throwable th2) {
                                            Exceptions.throwIfFatal(th2);
                                            it = null;
                                            this.active = null;
                                            onError(th2);
                                        }
                                    } else {
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    Exceptions.throwIfFatal(th3);
                                    it = null;
                                    this.active = null;
                                    onError(th3);
                                }
                            } else {
                                return;
                            }
                        }
                        if (j3 == j2) {
                            if (checkTerminated(this.done, queue.isEmpty() && it == null, subscriber, queue)) {
                                return;
                            }
                        }
                        if (j3 != 0) {
                            BackpressureUtils.produced(this.requested, j3);
                        }
                        if (it == null) {
                            continue;
                        }
                    }
                    iAddAndGet = this.wip.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        boolean checkTerminated(boolean d, boolean empty, Subscriber<?> a, Queue<?> q) {
            if (a.isUnsubscribed()) {
                q.clear();
                this.active = null;
                return true;
            }
            if (d) {
                Throwable ex = this.error.get();
                if (ex != null) {
                    Throwable ex2 = ExceptionsUtils.terminate(this.error);
                    unsubscribe();
                    q.clear();
                    this.active = null;
                    a.onError(ex2);
                    return true;
                }
                if (empty) {
                    a.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }

    static final class OnSubscribeScalarFlattenIterable<T, R> implements Observable.OnSubscribe<R> {
        final Func1<? super T, ? extends Iterable<? extends R>> mapper;
        final T value;

        public OnSubscribeScalarFlattenIterable(T value, Func1<? super T, ? extends Iterable<? extends R>> mapper) {
            this.value = value;
            this.mapper = mapper;
        }

        @Override // rx.functions.Action1
        public void call(Subscriber<? super R> subscriber) {
            try {
                Iterator<? extends R> it = this.mapper.call(this.value).iterator();
                if (!it.hasNext()) {
                    subscriber.onCompleted();
                } else {
                    subscriber.setProducer(new OnSubscribeFromIterable.IterableProducer(subscriber, it));
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, subscriber, this.value);
            }
        }
    }
}
