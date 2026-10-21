package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.env.r;
import com.vungle.publisher.mg;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VungleAdActivity_MembersInjector implements MembersInjector<VungleAdActivity> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;
    private final Provider<bz> c;
    private final Provider<r> d;
    private final Provider<cn.b> e;
    private final Provider<lm> f;
    private final Provider<mg.a> g;
    private final Provider<u> h;
    private final Provider<com.vungle.publisher.log.g> i;

    static {
        a = !VungleAdActivity_MembersInjector.class.desiredAssertionStatus();
    }

    public VungleAdActivity_MembersInjector(Provider<qg> eventBusProvider, Provider<bz> uiExecutorProvider, Provider<r> sdkStateProvider, Provider<cn.b> adMediatorProvider, Provider<lm> audioHelperProvider, Provider<mg.a> adPresenterMediatorProvider, Provider<u> adConfigFactoryProvider, Provider<com.vungle.publisher.log.g> loggerProvider) {
        if (!a && eventBusProvider == null) {
            throw new AssertionError();
        }
        this.b = eventBusProvider;
        if (!a && uiExecutorProvider == null) {
            throw new AssertionError();
        }
        this.c = uiExecutorProvider;
        if (!a && sdkStateProvider == null) {
            throw new AssertionError();
        }
        this.d = sdkStateProvider;
        if (!a && adMediatorProvider == null) {
            throw new AssertionError();
        }
        this.e = adMediatorProvider;
        if (!a && audioHelperProvider == null) {
            throw new AssertionError();
        }
        this.f = audioHelperProvider;
        if (!a && adPresenterMediatorProvider == null) {
            throw new AssertionError();
        }
        this.g = adPresenterMediatorProvider;
        if (!a && adConfigFactoryProvider == null) {
            throw new AssertionError();
        }
        this.h = adConfigFactoryProvider;
        if (!a && loggerProvider == null) {
            throw new AssertionError();
        }
        this.i = loggerProvider;
    }

    public static MembersInjector<VungleAdActivity> create(Provider<qg> eventBusProvider, Provider<bz> uiExecutorProvider, Provider<r> sdkStateProvider, Provider<cn.b> adMediatorProvider, Provider<lm> audioHelperProvider, Provider<mg.a> adPresenterMediatorProvider, Provider<u> adConfigFactoryProvider, Provider<com.vungle.publisher.log.g> loggerProvider) {
        return new VungleAdActivity_MembersInjector(eventBusProvider, uiExecutorProvider, sdkStateProvider, adMediatorProvider, audioHelperProvider, adPresenterMediatorProvider, adConfigFactoryProvider, loggerProvider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VungleAdActivity instance) {
        if (instance == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        instance.c = this.b.get();
        instance.d = this.c.get();
        instance.e = this.d.get();
        instance.f = this.e.get();
        instance.g = this.f.get();
        instance.h = this.g.get();
        instance.i = this.h.get();
        instance.j = this.i.get();
    }

    public static void injectEventBus(VungleAdActivity instance, Provider<qg> eventBusProvider) {
        instance.c = eventBusProvider.get();
    }

    public static void injectUiExecutor(VungleAdActivity instance, Provider<bz> uiExecutorProvider) {
        instance.d = uiExecutorProvider.get();
    }

    public static void injectSdkState(VungleAdActivity instance, Provider<r> sdkStateProvider) {
        instance.e = sdkStateProvider.get();
    }

    public static void injectAdMediator(VungleAdActivity instance, Provider<cn.b> adMediatorProvider) {
        instance.f = adMediatorProvider.get();
    }

    public static void injectAudioHelper(VungleAdActivity instance, Provider<lm> audioHelperProvider) {
        instance.g = audioHelperProvider.get();
    }

    public static void injectAdPresenterMediator(VungleAdActivity instance, Provider<mg.a> adPresenterMediatorProvider) {
        instance.h = adPresenterMediatorProvider.get();
    }

    public static void injectAdConfigFactory(VungleAdActivity instance, Provider<u> adConfigFactoryProvider) {
        instance.i = adConfigFactoryProvider.get();
    }

    public static void injectLogger(VungleAdActivity instance, Provider<com.vungle.publisher.log.g> loggerProvider) {
        instance.j = loggerProvider.get();
    }
}
