package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cu implements Factory<ct> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ct> b;

    static {
        a = !cu.class.desiredAssertionStatus();
    }

    public cu(MembersInjector<ct> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ct get() {
        return (ct) MembersInjectors.injectMembers(this.b, new ct());
    }

    public static Factory<ct> a(MembersInjector<ct> membersInjector) {
        return new cu(membersInjector);
    }
}
