package rx.internal.operators;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.internal.util.unsafe.MpscLinkedQueue;
import rx.subscriptions.CompositeSubscription;

/* JADX INFO: loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeDelayErrorIterable implements Completable.OnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeMergeDelayErrorIterable(Iterable<? extends Completable> sources) {
        this.sources = sources;
    }

    @Override // rx.functions.Action1
    public void call(final CompletableSubscriber s) {
        final CompositeSubscription set = new CompositeSubscription();
        s.onSubscribe(set);
        try {
            Iterator<? extends Completable> iterator = this.sources.iterator();
            if (iterator == null) {
                s.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            final AtomicInteger wip = new AtomicInteger(1);
            final Queue<Throwable> queue = new MpscLinkedQueue<>();
            while (!set.isUnsubscribed()) {
                try {
                    boolean b = iterator.hasNext();
                    if (b) {
                        if (!set.isUnsubscribed()) {
                            try {
                                Completable c = iterator.next();
                                if (!set.isUnsubscribed()) {
                                    if (c == null) {
                                        NullPointerException e = new NullPointerException("A completable source is null");
                                        queue.offer(e);
                                        if (wip.decrementAndGet() == 0) {
                                            if (queue.isEmpty()) {
                                                s.onCompleted();
                                                return;
                                            } else {
                                                s.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    wip.getAndIncrement();
                                    c.unsafeSubscribe(new CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeDelayErrorIterable.1
                                        @Override // rx.CompletableSubscriber
                                        public void onSubscribe(Subscription d) {
                                            set.add(d);
                                        }

                                        @Override // rx.CompletableSubscriber
                                        public void onError(Throwable e2) {
                                            queue.offer(e2);
                                            tryTerminate();
                                        }

                                        @Override // rx.CompletableSubscriber
                                        public void onCompleted() {
                                            tryTerminate();
                                        }

                                        void tryTerminate() {
                                            if (wip.decrementAndGet() == 0) {
                                                if (queue.isEmpty()) {
                                                    s.onCompleted();
                                                } else {
                                                    s.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                                                }
                                            }
                                        }
                                    });
                                } else {
                                    return;
                                }
                            } catch (Throwable e2) {
                                queue.offer(e2);
                                if (wip.decrementAndGet() == 0) {
                                    if (queue.isEmpty()) {
                                        s.onCompleted();
                                        return;
                                    } else {
                                        s.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                                        return;
                                    }
                                }
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        if (wip.decrementAndGet() == 0) {
                            if (queue.isEmpty()) {
                                s.onCompleted();
                                return;
                            } else {
                                s.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                                return;
                            }
                        }
                        return;
                    }
                } catch (Throwable e3) {
                    queue.offer(e3);
                    if (wip.decrementAndGet() == 0) {
                        if (queue.isEmpty()) {
                            s.onCompleted();
                            return;
                        } else {
                            s.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                            return;
                        }
                    }
                    return;
                }
            }
        } catch (Throwable e4) {
            s.onError(e4);
        }
    }
}
