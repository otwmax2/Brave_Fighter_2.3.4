package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class sa implements Factory<rz> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<rz> b;

    static {
        a = !sa.class.desiredAssertionStatus();
    }

    public sa(MembersInjector<rz> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public rz get() {
        return (rz) MembersInjectors.injectMembers(this.b, new rz());
    }

    public static Factory<rz> a(MembersInjector<rz> membersInjector) {
        return new sa(membersInjector);
    }
}
