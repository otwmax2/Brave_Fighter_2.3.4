package com.vungle.publisher;

import com.vungle.publisher.ew;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ey implements Factory<ew.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ew.a> b;

    static {
        a = !ey.class.desiredAssertionStatus();
    }

    public ey(MembersInjector<ew.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ew.a get() {
        return (ew.a) MembersInjectors.injectMembers(this.b, new ew.a());
    }

    public static Factory<ew.a> a(MembersInjector<ew.a> membersInjector) {
        return new ey(membersInjector);
    }
}
