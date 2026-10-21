package com.vungle.publisher;

import com.vungle.publisher.vu;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class vw implements Factory<vu.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<vu.a> b;

    static {
        a = !vw.class.desiredAssertionStatus();
    }

    public vw(MembersInjector<vu.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public vu.a get() {
        return (vu.a) MembersInjectors.injectMembers(this.b, new vu.a());
    }

    public static Factory<vu.a> a(MembersInjector<vu.a> membersInjector) {
        return new vw(membersInjector);
    }
}
