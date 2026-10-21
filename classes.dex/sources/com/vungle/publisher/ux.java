package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ux implements Factory<uw> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<uw> b;

    static {
        a = !ux.class.desiredAssertionStatus();
    }

    public ux(MembersInjector<uw> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public uw get() {
        return (uw) MembersInjectors.injectMembers(this.b, new uw());
    }

    public static Factory<uw> a(MembersInjector<uw> membersInjector) {
        return new ux(membersInjector);
    }
}
