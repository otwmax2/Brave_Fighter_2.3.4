package com.vungle.publisher.inject;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.ironsource.environment.ConnectivityService;
import com.vungle.publisher.env.AndroidDevice;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Module
public class t {
    @Provides
    @Singleton
    AndroidDevice.DeviceIdStrategy a(com.vungle.publisher.env.a aVar) {
        return aVar;
    }

    @Provides
    WifiManager a(Context context) {
        return (WifiManager) context.getSystemService(ConnectivityService.NETWORK_TYPE_WIFI);
    }
}
