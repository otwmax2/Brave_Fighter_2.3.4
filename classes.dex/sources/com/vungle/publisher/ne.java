package com.vungle.publisher;

import com.vungle.publisher.my;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ne implements Factory<my.b> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<my.b> b;

    static {
        a = !ne.class.desiredAssertionStatus();
    }

    public ne(MembersInjector<my.b> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public my.b get() {
        return (my.b) MembersInjectors.injectMembers(this.b, new my.b());
    }

    public static Factory<my.b> a(MembersInjector<my.b> membersInjector) {
        return new ne(membersInjector);
    }
}
