package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ie implements Factory<id> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<id> b;

    static {
        a = !ie.class.desiredAssertionStatus();
    }

    public ie(MembersInjector<id> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public id get() {
        return (id) MembersInjectors.injectMembers(this.b, new id());
    }

    public static Factory<id> a(MembersInjector<id> membersInjector) {
        return new ie(membersInjector);
    }
}
