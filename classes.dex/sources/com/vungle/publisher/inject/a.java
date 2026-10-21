package com.vungle.publisher.inject;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.vungle.publisher.FlexViewAdActivity;
import com.vungle.publisher.MraidFullScreenAdActivity;
import com.vungle.publisher.VideoFullScreenAdActivity;
import com.vungle.publisher.VungleAdActivity;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.qm;
import com.vungle.publisher.qr;
import com.vungle.publisher.sv;
import com.vungle.publisher.sz;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Module
public class a {
    private Context a;
    private String b;
    private Class<? extends VungleAdActivity> c;
    private Class<? extends VungleAdActivity> d;
    private Class<? extends VungleAdActivity> e;
    private WrapperFramework f;
    private String g;
    private boolean h;

    public void a(WrapperFramework wrapperFramework) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting framework in publisher module: " + wrapperFramework);
            this.f = wrapperFramework;
        }
    }

    public void a(String str) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework version in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "setting framework in publisher module: " + str);
            this.g = str;
        }
    }

    public boolean a() {
        return this.h;
    }

    public void a(Context context, String str) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "publisher module already initialized");
            return;
        }
        Logger.d(Logger.INJECT_TAG, "initializing publisher module");
        this.a = context.getApplicationContext();
        this.b = str;
        this.h = true;
    }

    @Provides
    Context b() {
        return this.a;
    }

    @Provides
    String a(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            throw new qm();
        }
        return qr.a(externalFilesDir.getAbsolutePath(), ".vungle");
    }

    @Provides
    String b(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null) {
            throw new qm();
        }
        return qr.a(externalCacheDir, ".VungleCacheDir");
    }

    @Provides
    @Singleton
    AudioManager c(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            Logger.d(Logger.DEVICE_TAG, "AudioManager not avaialble");
        }
        return audioManager;
    }

    @Provides
    ConnectivityManager d(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            Logger.d(Logger.DEVICE_TAG, "ConnectivityManager not available");
        }
        return connectivityManager;
    }

    @Provides
    @Singleton
    com.vungle.publisher.env.i a(AndroidDevice androidDevice) {
        return androidDevice;
    }

    @Provides
    SharedPreferences e(Context context) {
        return context.getSharedPreferences("VUNGLE_PUB_APP_INFO", 0);
    }

    @Provides
    Class c() {
        return this.c == null ? VideoFullScreenAdActivity.class : this.c;
    }

    @Provides
    Class d() {
        return this.d == null ? MraidFullScreenAdActivity.class : this.d;
    }

    @Provides
    Class e() {
        return this.e == null ? FlexViewAdActivity.class : this.e;
    }

    @Provides
    @Singleton
    sz a(sv svVar) {
        return svVar;
    }

    @Provides
    @Singleton
    com.vungle.publisher.env.n a(Context context, WrapperFramework wrapperFramework) {
        String str = null;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.e(Logger.INJECT_TAG, "cannot get App's version");
        }
        return new com.vungle.publisher.env.h(context.getPackageName(), this.b, wrapperFramework, str);
    }

    @Provides
    TelephonyManager f(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            Logger.d(Logger.DEVICE_TAG, "TelephonyManager not avaialble");
        }
        return telephonyManager;
    }

    @Provides
    WindowManager g(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            Logger.d(Logger.DEVICE_TAG, "WindowManager not available");
        }
        return windowManager;
    }

    @Provides
    WrapperFramework f() {
        return this.f == null ? WrapperFramework.none : this.f;
    }

    @Provides
    String g() {
        return this.g == null ? "" : this.g;
    }
}
