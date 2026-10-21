package com.vungle.publisher;

import com.vungle.publisher.hx;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class hz implements Factory<hx.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<hx.a> b;

    static {
        a = !hz.class.desiredAssertionStatus();
    }

    public hz(MembersInjector<hx.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public hx.a get() {
        return (hx.a) MembersInjectors.injectMembers(this.b, new hx.a());
    }

    public static Factory<hx.a> a(MembersInjector<hx.a> membersInjector) {
        return new hz(membersInjector);
    }
}
