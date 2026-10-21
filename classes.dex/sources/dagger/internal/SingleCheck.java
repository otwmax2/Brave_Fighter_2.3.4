package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Object UNINITIALIZED;
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    static {
        $assertionsDisabled = !SingleCheck.class.desiredAssertionStatus();
        UNINITIALIZED = new Object();
    }

    private SingleCheck(Provider<T> provider) {
        if (!$assertionsDisabled && provider == null) {
            throw new AssertionError();
        }
        this.provider = provider;
    }

    @Override // javax.inject.Provider
    public T get() {
        Provider<T> provider = this.provider;
        if (this.instance == UNINITIALIZED) {
            this.instance = provider.get();
            this.provider = null;
        }
        return (T) this.instance;
    }

    public static <T> Provider<T> provider(Provider<T> provider) {
        return ((provider instanceof SingleCheck) || (provider instanceof DoubleCheck)) ? provider : new SingleCheck<>((Provider) Preconditions.checkNotNull(provider));
    }
}
