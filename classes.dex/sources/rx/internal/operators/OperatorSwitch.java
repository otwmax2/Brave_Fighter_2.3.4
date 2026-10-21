package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.functions.Action0;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscLinkedArrayQueue;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;
import rx.subscriptions.Subscriptions;

/* JADX INFO: loaded from: classes2.dex */
public final class OperatorSwitch<T> implements Observable.Operator<T, Observable<? extends T>> {
    final boolean delayError;

    static final class Holder {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>(false);

        Holder() {
        }
    }

    static final class HolderDelayError {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>(true);

        HolderDelayError() {
        }
    }

    public static <T> OperatorSwitch<T> instance(boolean z) {
        return z ? (OperatorSwitch<T>) HolderDelayError.INSTANCE : (OperatorSwitch<T>) Holder.INSTANCE;
    }

    OperatorSwitch(boolean delayError) {
        this.delayError = delayError;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> child) {
        SwitchSubscriber<T> sws = new SwitchSubscriber<>(child, this.delayError);
        child.add(sws);
        sws.init();
        return sws;
    }

    static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        static final Throwable TERMINAL_ERROR = new Throwable("Terminal error");
        final Subscriber<? super T> child;
        final boolean delayError;
        boolean emitting;
        Throwable error;
        boolean innerActive;
        volatile boolean mainDone;
        boolean missed;
        Producer producer;
        long requested;
        final SerialSubscription serial = new SerialSubscription();
        final AtomicLong index = new AtomicLong();
        final SpscLinkedArrayQueue<Object> queue = new SpscLinkedArrayQueue<>(RxRingBuffer.SIZE);
        final NotificationLite<T> nl = NotificationLite.instance();

        SwitchSubscriber(Subscriber<? super T> child, boolean delayError) {
            this.child = child;
            this.delayError = delayError;
        }

        void init() {
            this.child.add(this.serial);
            this.child.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.1
                @Override // rx.functions.Action0
                public void call() {
                    SwitchSubscriber.this.clearProducer();
                }
            }));
            this.child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.2
                @Override // rx.Producer
                public void request(long n) {
                    if (n > 0) {
                        SwitchSubscriber.this.childRequested(n);
                    } else if (n < 0) {
                        throw new IllegalArgumentException("n >= 0 expected but it was " + n);
                    }
                }
            });
        }

        void clearProducer() {
            synchronized (this) {
                this.producer = null;
            }
        }

        @Override // rx.Observer
        public void onNext(Observable<? extends T> t) {
            InnerSubscriber<T> inner;
            long id = this.index.incrementAndGet();
            Subscription s = this.serial.get();
            if (s != null) {
                s.unsubscribe();
            }
            synchronized (this) {
                inner = new InnerSubscriber<>(id, this);
                this.innerActive = true;
                this.producer = null;
            }
            this.serial.set(inner);
            t.unsafeSubscribe(inner);
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            boolean success;
            synchronized (this) {
                success = updateError(e);
            }
            if (success) {
                this.mainDone = true;
                drain();
            } else {
                pluginError(e);
            }
        }

        boolean updateError(Throwable next) {
            Throwable e = this.error;
            if (e == TERMINAL_ERROR) {
                return false;
            }
            if (e == null) {
                this.error = next;
            } else if (e instanceof CompositeException) {
                List<Throwable> list = new ArrayList<>(((CompositeException) e).getExceptions());
                list.add(next);
                this.error = new CompositeException(list);
            } else {
                this.error = new CompositeException(e, next);
            }
            return true;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.mainDone = true;
            drain();
        }

        void emit(T value, InnerSubscriber<T> inner) {
            synchronized (this) {
                if (this.index.get() == ((InnerSubscriber) inner).id) {
                    this.queue.offer(inner, this.nl.next(value));
                    drain();
                }
            }
        }

        void error(Throwable e, long id) {
            boolean success;
            synchronized (this) {
                if (this.index.get() == id) {
                    success = updateError(e);
                    this.innerActive = false;
                    this.producer = null;
                } else {
                    success = true;
                }
            }
            if (success) {
                drain();
            } else {
                pluginError(e);
            }
        }

        void complete(long id) {
            synchronized (this) {
                if (this.index.get() == id) {
                    this.innerActive = false;
                    this.producer = null;
                    drain();
                }
            }
        }

        void pluginError(Throwable e) {
            RxJavaHooks.onError(e);
        }

        void innerProducer(Producer p, long id) {
            synchronized (this) {
                if (this.index.get() == id) {
                    long n = this.requested;
                    this.producer = p;
                    p.request(n);
                }
            }
        }

        void childRequested(long n) {
            Producer p;
            synchronized (this) {
                p = this.producer;
                this.requested = BackpressureUtils.addCap(this.requested, n);
            }
            if (p != null) {
                p.request(n);
            }
            drain();
        }

        void drain() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                boolean z = this.innerActive;
                long j = this.requested;
                Throwable th = this.error;
                if (th != null && th != TERMINAL_ERROR && !this.delayError) {
                    this.error = TERMINAL_ERROR;
                }
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
                AtomicLong atomicLong = this.index;
                Subscriber<? super T> subscriber = this.child;
                boolean z2 = this.mainDone;
                while (true) {
                    long j2 = 0;
                    while (j2 != j) {
                        if (!subscriber.isUnsubscribed()) {
                            boolean zIsEmpty = spscLinkedArrayQueue.isEmpty();
                            if (!checkTerminated(z2, z, th, spscLinkedArrayQueue, subscriber, zIsEmpty)) {
                                if (zIsEmpty) {
                                    break;
                                }
                                InnerSubscriber innerSubscriber = (InnerSubscriber) spscLinkedArrayQueue.poll();
                                T value = this.nl.getValue(spscLinkedArrayQueue.poll());
                                if (atomicLong.get() == innerSubscriber.id) {
                                    subscriber.onNext(value);
                                    j2++;
                                }
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    if (j2 == j) {
                        if (!subscriber.isUnsubscribed()) {
                            if (checkTerminated(this.mainDone, z, th, spscLinkedArrayQueue, subscriber, spscLinkedArrayQueue.isEmpty())) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    synchronized (this) {
                        j = this.requested;
                        if (j != Long.MAX_VALUE) {
                            j -= j2;
                            this.requested = j;
                        }
                        if (!this.missed) {
                            this.emitting = false;
                            return;
                        }
                        this.missed = false;
                        z2 = this.mainDone;
                        z = this.innerActive;
                        th = this.error;
                        if (th != null && th != TERMINAL_ERROR && !this.delayError) {
                            this.error = TERMINAL_ERROR;
                        }
                    }
                }
            }
        }

        protected boolean checkTerminated(boolean localMainDone, boolean localInnerActive, Throwable localError, SpscLinkedArrayQueue<Object> localQueue, Subscriber<? super T> localChild, boolean empty) {
            if (this.delayError) {
                if (localMainDone && !localInnerActive && empty) {
                    if (localError != null) {
                        localChild.onError(localError);
                        return true;
                    }
                    localChild.onCompleted();
                    return true;
                }
            } else {
                if (localError != null) {
                    localQueue.clear();
                    localChild.onError(localError);
                    return true;
                }
                if (localMainDone && !localInnerActive && empty) {
                    localChild.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }

    static final class InnerSubscriber<T> extends Subscriber<T> {
        private final long id;
        private final SwitchSubscriber<T> parent;

        InnerSubscriber(long id, SwitchSubscriber<T> parent) {
            this.id = id;
            this.parent = parent;
        }

        @Override // rx.Subscriber
        public void setProducer(Producer p) {
            this.parent.innerProducer(p, this.id);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.parent.emit(t, this);
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            this.parent.error(e, this.id);
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.parent.complete(this.id);
        }
    }
}
