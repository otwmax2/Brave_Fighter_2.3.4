package com.vungle.publisher;

import com.vungle.publisher.wm;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wn implements Factory<wm.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<wm.a> b;

    static {
        a = !wn.class.desiredAssertionStatus();
    }

    public wn(MembersInjector<wm.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public wm.a get() {
        return (wm.a) MembersInjectors.injectMembers(this.b, new wm.a());
    }

    public static Factory<wm.a> a(MembersInjector<wm.a> membersInjector) {
        return new wn(membersInjector);
    }
}
