package rx.subjects;

import android.support.v7.internal.widget.ActivityChooserView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.internal.operators.BackpressureUtils;
import rx.plugins.RxJavaHooks;
import rx.schedulers.Schedulers;

/* JADX INFO: loaded from: classes2.dex */
public final class ReplaySubject<T> extends Subject<T, T> {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    final ReplayState<T> state;

    interface ReplayBuffer<T> {
        void complete();

        void drain(ReplayProducer<T> replayProducer);

        Throwable error();

        void error(Throwable th);

        boolean isComplete();

        boolean isEmpty();

        T last();

        void next(T t);

        int size();

        T[] toArray(T[] tArr);
    }

    public static <T> ReplaySubject<T> create() {
        return create(16);
    }

    public static <T> ReplaySubject<T> create(int capacity) {
        if (capacity <= 0) {
            throw new IllegalArgumentException("capacity > 0 required but it was " + capacity);
        }
        ReplayBuffer<T> buffer = new ReplayUnboundedBuffer<>(capacity);
        ReplayState<T> state = new ReplayState<>(buffer);
        return new ReplaySubject<>(state);
    }

    static <T> ReplaySubject<T> createUnbounded() {
        ReplayBuffer<T> buffer = new ReplaySizeBoundBuffer<>(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        ReplayState<T> state = new ReplayState<>(buffer);
        return new ReplaySubject<>(state);
    }

    static <T> ReplaySubject<T> createUnboundedTime() {
        ReplayBuffer<T> buffer = new ReplaySizeAndTimeBoundBuffer<>(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, Long.MAX_VALUE, Schedulers.immediate());
        ReplayState<T> state = new ReplayState<>(buffer);
        return new ReplaySubject<>(state);
    }

    public static <T> ReplaySubject<T> createWithSize(int size) {
        ReplayBuffer<T> buffer = new ReplaySizeBoundBuffer<>(size);
        ReplayState<T> state = new ReplayState<>(buffer);
        return new ReplaySubject<>(state);
    }

    public static <T> ReplaySubject<T> createWithTime(long time, TimeUnit unit, Scheduler scheduler) {
        return createWithTimeAndSize(time, unit, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, scheduler);
    }

    public static <T> ReplaySubject<T> createWithTimeAndSize(long time, TimeUnit unit, int size, Scheduler scheduler) {
        ReplayBuffer<T> buffer = new ReplaySizeAndTimeBoundBuffer<>(size, unit.toMillis(time), scheduler);
        ReplayState<T> state = new ReplayState<>(buffer);
        return new ReplaySubject<>(state);
    }

    ReplaySubject(ReplayState<T> state) {
        super(state);
        this.state = state;
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.state.onNext(t);
    }

    @Override // rx.Observer
    public void onError(Throwable e) throws Throwable {
        this.state.onError(e);
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.state.onCompleted();
    }

    int subscriberCount() {
        return this.state.get().length;
    }

    @Override // rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.get().length != 0;
    }

    public boolean hasThrowable() {
        return this.state.isTerminated() && this.state.buffer.error() != null;
    }

    public boolean hasCompleted() {
        return this.state.isTerminated() && this.state.buffer.error() == null;
    }

    public Throwable getThrowable() {
        if (this.state.isTerminated()) {
            return this.state.buffer.error();
        }
        return null;
    }

    public int size() {
        return this.state.buffer.size();
    }

    public boolean hasAnyValue() {
        return !this.state.buffer.isEmpty();
    }

    public boolean hasValue() {
        return hasAnyValue();
    }

    public T[] getValues(T[] a) {
        return this.state.buffer.toArray(a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        if (values == EMPTY_ARRAY) {
            return new Object[0];
        }
        return values;
    }

    public T getValue() {
        return this.state.buffer.last();
    }

    static final class ReplayState<T> extends AtomicReference<ReplayProducer<T>[]> implements Observable.OnSubscribe<T>, Observer<T> {
        static final ReplayProducer[] EMPTY = new ReplayProducer[0];
        static final ReplayProducer[] TERMINATED = new ReplayProducer[0];
        private static final long serialVersionUID = 5952362471246910544L;
        final ReplayBuffer<T> buffer;

        public ReplayState(ReplayBuffer<T> buffer) {
            this.buffer = buffer;
            lazySet(EMPTY);
        }

        @Override // rx.functions.Action1
        public void call(Subscriber<? super T> t) {
            ReplayProducer<T> rp = new ReplayProducer<>(t, this);
            t.add(rp);
            t.setProducer(rp);
            if (add(rp) && rp.isUnsubscribed()) {
                remove(rp);
            } else {
                this.buffer.drain(rp);
            }
        }

        boolean add(ReplayProducer<T> rp) {
            ReplayProducer<T>[] a;
            ReplayProducer<T>[] b;
            do {
                a = get();
                if (a == TERMINATED) {
                    return false;
                }
                int n = a.length;
                b = new ReplayProducer[n + 1];
                System.arraycopy(a, 0, b, 0, n);
                b[n] = rp;
            } while (!compareAndSet(a, b));
            return true;
        }

        void remove(ReplayProducer<T> rp) {
            ReplayProducer<T>[] a;
            ReplayProducer<T>[] b;
            do {
                a = get();
                if (a != TERMINATED && a != EMPTY) {
                    int n = a.length;
                    int j = -1;
                    int i = 0;
                    while (true) {
                        if (i >= n) {
                            break;
                        }
                        if (a[i] != rp) {
                            i++;
                        } else {
                            j = i;
                            break;
                        }
                    }
                    if (j >= 0) {
                        if (n == 1) {
                            b = EMPTY;
                        } else {
                            b = new ReplayProducer[n - 1];
                            System.arraycopy(a, 0, b, 0, j);
                            System.arraycopy(a, j + 1, b, j, (n - j) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(a, b));
        }

        @Override // rx.Observer
        public void onNext(T t) {
            ReplayBuffer<T> b = this.buffer;
            b.next(t);
            for (ReplayProducer<T> rp : get()) {
                b.drain(rp);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) throws Throwable {
            ReplayBuffer<T> b = this.buffer;
            b.error(e);
            List<Throwable> errors = null;
            for (ReplayProducer<T> rp : getAndSet(TERMINATED)) {
                try {
                    b.drain(rp);
                } catch (Throwable ex) {
                    if (errors == null) {
                        errors = new ArrayList<>();
                    }
                    errors.add(ex);
                }
            }
            Exceptions.throwIfAny(errors);
        }

        @Override // rx.Observer
        public void onCompleted() {
            ReplayBuffer<T> b = this.buffer;
            b.complete();
            for (ReplayProducer<T> rp : getAndSet(TERMINATED)) {
                b.drain(rp);
            }
        }

        boolean isTerminated() {
            return get() == TERMINATED;
        }
    }

    static final class ReplayUnboundedBuffer<T> implements ReplayBuffer<T> {
        final int capacity;
        volatile boolean done;
        Throwable error;
        final Object[] head;
        volatile int size;
        Object[] tail;
        int tailIndex;

        public ReplayUnboundedBuffer(int capacity) {
            this.capacity = capacity;
            Object[] objArr = new Object[capacity + 1];
            this.head = objArr;
            this.tail = objArr;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T t) {
            if (!this.done) {
                int i = this.tailIndex;
                Object[] a = this.tail;
                if (i == a.length - 1) {
                    Object[] b = new Object[a.length];
                    b[0] = t;
                    this.tailIndex = 1;
                    a[i] = b;
                    this.tail = b;
                } else {
                    a[i] = t;
                    this.tailIndex = i + 1;
                }
                this.size++;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable e) {
            if (this.done) {
                RxJavaHooks.onError(e);
            } else {
                this.error = e;
                this.done = true;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            this.done = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void drain(ReplayProducer<T> rp) {
            if (rp.getAndIncrement() == 0) {
                int missed = 1;
                Subscriber<? super T> a = rp.actual;
                int n = this.capacity;
                do {
                    long r = rp.requested.get();
                    long e = 0;
                    Object[] node = (Object[]) rp.node;
                    if (node == null) {
                        node = this.head;
                    }
                    int tailIndex = rp.tailIndex;
                    int index = rp.index;
                    while (e != r) {
                        if (a.isUnsubscribed()) {
                            rp.node = null;
                            return;
                        }
                        boolean d = this.done;
                        boolean empty = index == this.size;
                        if (d && empty) {
                            rp.node = null;
                            Throwable ex = this.error;
                            if (ex != null) {
                                a.onError(ex);
                                return;
                            } else {
                                a.onCompleted();
                                return;
                            }
                        }
                        if (empty) {
                            break;
                        }
                        if (tailIndex == n) {
                            node = (Object[]) node[tailIndex];
                            tailIndex = 0;
                        }
                        a.onNext(node[tailIndex]);
                        e++;
                        tailIndex++;
                        index++;
                    }
                    if (e == r) {
                        if (a.isUnsubscribed()) {
                            rp.node = null;
                            return;
                        }
                        boolean d2 = this.done;
                        boolean empty2 = index == this.size;
                        if (d2 && empty2) {
                            rp.node = null;
                            Throwable ex2 = this.error;
                            if (ex2 != null) {
                                a.onError(ex2);
                                return;
                            } else {
                                a.onCompleted();
                                return;
                            }
                        }
                    }
                    if (e != 0 && r != Long.MAX_VALUE) {
                        BackpressureUtils.produced(rp.requested, e);
                    }
                    rp.index = index;
                    rp.tailIndex = tailIndex;
                    rp.node = node;
                    missed = rp.addAndGet(-missed);
                } while (missed != 0);
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.done;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.error;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            int i = this.size;
            if (i == 0) {
                return null;
            }
            Object[] objArr = this.head;
            int i2 = this.capacity;
            while (i >= i2) {
                objArr = (Object[]) objArr[i2];
                i -= i2;
            }
            return (T) objArr[i - 1];
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            return this.size;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return this.size == 0;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            int i = this.size;
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            Object[] objArr = this.head;
            int i2 = this.capacity;
            int i3 = 0;
            while (i3 + i2 < i) {
                System.arraycopy(objArr, 0, tArr, i3, i2);
                i3 += i2;
                objArr = objArr[i2];
            }
            System.arraycopy(objArr, 0, tArr, i3, i - i3);
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }
    }

    static final class ReplaySizeBoundBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile Node<T> head;
        final int limit;
        int size;
        Node<T> tail;

        public ReplaySizeBoundBuffer(int limit) {
            this.limit = limit;
            Node<T> n = new Node<>(null);
            this.tail = n;
            this.head = n;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T value) {
            Node<T> n = new Node<>(value);
            this.tail.set(n);
            this.tail = n;
            int s = this.size;
            if (s == this.limit) {
                this.head = this.head.get();
            } else {
                this.size = s + 1;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable ex) {
            this.error = ex;
            this.done = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            this.done = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void drain(ReplayProducer<T> replayProducer) {
            if (replayProducer.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replayProducer.actual;
                int iAddAndGet = 1;
                do {
                    long j = replayProducer.requested.get();
                    long j2 = 0;
                    Node<T> node = (Node) replayProducer.node;
                    if (node == null) {
                        node = this.head;
                    }
                    while (j2 != j) {
                        if (subscriber.isUnsubscribed()) {
                            replayProducer.node = null;
                            return;
                        }
                        boolean z = this.done;
                        Node<T> node2 = node.get();
                        boolean z2 = node2 == null;
                        if (z && z2) {
                            replayProducer.node = null;
                            Throwable th = this.error;
                            if (th != null) {
                                subscriber.onError(th);
                                return;
                            } else {
                                subscriber.onCompleted();
                                return;
                            }
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(node2.value);
                        j2++;
                        node = node2;
                    }
                    if (j2 == j) {
                        if (subscriber.isUnsubscribed()) {
                            replayProducer.node = null;
                            return;
                        }
                        boolean z3 = this.done;
                        boolean z4 = node.get() == null;
                        if (z3 && z4) {
                            replayProducer.node = null;
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                subscriber.onError(th2);
                                return;
                            } else {
                                subscriber.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        BackpressureUtils.produced(replayProducer.requested, j2);
                    }
                    replayProducer.node = node;
                    iAddAndGet = replayProducer.addAndGet(-iAddAndGet);
                } while (iAddAndGet != 0);
            }
        }

        static final class Node<T> extends AtomicReference<Node<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            final T value;

            public Node(T value) {
                this.value = value;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.done;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.error;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            Node<T> h = this.head;
            while (true) {
                Node<T> n = h.get();
                if (n != null) {
                    h = n;
                } else {
                    return h.value;
                }
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            int s = 0;
            Node<T> n = this.head.get();
            while (n != null && s != Integer.MAX_VALUE) {
                n = n.get();
                s++;
            }
            return s;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return this.head.get() == null;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList();
            for (Node<T> node = this.head.get(); node != null; node = node.get()) {
                arrayList.add(node.value);
            }
            return (T[]) arrayList.toArray(tArr);
        }
    }

    static final class ReplaySizeAndTimeBoundBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile TimedNode<T> head;
        final int limit;
        final long maxAgeMillis;
        final Scheduler scheduler;
        int size;
        TimedNode<T> tail;

        public ReplaySizeAndTimeBoundBuffer(int limit, long maxAgeMillis, Scheduler scheduler) {
            this.limit = limit;
            TimedNode<T> n = new TimedNode<>(null, 0L);
            this.tail = n;
            this.head = n;
            this.maxAgeMillis = maxAgeMillis;
            this.scheduler = scheduler;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T value) {
            long now = this.scheduler.now();
            TimedNode<T> n = new TimedNode<>(value, now);
            this.tail.set(n);
            this.tail = n;
            long now2 = now - this.maxAgeMillis;
            int s = this.size;
            TimedNode<T> h0 = this.head;
            TimedNode<T> h = h0;
            if (s == this.limit) {
                h = h.get();
            } else {
                s++;
            }
            while (true) {
                TimedNode<T> n2 = h.get();
                if (n2 == null || n2.timestamp > now2) {
                    break;
                }
                h = n2;
                s--;
            }
            this.size = s;
            if (h != h0) {
                this.head = h;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable ex) {
            evictFinal();
            this.error = ex;
            this.done = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            evictFinal();
            this.done = true;
        }

        void evictFinal() {
            long now = this.scheduler.now() - this.maxAgeMillis;
            TimedNode<T> h0 = this.head;
            TimedNode<T> h = h0;
            while (true) {
                TimedNode<T> n = h.get();
                if (n == null || n.timestamp > now) {
                    break;
                } else {
                    h = n;
                }
            }
            if (h0 != h) {
                this.head = h;
            }
        }

        TimedNode<T> latestHead() {
            long now = this.scheduler.now() - this.maxAgeMillis;
            TimedNode<T> h = this.head;
            while (true) {
                TimedNode<T> n = h.get();
                if (n == null || n.timestamp > now) {
                    break;
                }
                h = n;
            }
            return h;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void drain(ReplayProducer<T> replayProducer) {
            if (replayProducer.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replayProducer.actual;
                int iAddAndGet = 1;
                do {
                    long j = replayProducer.requested.get();
                    long j2 = 0;
                    TimedNode<T> timedNodeLatestHead = (TimedNode) replayProducer.node;
                    if (timedNodeLatestHead == null) {
                        timedNodeLatestHead = latestHead();
                    }
                    while (j2 != j) {
                        if (subscriber.isUnsubscribed()) {
                            replayProducer.node = null;
                            return;
                        }
                        boolean z = this.done;
                        TimedNode<T> timedNode = timedNodeLatestHead.get();
                        boolean z2 = timedNode == null;
                        if (z && z2) {
                            replayProducer.node = null;
                            Throwable th = this.error;
                            if (th != null) {
                                subscriber.onError(th);
                                return;
                            } else {
                                subscriber.onCompleted();
                                return;
                            }
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(timedNode.value);
                        j2++;
                        timedNodeLatestHead = timedNode;
                    }
                    if (j2 == j) {
                        if (subscriber.isUnsubscribed()) {
                            replayProducer.node = null;
                            return;
                        }
                        boolean z3 = this.done;
                        boolean z4 = timedNodeLatestHead.get() == null;
                        if (z3 && z4) {
                            replayProducer.node = null;
                            Throwable th2 = this.error;
                            if (th2 != null) {
                                subscriber.onError(th2);
                                return;
                            } else {
                                subscriber.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        BackpressureUtils.produced(replayProducer.requested, j2);
                    }
                    replayProducer.node = timedNodeLatestHead;
                    iAddAndGet = replayProducer.addAndGet(-iAddAndGet);
                } while (iAddAndGet != 0);
            }
        }

        static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            final long timestamp;
            final T value;

            public TimedNode(T value, long timestamp) {
                this.value = value;
                this.timestamp = timestamp;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.done;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.error;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            TimedNode<T> h = latestHead();
            while (true) {
                TimedNode<T> n = h.get();
                if (n != null) {
                    h = n;
                } else {
                    return h.value;
                }
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            int s = 0;
            TimedNode<T> n = latestHead().get();
            while (n != null && s != Integer.MAX_VALUE) {
                n = n.get();
                s++;
            }
            return s;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return latestHead().get() == null;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList();
            for (TimedNode<T> timedNode = latestHead().get(); timedNode != null; timedNode = timedNode.get()) {
                arrayList.add(timedNode.value);
            }
            return (T[]) arrayList.toArray(tArr);
        }
    }

    static final class ReplayProducer<T> extends AtomicInteger implements Producer, Subscription {
        private static final long serialVersionUID = -5006209596735204567L;
        final Subscriber<? super T> actual;
        int index;
        Object node;
        final AtomicLong requested = new AtomicLong();
        final ReplayState<T> state;
        int tailIndex;

        public ReplayProducer(Subscriber<? super T> actual, ReplayState<T> state) {
            this.actual = actual;
            this.state = state;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.state.remove(this);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.actual.isUnsubscribed();
        }

        @Override // rx.Producer
        public void request(long n) {
            if (n > 0) {
                BackpressureUtils.getAndAddRequest(this.requested, n);
                this.state.buffer.drain(this);
            } else if (n < 0) {
                throw new IllegalArgumentException("n >= required but it was " + n);
            }
        }
    }
}
