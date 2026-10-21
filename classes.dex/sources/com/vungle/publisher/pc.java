package com.vungle.publisher;

import com.vungle.publisher.oy;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class pc implements Factory<oy.a.C0171a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<oy.a.C0171a> b;

    static {
        a = !pc.class.desiredAssertionStatus();
    }

    public pc(MembersInjector<oy.a.C0171a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public oy.a.C0171a get() {
        return (oy.a.C0171a) MembersInjectors.injectMembers(this.b, new oy.a.C0171a());
    }

    public static Factory<oy.a.C0171a> a(MembersInjector<oy.a.C0171a> membersInjector) {
        return new pc(membersInjector);
    }
}
