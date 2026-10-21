package com.vungle.publisher;

import com.vungle.publisher.tw;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tz implements Factory<tw.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<tw.a> b;

    static {
        a = !tz.class.desiredAssertionStatus();
    }

    public tz(MembersInjector<tw.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public tw.a get() {
        return (tw.a) MembersInjectors.injectMembers(this.b, new tw.a());
    }

    public static Factory<tw.a> a(MembersInjector<tw.a> membersInjector) {
        return new tz(membersInjector);
    }
}
