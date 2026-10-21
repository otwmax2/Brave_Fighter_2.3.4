package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class oc implements Factory<ob> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ob> b;

    static {
        a = !oc.class.desiredAssertionStatus();
    }

    public oc(MembersInjector<ob> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ob get() {
        return (ob) MembersInjectors.injectMembers(this.b, new ob());
    }

    public static Factory<ob> a(MembersInjector<ob> membersInjector) {
        return new oc(membersInjector);
    }
}
