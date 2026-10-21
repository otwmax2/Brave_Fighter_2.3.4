package com.vungle.publisher;

import com.vungle.publisher.eb;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ec implements Factory<eb.b> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<eb.b> b;

    static {
        a = !ec.class.desiredAssertionStatus();
    }

    public ec(MembersInjector<eb.b> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public eb.b get() {
        return (eb.b) MembersInjectors.injectMembers(this.b, new eb.b());
    }

    public static Factory<eb.b> a(MembersInjector<eb.b> membersInjector) {
        return new ec(membersInjector);
    }
}
