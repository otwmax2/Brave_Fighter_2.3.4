package com.vungle.publisher.inject;

import dagger.Module;
import dagger.Provides;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Module
public class EndpointModule {
    private String a = "";

    @Provides
    String a() {
        return this.a;
    }

    public EndpointModule setVungleBaseUrl(String vungleBaseUrl) {
        this.a = vungleBaseUrl;
        return this;
    }
}
