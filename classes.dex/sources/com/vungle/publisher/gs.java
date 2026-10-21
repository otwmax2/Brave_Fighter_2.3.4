package com.vungle.publisher;

import com.vungle.publisher.gq;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class gs implements Factory<gq.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<gq.a> b;

    static {
        a = !gs.class.desiredAssertionStatus();
    }

    public gs(MembersInjector<gq.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public gq.a get() {
        return (gq.a) MembersInjectors.injectMembers(this.b, new gq.a());
    }

    public static Factory<gq.a> a(MembersInjector<gq.a> membersInjector) {
        return new gs(membersInjector);
    }
}
