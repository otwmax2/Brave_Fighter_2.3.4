package com.vungle.publisher;

import com.vungle.publisher.env.r;
import com.vungle.publisher.mj;
import com.vungle.publisher.py;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VunglePubBase_MembersInjector implements MembersInjector<VunglePubBase> {
    static final /* synthetic */ boolean a;
    private final Provider<c> b;
    private final Provider<InitializationEventListener> c;
    private final Provider<py.a> d;
    private final Provider<qo> e;
    private final Provider<ci> f;
    private final Provider<com.vungle.publisher.env.i> g;
    private final Provider<qg> h;
    private final Provider<AdConfig> i;
    private final Provider<u> j;
    private final Provider<com.vungle.publisher.env.o> k;
    private final Provider<r> l;
    private final Provider<mj.a> m;
    private final Provider<com.vungle.publisher.log.g> n;

    static {
        a = !VunglePubBase_MembersInjector.class.desiredAssertionStatus();
    }

    public VunglePubBase_MembersInjector(Provider<c> adManagerProvider, Provider<InitializationEventListener> initializationEventListenerProvider, Provider<py.a> clientInitListenerAdapterFactoryProvider, Provider<qo> cacheManagerProvider, Provider<ci> databaseHelperProvider, Provider<com.vungle.publisher.env.i> deviceProvider, Provider<qg> eventBusProvider, Provider<AdConfig> globalAdConfigProvider, Provider<u> safeBundleAdConfigFactoryProvider, Provider<com.vungle.publisher.env.o> sdkConfigProvider, Provider<r> sdkStateProvider, Provider<mj.a> dummyWebViewFactoryProvider, Provider<com.vungle.publisher.log.g> loggerProvider) {
        if (!a && adManagerProvider == null) {
            throw new AssertionError();
        }
        this.b = adManagerProvider;
        if (!a && initializationEventListenerProvider == null) {
            throw new AssertionError();
        }
        this.c = initializationEventListenerProvider;
        if (!a && clientInitListenerAdapterFactoryProvider == null) {
            throw new AssertionError();
        }
        this.d = clientInitListenerAdapterFactoryProvider;
        if (!a && cacheManagerProvider == null) {
            throw new AssertionError();
        }
        this.e = cacheManagerProvider;
        if (!a && databaseHelperProvider == null) {
            throw new AssertionError();
        }
        this.f = databaseHelperProvider;
        if (!a && deviceProvider == null) {
            throw new AssertionError();
        }
        this.g = deviceProvider;
        if (!a && eventBusProvider == null) {
            throw new AssertionError();
        }
        this.h = eventBusProvider;
        if (!a && globalAdConfigProvider == null) {
            throw new AssertionError();
        }
        this.i = globalAdConfigProvider;
        if (!a && safeBundleAdConfigFactoryProvider == null) {
            throw new AssertionError();
        }
        this.j = safeBundleAdConfigFactoryProvider;
        if (!a && sdkConfigProvider == null) {
            throw new AssertionError();
        }
        this.k = sdkConfigProvider;
        if (!a && sdkStateProvider == null) {
            throw new AssertionError();
        }
        this.l = sdkStateProvider;
        if (!a && dummyWebViewFactoryProvider == null) {
            throw new AssertionError();
        }
        this.m = dummyWebViewFactoryProvider;
        if (!a && loggerProvider == null) {
            throw new AssertionError();
        }
        this.n = loggerProvider;
    }

    public static MembersInjector<VunglePubBase> create(Provider<c> adManagerProvider, Provider<InitializationEventListener> initializationEventListenerProvider, Provider<py.a> clientInitListenerAdapterFactoryProvider, Provider<qo> cacheManagerProvider, Provider<ci> databaseHelperProvider, Provider<com.vungle.publisher.env.i> deviceProvider, Provider<qg> eventBusProvider, Provider<AdConfig> globalAdConfigProvider, Provider<u> safeBundleAdConfigFactoryProvider, Provider<com.vungle.publisher.env.o> sdkConfigProvider, Provider<r> sdkStateProvider, Provider<mj.a> dummyWebViewFactoryProvider, Provider<com.vungle.publisher.log.g> loggerProvider) {
        return new VunglePubBase_MembersInjector(adManagerProvider, initializationEventListenerProvider, clientInitListenerAdapterFactoryProvider, cacheManagerProvider, databaseHelperProvider, deviceProvider, eventBusProvider, globalAdConfigProvider, safeBundleAdConfigFactoryProvider, sdkConfigProvider, sdkStateProvider, dummyWebViewFactoryProvider, loggerProvider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VunglePubBase instance) {
        if (instance == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        instance.a = this.b.get();
        instance.b = this.c.get();
        instance.c = this.d.get();
        instance.d = this.e.get();
        instance.e = this.f.get();
        instance.f = this.g.get();
        instance.g = this.h.get();
        instance.h = this.i.get();
        instance.i = this.j.get();
        instance.j = this.k.get();
        instance.k = this.l.get();
        instance.l = this.m.get();
        instance.m = this.n.get();
    }

    public static void injectAdManager(VunglePubBase instance, Provider<c> adManagerProvider) {
        instance.a = adManagerProvider.get();
    }

    public static void injectInitializationEventListener(VunglePubBase instance, Provider<InitializationEventListener> initializationEventListenerProvider) {
        instance.b = initializationEventListenerProvider.get();
    }

    public static void injectClientInitListenerAdapterFactory(VunglePubBase instance, Provider<py.a> clientInitListenerAdapterFactoryProvider) {
        instance.c = clientInitListenerAdapterFactoryProvider.get();
    }

    public static void injectCacheManager(VunglePubBase instance, Provider<qo> cacheManagerProvider) {
        instance.d = cacheManagerProvider.get();
    }

    public static void injectDatabaseHelper(VunglePubBase instance, Provider<ci> databaseHelperProvider) {
        instance.e = databaseHelperProvider.get();
    }

    public static void injectDevice(VunglePubBase instance, Provider<com.vungle.publisher.env.i> deviceProvider) {
        instance.f = deviceProvider.get();
    }

    public static void injectEventBus(VunglePubBase instance, Provider<qg> eventBusProvider) {
        instance.g = eventBusProvider.get();
    }

    public static void injectGlobalAdConfig(VunglePubBase instance, Provider<AdConfig> globalAdConfigProvider) {
        instance.h = globalAdConfigProvider.get();
    }

    public static void injectSafeBundleAdConfigFactory(VunglePubBase instance, Provider<u> safeBundleAdConfigFactoryProvider) {
        instance.i = safeBundleAdConfigFactoryProvider.get();
    }

    public static void injectSdkConfig(VunglePubBase instance, Provider<com.vungle.publisher.env.o> sdkConfigProvider) {
        instance.j = sdkConfigProvider.get();
    }

    public static void injectSdkState(VunglePubBase instance, Provider<r> sdkStateProvider) {
        instance.k = sdkStateProvider.get();
    }

    public static void injectDummyWebViewFactory(VunglePubBase instance, Provider<mj.a> dummyWebViewFactoryProvider) {
        instance.l = dummyWebViewFactoryProvider.get();
    }

    public static void injectLogger(VunglePubBase instance, Provider<com.vungle.publisher.log.g> loggerProvider) {
        instance.m = loggerProvider.get();
    }
}
