package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener_Factory implements Factory<InitializationEventListener> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<InitializationEventListener> b;

    static {
        a = !InitializationEventListener_Factory.class.desiredAssertionStatus();
    }

    public InitializationEventListener_Factory(MembersInjector<InitializationEventListener> initializationEventListenerMembersInjector) {
        if (!a && initializationEventListenerMembersInjector == null) {
            throw new AssertionError();
        }
        this.b = initializationEventListenerMembersInjector;
    }

    @Override // javax.inject.Provider
    public InitializationEventListener get() {
        return (InitializationEventListener) MembersInjectors.injectMembers(this.b, new InitializationEventListener());
    }

    public static Factory<InitializationEventListener> create(MembersInjector<InitializationEventListener> initializationEventListenerMembersInjector) {
        return new InitializationEventListener_Factory(initializationEventListenerMembersInjector);
    }
}
