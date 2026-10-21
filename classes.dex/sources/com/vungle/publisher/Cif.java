package com.vungle.publisher;

import com.vungle.publisher.id;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: renamed from: com.vungle.publisher.if, reason: invalid class name */
/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class Cif implements Factory<id.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<id.a> b;

    static {
        a = !Cif.class.desiredAssertionStatus();
    }

    public Cif(MembersInjector<id.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public id.a get() {
        return (id.a) MembersInjectors.injectMembers(this.b, new id.a());
    }

    public static Factory<id.a> a(MembersInjector<id.a> membersInjector) {
        return new Cif(membersInjector);
    }
}
