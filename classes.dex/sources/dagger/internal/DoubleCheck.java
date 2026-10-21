package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Object UNINITIALIZED;
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    static {
        $assertionsDisabled = !DoubleCheck.class.desiredAssertionStatus();
        UNINITIALIZED = new Object();
    }

    private DoubleCheck(Provider<T> provider) {
        if (!$assertionsDisabled && provider == null) {
            throw new AssertionError();
        }
        this.provider = provider;
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.instance;
        if (t == UNINITIALIZED) {
            synchronized (this) {
                t = (T) this.instance;
                if (t == UNINITIALIZED) {
                    t = this.provider.get();
                    Object obj = this.instance;
                    if (obj != UNINITIALIZED && obj != t) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + t);
                    }
                    this.instance = t;
                    this.provider = null;
                }
            }
        }
        return t;
    }

    public static <T> Provider<T> provider(Provider<T> delegate) {
        Preconditions.checkNotNull(delegate);
        return delegate instanceof DoubleCheck ? delegate : new DoubleCheck<>(delegate);
    }

    public static <T> Lazy<T> lazy(Provider<T> provider) {
        return provider instanceof Lazy ? (Lazy) provider : new DoubleCheck((Provider) Preconditions.checkNotNull(provider));
    }
}
