package com.vungle.publisher;

import com.vungle.publisher.InitializationEventListener;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener_InitialConfigUpdatedEventListener_Factory implements Factory<InitializationEventListener.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<InitializationEventListener.a> b;

    static {
        a = !InitializationEventListener_InitialConfigUpdatedEventListener_Factory.class.desiredAssertionStatus();
    }

    public InitializationEventListener_InitialConfigUpdatedEventListener_Factory(MembersInjector<InitializationEventListener.a> initialConfigUpdatedEventListenerMembersInjector) {
        if (!a && initialConfigUpdatedEventListenerMembersInjector == null) {
            throw new AssertionError();
        }
        this.b = initialConfigUpdatedEventListenerMembersInjector;
    }

    @Override // javax.inject.Provider
    public InitializationEventListener.a get() {
        return (InitializationEventListener.a) MembersInjectors.injectMembers(this.b, new InitializationEventListener.a());
    }

    public static Factory<InitializationEventListener.a> create(MembersInjector<InitializationEventListener.a> initialConfigUpdatedEventListenerMembersInjector) {
        return new InitializationEventListener_InitialConfigUpdatedEventListener_Factory(initialConfigUpdatedEventListenerMembersInjector);
    }
}
