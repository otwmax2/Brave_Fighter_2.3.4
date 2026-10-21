package com.vungle.publisher;

import com.vungle.publisher.eb;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ee implements Factory<eb.c> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<eb.c> b;

    static {
        a = !ee.class.desiredAssertionStatus();
    }

    public ee(MembersInjector<eb.c> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public eb.c get() {
        return (eb.c) MembersInjectors.injectMembers(this.b, new eb.c());
    }

    public static Factory<eb.c> a(MembersInjector<eb.c> membersInjector) {
        return new ee(membersInjector);
    }
}
