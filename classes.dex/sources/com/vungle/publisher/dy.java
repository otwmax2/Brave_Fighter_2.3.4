package com.vungle.publisher;

import com.vungle.publisher.dw;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dy implements Factory<dw.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<dw.a> b;

    static {
        a = !dy.class.desiredAssertionStatus();
    }

    public dy(MembersInjector<dw.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public dw.a get() {
        return (dw.a) MembersInjectors.injectMembers(this.b, new dw.a());
    }

    public static Factory<dw.a> a(MembersInjector<dw.a> membersInjector) {
        return new dy(membersInjector);
    }
}
