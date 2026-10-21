package com.vungle.publisher;

import com.vungle.publisher.ct;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cv implements Factory<ct.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ct.a> b;

    static {
        a = !cv.class.desiredAssertionStatus();
    }

    public cv(MembersInjector<ct.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ct.a get() {
        return (ct.a) MembersInjectors.injectMembers(this.b, new ct.a());
    }

    public static Factory<ct.a> a(MembersInjector<ct.a> membersInjector) {
        return new cv(membersInjector);
    }
}
