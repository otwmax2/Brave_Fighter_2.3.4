package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class jz implements Factory<jy> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<jy> b;

    static {
        a = !jz.class.desiredAssertionStatus();
    }

    public jz(MembersInjector<jy> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public jy get() {
        return (jy) MembersInjectors.injectMembers(this.b, new jy());
    }

    public static Factory<jy> a(MembersInjector<jy> membersInjector) {
        return new jz(membersInjector);
    }
}
