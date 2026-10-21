package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ri implements Factory<rg> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<rg> b;

    static {
        a = !ri.class.desiredAssertionStatus();
    }

    public ri(MembersInjector<rg> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public rg get() {
        return (rg) MembersInjectors.injectMembers(this.b, new rg());
    }

    public static Factory<rg> a(MembersInjector<rg> membersInjector) {
        return new ri(membersInjector);
    }
}
