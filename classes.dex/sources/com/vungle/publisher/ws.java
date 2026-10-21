package com.vungle.publisher;

import com.vungle.publisher.wr;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ws implements Factory<wr.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<wr.a> b;

    static {
        a = !ws.class.desiredAssertionStatus();
    }

    public ws(MembersInjector<wr.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public wr.a get() {
        return (wr.a) MembersInjectors.injectMembers(this.b, new wr.a());
    }

    public static Factory<wr.a> a(MembersInjector<wr.a> membersInjector) {
        return new ws(membersInjector);
    }
}
