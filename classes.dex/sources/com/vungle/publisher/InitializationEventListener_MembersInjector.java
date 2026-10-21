package com.vungle.publisher;

import com.vungle.publisher.InitializationEventListener;
import com.vungle.publisher.env.r;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener_MembersInjector implements MembersInjector<InitializationEventListener> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;
    private final Provider<bw> c;
    private final Provider<vc> d;
    private final Provider<InitializationEventListener.a> e;
    private final Provider<r> f;

    static {
        a = !InitializationEventListener_MembersInjector.class.desiredAssertionStatus();
    }

    public InitializationEventListener_MembersInjector(Provider<qg> eventBusProvider, Provider<bw> executorProvider, Provider<vc> protocolHttpGatewayProvider, Provider<InitializationEventListener.a> initialConfigUpdatedEventListenerProvider, Provider<r> sdkStateProvider) {
        if (!a && eventBusProvider == null) {
            throw new AssertionError();
        }
        this.b = eventBusProvider;
        if (!a && executorProvider == null) {
            throw new AssertionError();
        }
        this.c = executorProvider;
        if (!a && protocolHttpGatewayProvider == null) {
            throw new AssertionError();
        }
        this.d = protocolHttpGatewayProvider;
        if (!a && initialConfigUpdatedEventListenerProvider == null) {
            throw new AssertionError();
        }
        this.e = initialConfigUpdatedEventListenerProvider;
        if (!a && sdkStateProvider == null) {
            throw new AssertionError();
        }
        this.f = sdkStateProvider;
    }

    public static MembersInjector<InitializationEventListener> create(Provider<qg> eventBusProvider, Provider<bw> executorProvider, Provider<vc> protocolHttpGatewayProvider, Provider<InitializationEventListener.a> initialConfigUpdatedEventListenerProvider, Provider<r> sdkStateProvider) {
        return new InitializationEventListener_MembersInjector(eventBusProvider, executorProvider, protocolHttpGatewayProvider, initialConfigUpdatedEventListenerProvider, sdkStateProvider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(InitializationEventListener instance) {
        if (instance == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        instance.eventBus = this.b.get();
        instance.a = this.c.get();
        instance.b = this.d.get();
        instance.c = this.e.get();
        instance.d = this.f.get();
    }

    public static void injectExecutor(InitializationEventListener instance, Provider<bw> executorProvider) {
        instance.a = executorProvider.get();
    }

    public static void injectProtocolHttpGateway(InitializationEventListener instance, Provider<vc> protocolHttpGatewayProvider) {
        instance.b = protocolHttpGatewayProvider.get();
    }

    public static void injectInitialConfigUpdatedEventListener(InitializationEventListener instance, Provider<InitializationEventListener.a> initialConfigUpdatedEventListenerProvider) {
        instance.c = initialConfigUpdatedEventListenerProvider.get();
    }

    public static void injectSdkState(InitializationEventListener instance, Provider<r> sdkStateProvider) {
        instance.d = sdkStateProvider.get();
    }
}
