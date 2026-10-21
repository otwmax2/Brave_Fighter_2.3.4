package com.vungle.publisher;

import com.vungle.publisher.c;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Factory<c.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<c.a> b;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public i(MembersInjector<c.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c.a get() {
        return (c.a) MembersInjectors.injectMembers(this.b, new c.a());
    }

    public static Factory<c.a> a(MembersInjector<c.a> membersInjector) {
        return new i(membersInjector);
    }
}
