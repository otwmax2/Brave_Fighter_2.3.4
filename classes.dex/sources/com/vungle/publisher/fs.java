package com.vungle.publisher;

import com.vungle.publisher.fq;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fs implements Factory<fq.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<fq.a> b;

    static {
        a = !fs.class.desiredAssertionStatus();
    }

    public fs(MembersInjector<fq.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public fq.a get() {
        return (fq.a) MembersInjectors.injectMembers(this.b, new fq.a());
    }

    public static Factory<fq.a> a(MembersInjector<fq.a> membersInjector) {
        return new fs(membersInjector);
    }
}
