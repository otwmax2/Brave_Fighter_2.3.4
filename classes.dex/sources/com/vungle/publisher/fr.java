package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fr implements Factory<fq> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<fq> b;

    static {
        a = !fr.class.desiredAssertionStatus();
    }

    public fr(MembersInjector<fq> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public fq get() {
        return (fq) MembersInjectors.injectMembers(this.b, new fq());
    }

    public static Factory<fq> a(MembersInjector<fq> membersInjector) {
        return new fr(membersInjector);
    }
}
