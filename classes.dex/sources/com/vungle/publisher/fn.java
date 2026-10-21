package com.vungle.publisher;

import com.vungle.publisher.fg;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fn implements Factory<fg.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<fg.a> b;

    static {
        a = !fn.class.desiredAssertionStatus();
    }

    public fn(MembersInjector<fg.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public fg.a get() {
        return (fg.a) MembersInjectors.injectMembers(this.b, new fg.a());
    }

    public static Factory<fg.a> a(MembersInjector<fg.a> membersInjector) {
        return new fn(membersInjector);
    }
}
