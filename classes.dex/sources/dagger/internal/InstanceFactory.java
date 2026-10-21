package dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class InstanceFactory<T> implements Factory<T> {
    private final T instance;

    public static <T> Factory<T> create(T instance) {
        if (instance == null) {
            throw new NullPointerException();
        }
        return new InstanceFactory(instance);
    }

    private InstanceFactory(T instance) {
        this.instance = instance;
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.instance;
    }
}
