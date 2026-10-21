package com.vungle.publisher;

import com.vungle.publisher.wj;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wk implements Factory<wj.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<wj.a> b;

    static {
        a = !wk.class.desiredAssertionStatus();
    }

    public wk(MembersInjector<wj.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public wj.a get() {
        return (wj.a) MembersInjectors.injectMembers(this.b, new wj.a());
    }

    public static Factory<wj.a> a(MembersInjector<wj.a> membersInjector) {
        return new wk(membersInjector);
    }
}
