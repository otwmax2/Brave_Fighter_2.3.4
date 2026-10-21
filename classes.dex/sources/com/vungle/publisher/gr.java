package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class gr implements Factory<gq> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<gq> b;

    static {
        a = !gr.class.desiredAssertionStatus();
    }

    public gr(MembersInjector<gq> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public gq get() {
        return (gq) MembersInjectors.injectMembers(this.b, new gq());
    }

    public static Factory<gq> a(MembersInjector<gq> membersInjector) {
        return new gr(membersInjector);
    }
}
