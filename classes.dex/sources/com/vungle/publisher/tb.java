package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tb implements Factory<ta> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ta> b;

    static {
        a = !tb.class.desiredAssertionStatus();
    }

    public tb(MembersInjector<ta> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ta get() {
        return (ta) MembersInjectors.injectMembers(this.b, new ta());
    }

    public static Factory<ta> a(MembersInjector<ta> membersInjector) {
        return new tb(membersInjector);
    }
}
