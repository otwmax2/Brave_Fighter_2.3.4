package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class en implements Factory<em> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<em> b;

    static {
        a = !en.class.desiredAssertionStatus();
    }

    public en(MembersInjector<em> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public em get() {
        return (em) MembersInjectors.injectMembers(this.b, new em());
    }

    public static Factory<em> a(MembersInjector<em> membersInjector) {
        return new en(membersInjector);
    }
}
