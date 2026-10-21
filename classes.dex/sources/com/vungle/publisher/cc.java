package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cc implements Factory<cb> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<cb> b;

    static {
        a = !cc.class.desiredAssertionStatus();
    }

    public cc(MembersInjector<cb> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public cb get() {
        return (cb) MembersInjectors.injectMembers(this.b, new cb());
    }

    public static Factory<cb> a(MembersInjector<cb> membersInjector) {
        return new cc(membersInjector);
    }
}
