package com.vungle.publisher;

import com.vungle.publisher.em;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class eo implements Factory<em.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<em.a> b;

    static {
        a = !eo.class.desiredAssertionStatus();
    }

    public eo(MembersInjector<em.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public em.a get() {
        return (em.a) MembersInjectors.injectMembers(this.b, new em.a());
    }

    public static Factory<em.a> a(MembersInjector<em.a> membersInjector) {
        return new eo(membersInjector);
    }
}
