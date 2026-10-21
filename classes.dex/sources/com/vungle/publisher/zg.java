package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class zg implements Factory<zf> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<zf> b;

    static {
        a = !zg.class.desiredAssertionStatus();
    }

    public zg(MembersInjector<zf> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public zf get() {
        return (zf) MembersInjectors.injectMembers(this.b, new zf());
    }

    public static Factory<zf> a(MembersInjector<zf> membersInjector) {
        return new zg(membersInjector);
    }
}
