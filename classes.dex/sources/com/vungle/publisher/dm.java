package com.vungle.publisher;

import com.vungle.publisher.dk;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dm implements Factory<dk.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<dk.a> b;

    static {
        a = !dm.class.desiredAssertionStatus();
    }

    public dm(MembersInjector<dk.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public dk.a get() {
        return (dk.a) MembersInjectors.injectMembers(this.b, new dk.a());
    }

    public static Factory<dk.a> a(MembersInjector<dk.a> membersInjector) {
        return new dm(membersInjector);
    }
}
