package com.vungle.publisher;

import com.vungle.publisher.py;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class qc implements Factory<py.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<py.a> b;

    static {
        a = !qc.class.desiredAssertionStatus();
    }

    public qc(MembersInjector<py.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public py.a get() {
        return (py.a) MembersInjectors.injectMembers(this.b, new py.a());
    }

    public static Factory<py.a> a(MembersInjector<py.a> membersInjector) {
        return new qc(membersInjector);
    }
}
