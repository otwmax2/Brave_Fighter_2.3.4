package com.vungle.publisher;

import com.vungle.publisher.iz;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class jb implements Factory<iz.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<iz.a> b;

    static {
        a = !jb.class.desiredAssertionStatus();
    }

    public jb(MembersInjector<iz.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public iz.a get() {
        return (iz.a) MembersInjectors.injectMembers(this.b, new iz.a());
    }

    public static Factory<iz.a> a(MembersInjector<iz.a> membersInjector) {
        return new jb(membersInjector);
    }
}
