package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fv implements Factory<el> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<el> b;

    static {
        a = !fv.class.desiredAssertionStatus();
    }

    public fv(MembersInjector<el> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public el get() {
        return (el) MembersInjectors.injectMembers(this.b, new el());
    }

    public static Factory<el> a(MembersInjector<el> membersInjector) {
        return new fv(membersInjector);
    }
}
