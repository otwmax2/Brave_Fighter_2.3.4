package com.vungle.publisher;

import com.vungle.publisher.ts;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tu implements Factory<ts.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ts.a> b;

    static {
        a = !tu.class.desiredAssertionStatus();
    }

    public tu(MembersInjector<ts.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ts.a get() {
        return (ts.a) MembersInjectors.injectMembers(this.b, new ts.a());
    }

    public static Factory<ts.a> a(MembersInjector<ts.a> membersInjector) {
        return new tu(membersInjector);
    }
}
