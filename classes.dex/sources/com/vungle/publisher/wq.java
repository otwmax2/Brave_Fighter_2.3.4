package com.vungle.publisher;

import com.vungle.publisher.wp;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wq implements Factory<wp.a.C0172a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<wp.a.C0172a> b;

    static {
        a = !wq.class.desiredAssertionStatus();
    }

    public wq(MembersInjector<wp.a.C0172a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public wp.a.C0172a get() {
        return (wp.a.C0172a) MembersInjectors.injectMembers(this.b, new wp.a.C0172a());
    }

    public static Factory<wp.a.C0172a> a(MembersInjector<wp.a.C0172a> membersInjector) {
        return new wq(membersInjector);
    }
}
