package com.vungle.publisher;

import com.vungle.publisher.bd;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class be implements Factory<bd.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<bd.a> b;

    static {
        a = !be.class.desiredAssertionStatus();
    }

    public be(MembersInjector<bd.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public bd.a get() {
        return (bd.a) MembersInjectors.injectMembers(this.b, new bd.a());
    }

    public static Factory<bd.a> a(MembersInjector<bd.a> membersInjector) {
        return new be(membersInjector);
    }
}
