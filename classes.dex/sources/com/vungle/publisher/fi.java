package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fi implements Factory<fh> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<fh> b;

    static {
        a = !fi.class.desiredAssertionStatus();
    }

    public fi(MembersInjector<fh> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public fh get() {
        return (fh) MembersInjectors.injectMembers(this.b, new fh());
    }

    public static Factory<fh> a(MembersInjector<fh> membersInjector) {
        return new fi(membersInjector);
    }
}
