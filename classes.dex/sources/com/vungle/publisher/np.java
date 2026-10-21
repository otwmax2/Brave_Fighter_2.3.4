package com.vungle.publisher;

import com.vungle.publisher.nk;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class np implements Factory<nk.a.C0169a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<nk.a.C0169a> b;

    static {
        a = !np.class.desiredAssertionStatus();
    }

    public np(MembersInjector<nk.a.C0169a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public nk.a.C0169a get() {
        return (nk.a.C0169a) MembersInjectors.injectMembers(this.b, new nk.a.C0169a());
    }

    public static Factory<nk.a.C0169a> a(MembersInjector<nk.a.C0169a> membersInjector) {
        return new np(membersInjector);
    }
}
