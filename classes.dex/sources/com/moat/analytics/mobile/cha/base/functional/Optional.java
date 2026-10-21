package com.moat.analytics.mobile.cha.base.functional;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class Optional<T> {

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static final Optional<?> f35 = new Optional<>();

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private final T f36;

    private Optional() {
        this.f36 = null;
    }

    public static <T> Optional<T> empty() {
        return (Optional<T>) f35;
    }

    private Optional(T t) {
        if (t == null) {
            throw new NullPointerException("Optional of null value.");
        }
        this.f36 = t;
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : of(t);
    }

    public final T get() {
        if (this.f36 == null) {
            throw new NoSuchElementException("No value present");
        }
        return this.f36;
    }

    public final boolean isPresent() {
        return this.f36 != null;
    }

    public final T orElse(T t) {
        return this.f36 != null ? this.f36 : t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Optional)) {
            return false;
        }
        Optional optional = (Optional) obj;
        if (this.f36 != optional.f36) {
            return (this.f36 == null || optional.f36 == null || !this.f36.equals(optional.f36)) ? false : true;
        }
        return true;
    }

    public final int hashCode() {
        if (this.f36 == null) {
            return 0;
        }
        return this.f36.hashCode();
    }

    public final String toString() {
        return this.f36 != null ? String.format("Optional[%s]", this.f36) : "Optional.empty";
    }
}
