package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tf implements Factory<te> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<te> b;

    static {
        a = !tf.class.desiredAssertionStatus();
    }

    public tf(MembersInjector<te> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public te get() {
        return (te) MembersInjectors.injectMembers(this.b, new te());
    }

    public static Factory<te> a(MembersInjector<te> membersInjector) {
        return new tf(membersInjector);
    }
}
