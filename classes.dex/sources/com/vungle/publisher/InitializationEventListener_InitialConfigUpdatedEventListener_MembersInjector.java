package com.vungle.publisher;

import com.vungle.publisher.InitializationEventListener;
import com.vungle.publisher.env.r;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector implements MembersInjector<InitializationEventListener.a> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;
    private final Provider<c> c;
    private final Provider<yk> d;
    private final Provider<r> e;
    private final Provider<com.vungle.publisher.log.g> f;
    private final Provider<vc> g;
    private final Provider<bw> h;

    static {
        a = !InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector.class.desiredAssertionStatus();
    }

    public InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector(Provider<qg> eventBusProvider, Provider<c> adManagerProvider, Provider<yk> reportManagerProvider, Provider<r> sdkStateProvider, Provider<com.vungle.publisher.log.g> loggingManagerProvider, Provider<vc> protocolHttpGatewayProvider, Provider<bw> executorProvider) {
        if (!a && eventBusProvider == null) {
            throw new AssertionError();
        }
        this.b = eventBusProvider;
        if (!a && adManagerProvider == null) {
            throw new AssertionError();
        }
        this.c = adManagerProvider;
        if (!a && reportManagerProvider == null) {
            throw new AssertionError();
        }
        this.d = reportManagerProvider;
        if (!a && sdkStateProvider == null) {
            throw new AssertionError();
        }
        this.e = sdkStateProvider;
        if (!a && loggingManagerProvider == null) {
            throw new AssertionError();
        }
        this.f = loggingManagerProvider;
        if (!a && protocolHttpGatewayProvider == null) {
            throw new AssertionError();
        }
        this.g = protocolHttpGatewayProvider;
        if (!a && executorProvider == null) {
            throw new AssertionError();
        }
        this.h = executorProvider;
    }

    public static MembersInjector<InitializationEventListener.a> create(Provider<qg> eventBusProvider, Provider<c> adManagerProvider, Provider<yk> reportManagerProvider, Provider<r> sdkStateProvider, Provider<com.vungle.publisher.log.g> loggingManagerProvider, Provider<vc> protocolHttpGatewayProvider, Provider<bw> executorProvider) {
        return new InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector(eventBusProvider, adManagerProvider, reportManagerProvider, sdkStateProvider, loggingManagerProvider, protocolHttpGatewayProvider, executorProvider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(InitializationEventListener.a instance) {
        if (instance == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        instance.eventBus = this.b.get();
        instance.a = this.c.get();
        instance.b = this.d.get();
        instance.c = this.e.get();
        instance.d = this.f.get();
        instance.e = this.g.get();
        instance.f = this.h.get();
    }

    public static void injectAdManager(InitializationEventListener.a instance, Provider<c> adManagerProvider) {
        instance.a = adManagerProvider.get();
    }

    public static void injectReportManager(InitializationEventListener.a instance, Provider<yk> reportManagerProvider) {
        instance.b = reportManagerProvider.get();
    }

    public static void injectSdkState(InitializationEventListener.a instance, Provider<r> sdkStateProvider) {
        instance.c = sdkStateProvider.get();
    }

    public static void injectLoggingManager(InitializationEventListener.a instance, Provider<com.vungle.publisher.log.g> loggingManagerProvider) {
        instance.d = loggingManagerProvider.get();
    }

    public static void injectProtocolHttpGateway(InitializationEventListener.a instance, Provider<vc> protocolHttpGatewayProvider) {
        instance.e = protocolHttpGatewayProvider.get();
    }

    public static void injectExecutor(InitializationEventListener.a instance, Provider<bw> executorProvider) {
        instance.f = executorProvider.get();
    }
}
