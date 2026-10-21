package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fc implements Factory<fb> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<fb> b;

    static {
        a = !fc.class.desiredAssertionStatus();
    }

    public fc(MembersInjector<fb> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public fb get() {
        return (fb) MembersInjectors.injectMembers(this.b, new fb());
    }

    public static Factory<fb> a(MembersInjector<fb> membersInjector) {
        return new fc(membersInjector);
    }
}
