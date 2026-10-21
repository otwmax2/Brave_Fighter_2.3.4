package com.vungle.publisher;

import com.vungle.publisher.gw;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class gy implements Factory<gw.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<gw.a> b;

    static {
        a = !gy.class.desiredAssertionStatus();
    }

    public gy(MembersInjector<gw.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public gw.a get() {
        return (gw.a) MembersInjectors.injectMembers(this.b, new gw.a());
    }

    public static Factory<gw.a> a(MembersInjector<gw.a> membersInjector) {
        return new gy(membersInjector);
    }
}
