package com.vungle.publisher;

import com.vungle.publisher.oy;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class pb implements Factory<oy.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<oy.a> b;

    static {
        a = !pb.class.desiredAssertionStatus();
    }

    public pb(MembersInjector<oy.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public oy.a get() {
        return (oy.a) MembersInjectors.injectMembers(this.b, new oy.a());
    }

    public static Factory<oy.a> a(MembersInjector<oy.a> membersInjector) {
        return new pb(membersInjector);
    }
}
