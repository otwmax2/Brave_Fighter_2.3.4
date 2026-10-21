package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cg implements Factory<cf> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<cf> b;

    static {
        a = !cg.class.desiredAssertionStatus();
    }

    public cg(MembersInjector<cf> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public cf get() {
        return (cf) MembersInjectors.injectMembers(this.b, new cf());
    }

    public static Factory<cf> a(MembersInjector<cf> membersInjector) {
        return new cg(membersInjector);
    }
}
