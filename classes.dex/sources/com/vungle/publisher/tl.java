package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tl implements Factory<tj> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<tj> b;

    static {
        a = !tl.class.desiredAssertionStatus();
    }

    public tl(MembersInjector<tj> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public tj get() {
        return (tj) MembersInjectors.injectMembers(this.b, new tj());
    }

    public static Factory<tj> a(MembersInjector<tj> membersInjector) {
        return new tl(membersInjector);
    }
}
