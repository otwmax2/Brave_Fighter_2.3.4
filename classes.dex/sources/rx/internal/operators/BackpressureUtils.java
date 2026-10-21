package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Subscriber;
import rx.functions.Func1;
import rx.internal.util.UtilityFunctions;

/* JADX INFO: loaded from: classes2.dex */
public final class BackpressureUtils {
    static final long COMPLETED_MASK = Long.MIN_VALUE;
    static final long REQUESTED_MASK = Long.MAX_VALUE;

    private BackpressureUtils() {
        throw new IllegalStateException("No instances!");
    }

    public static long getAndAddRequest(AtomicLong requested, long n) {
        long current;
        long next;
        do {
            current = requested.get();
            next = addCap(current, n);
        } while (!requested.compareAndSet(current, next));
        return current;
    }

    public static long multiplyCap(long a, long b) {
        long u = a * b;
        if (((a | b) >>> 31) != 0 && b != 0 && u / b != a) {
            return REQUESTED_MASK;
        }
        return u;
    }

    public static long addCap(long a, long b) {
        long u = a + b;
        if (u < 0) {
            return REQUESTED_MASK;
        }
        return u;
    }

    public static <T> void postCompleteDone(AtomicLong requested, Queue<T> queue, Subscriber<? super T> actual) {
        postCompleteDone(requested, queue, actual, UtilityFunctions.identity());
    }

    public static <T> boolean postCompleteRequest(AtomicLong requested, long n, Queue<T> queue, Subscriber<? super T> actual) {
        return postCompleteRequest(requested, n, queue, actual, UtilityFunctions.identity());
    }

    public static <T, R> void postCompleteDone(AtomicLong requested, Queue<T> queue, Subscriber<? super R> actual, Func1<? super T, ? extends R> exitTransform) {
        long r;
        long u;
        do {
            r = requested.get();
            if ((r & Long.MIN_VALUE) == 0) {
                u = r | Long.MIN_VALUE;
            } else {
                return;
            }
        } while (!requested.compareAndSet(r, u));
        if (r != 0) {
            postCompleteDrain(requested, queue, actual, exitTransform);
        }
    }

    public static <T, R> boolean postCompleteRequest(AtomicLong requested, long n, Queue<T> queue, Subscriber<? super R> actual, Func1<? super T, ? extends R> exitTransform) {
        long r;
        long c;
        long v;
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + n);
        }
        if (n == 0) {
            return (requested.get() & Long.MIN_VALUE) == 0;
        }
        do {
            r = requested.get();
            c = r & Long.MIN_VALUE;
            long u = r & REQUESTED_MASK;
            v = addCap(u, n);
        } while (!requested.compareAndSet(r, v | c));
        if (r != Long.MIN_VALUE) {
            return c == 0;
        }
        postCompleteDrain(requested, queue, actual, exitTransform);
        return false;
    }

    static <T, R> void postCompleteDrain(AtomicLong atomicLong, Queue<T> queue, Subscriber<? super R> subscriber, Func1<? super T, ? extends R> func1) {
        long jAddAndGet = atomicLong.get();
        if (jAddAndGet == REQUESTED_MASK) {
            while (!subscriber.isUnsubscribed()) {
                Object objPoll = queue.poll();
                if (objPoll == null) {
                    subscriber.onCompleted();
                    return;
                }
                subscriber.onNext(func1.call(objPoll));
            }
            return;
        }
        long j = Long.MIN_VALUE;
        while (true) {
            if (j != jAddAndGet) {
                if (!subscriber.isUnsubscribed()) {
                    Object objPoll2 = queue.poll();
                    if (objPoll2 == null) {
                        subscriber.onCompleted();
                        return;
                    } else {
                        subscriber.onNext(func1.call(objPoll2));
                        j++;
                    }
                } else {
                    return;
                }
            } else {
                if (j == jAddAndGet) {
                    if (!subscriber.isUnsubscribed()) {
                        if (queue.isEmpty()) {
                            subscriber.onCompleted();
                            return;
                        }
                    } else {
                        return;
                    }
                }
                jAddAndGet = atomicLong.get();
                if (jAddAndGet == j) {
                    jAddAndGet = atomicLong.addAndGet(-(j & REQUESTED_MASK));
                    if (jAddAndGet == Long.MIN_VALUE) {
                        return;
                    } else {
                        j = Long.MIN_VALUE;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public static long produced(AtomicLong requested, long n) {
        long current;
        long next;
        do {
            current = requested.get();
            if (current == REQUESTED_MASK) {
                return REQUESTED_MASK;
            }
            next = current - n;
            if (next < 0) {
                throw new IllegalStateException("More produced than requested: " + next);
            }
        } while (!requested.compareAndSet(current, next));
        return next;
    }

    public static boolean validate(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + n);
        }
        return n != 0;
    }
}
