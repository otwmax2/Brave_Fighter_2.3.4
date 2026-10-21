package com.vungle.publisher;

import com.vungle.publisher.ns;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class nx implements Factory<ns.a.C0170a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ns.a.C0170a> b;

    static {
        a = !nx.class.desiredAssertionStatus();
    }

    public nx(MembersInjector<ns.a.C0170a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ns.a.C0170a get() {
        return (ns.a.C0170a) MembersInjectors.injectMembers(this.b, new ns.a.C0170a());
    }

    public static Factory<ns.a.C0170a> a(MembersInjector<ns.a.C0170a> membersInjector) {
        return new nx(membersInjector);
    }
}
