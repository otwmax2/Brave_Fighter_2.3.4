package com.vungle.publisher;

import com.vungle.publisher.jo;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class jq implements Factory<jo.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<jo.a> b;

    static {
        a = !jq.class.desiredAssertionStatus();
    }

    public jq(MembersInjector<jo.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public jo.a get() {
        return (jo.a) MembersInjectors.injectMembers(this.b, new jo.a());
    }

    public static Factory<jo.a> a(MembersInjector<jo.a> membersInjector) {
        return new jq(membersInjector);
    }
}
