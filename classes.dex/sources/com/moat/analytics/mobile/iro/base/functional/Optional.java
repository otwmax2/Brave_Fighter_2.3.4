package com.moat.analytics.mobile.iro.base.functional;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class Optional<T> {

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static final Optional<?> f253 = new Optional<>();

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private final T f254;

    private Optional() {
        this.f254 = null;
    }

    public static <T> Optional<T> empty() {
        return (Optional<T>) f253;
    }

    private Optional(T t) {
        if (t == null) {
            throw new NullPointerException("Optional of null value.");
        }
        this.f254 = t;
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : of(t);
    }

    public final T get() {
        if (this.f254 == null) {
            throw new NoSuchElementException("No value present");
        }
        return this.f254;
    }

    public final boolean isPresent() {
        return this.f254 != null;
    }

    public final T orElse(T t) {
        return this.f254 != null ? this.f254 : t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Optional)) {
            return false;
        }
        Optional optional = (Optional) obj;
        if (this.f254 != optional.f254) {
            return (this.f254 == null || optional.f254 == null || !this.f254.equals(optional.f254)) ? false : true;
        }
        return true;
    }

    public final int hashCode() {
        if (this.f254 == null) {
            return 0;
        }
        return this.f254.hashCode();
    }

    public final String toString() {
        return this.f254 != null ? String.format("Optional[%s]", this.f254) : "Optional.empty";
    }
}
