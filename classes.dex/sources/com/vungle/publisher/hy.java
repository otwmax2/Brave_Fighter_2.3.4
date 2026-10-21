package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class hy implements Factory<hx> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<hx> b;

    static {
        a = !hy.class.desiredAssertionStatus();
    }

    public hy(MembersInjector<hx> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public hx get() {
        return (hx) MembersInjectors.injectMembers(this.b, new hx());
    }

    public static Factory<hx> a(MembersInjector<hx> membersInjector) {
        return new hy(membersInjector);
    }
}
