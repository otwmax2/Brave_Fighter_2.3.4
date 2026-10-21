package com.vungle.publisher;

import com.vungle.publisher.yn;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class yp implements Factory<yn.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<yn.a> b;

    static {
        a = !yp.class.desiredAssertionStatus();
    }

    public yp(MembersInjector<yn.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public yn.a get() {
        return (yn.a) MembersInjectors.injectMembers(this.b, new yn.a());
    }

    public static Factory<yn.a> a(MembersInjector<yn.a> membersInjector) {
        return new yp(membersInjector);
    }
}
