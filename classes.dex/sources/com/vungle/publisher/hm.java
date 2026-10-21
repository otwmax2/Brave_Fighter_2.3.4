package com.vungle.publisher;

import com.vungle.publisher.hk;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class hm implements Factory<hk.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<hk.a> b;

    static {
        a = !hm.class.desiredAssertionStatus();
    }

    public hm(MembersInjector<hk.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public hk.a get() {
        return (hk.a) MembersInjectors.injectMembers(this.b, new hk.a());
    }

    public static Factory<hk.a> a(MembersInjector<hk.a> membersInjector) {
        return new hm(membersInjector);
    }
}
