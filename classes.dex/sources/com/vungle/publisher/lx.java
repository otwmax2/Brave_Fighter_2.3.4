package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class lx implements Factory<lw> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<lw> b;

    static {
        a = !lx.class.desiredAssertionStatus();
    }

    public lx(MembersInjector<lw> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public lw get() {
        return (lw) MembersInjectors.injectMembers(this.b, new lw());
    }

    public static Factory<lw> a(MembersInjector<lw> membersInjector) {
        return new lx(membersInjector);
    }
}
