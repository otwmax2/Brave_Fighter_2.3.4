package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class va implements Factory<uz> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<uz> b;

    static {
        a = !va.class.desiredAssertionStatus();
    }

    public va(MembersInjector<uz> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public uz get() {
        return (uz) MembersInjectors.injectMembers(this.b, new uz());
    }

    public static Factory<uz> a(MembersInjector<uz> membersInjector) {
        return new va(membersInjector);
    }
}
