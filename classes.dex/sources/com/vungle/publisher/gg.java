package com.vungle.publisher;

import com.vungle.publisher.ge;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class gg implements Factory<ge.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ge.a> b;

    static {
        a = !gg.class.desiredAssertionStatus();
    }

    public gg(MembersInjector<ge.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ge.a get() {
        return (ge.a) MembersInjectors.injectMembers(this.b, new ge.a());
    }

    public static Factory<ge.a> a(MembersInjector<ge.a> membersInjector) {
        return new gg(membersInjector);
    }
}
