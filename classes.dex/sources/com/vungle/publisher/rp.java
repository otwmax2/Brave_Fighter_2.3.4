package com.vungle.publisher;

import com.vungle.publisher.ro;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class rp implements Factory<ro.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ro.a> b;

    static {
        a = !rp.class.desiredAssertionStatus();
    }

    public rp(MembersInjector<ro.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ro.a get() {
        return (ro.a) MembersInjectors.injectMembers(this.b, new ro.a());
    }

    public static Factory<ro.a> a(MembersInjector<ro.a> membersInjector) {
        return new rp(membersInjector);
    }
}
