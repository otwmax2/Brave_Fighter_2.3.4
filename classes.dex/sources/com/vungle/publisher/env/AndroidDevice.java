package com.vungle.publisher.env;

import android.app.KeyguardManager;
import android.app.UiModeManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.Tasks;
import com.google.gson.JsonObject;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.LocationConst;
import com.ironsource.sdk.precache.DownloadManager;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.lm;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.zb;
import com.vungle.publisher.zj;
import com.vungle.publisher.zo;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AndroidDevice implements i {
    static int a = DownloadManager.OPERATION_TIMEOUT;
    String c;
    String d;

    @Inject
    lm e;

    @Inject
    WindowManager f;

    @Inject
    Context g;

    @Inject
    SharedPreferences h;

    @Inject
    DeviceIdStrategy i;

    @Inject
    String j;
    private boolean l;
    private final String k = Build.VERSION.RELEASE;
    final AtomicBoolean b = new AtomicBoolean();

    /* JADX INFO: compiled from: vungle */
    public static abstract class DeviceIdStrategy {
        protected abstract void d(AndroidDevice androidDevice);
    }

    @Inject
    AndroidDevice() {
        Injector.c().a(this);
    }

    @Override // com.vungle.publisher.env.i
    public String a() {
        h();
        return this.c;
    }

    boolean b() {
        return !TextUtils.isEmpty(this.c);
    }

    void a(String str) {
        this.c = str;
        c();
        g();
    }

    void c() {
        if (b() && f()) {
            e();
        }
    }

    @Override // com.vungle.publisher.env.i
    public String d() {
        h();
        if (f() && b()) {
            Logger.w(Logger.DEVICE_TAG, "have advertising and Android ID");
            e();
        }
        return this.d;
    }

    void e() {
        Logger.i(Logger.DEVICE_TAG, "clearing Android ID");
        this.d = null;
    }

    boolean f() {
        return !TextUtils.isEmpty(this.d);
    }

    void b(String str) {
        if (b()) {
            Logger.w(Logger.DEVICE_TAG, "have advertising id - not setting androidId");
            return;
        }
        Logger.d(Logger.DEVICE_TAG, "setting android ID " + str);
        this.d = str;
        g();
    }

    void g() {
        if (!this.b.getAndSet(true)) {
            synchronized (this.b) {
                this.b.notifyAll();
            }
        }
    }

    void h() {
        try {
            if (!this.b.get()) {
                long jCurrentTimeMillis = System.currentTimeMillis() + ((long) a);
                synchronized (this.b) {
                    Logger.d(Logger.DEVICE_TAG, "waiting for device ID");
                    while (!this.b.get() && System.currentTimeMillis() < jCurrentTimeMillis) {
                        try {
                            this.b.wait(a);
                        } catch (InterruptedException e) {
                            Logger.v(Logger.DEVICE_TAG, "interrupted while awaiting device ID");
                        }
                    }
                }
                if (this.b.get()) {
                    Logger.d(Logger.DEVICE_TAG, "obtained device ID");
                } else {
                    throw new j("timeout after " + a + " ms");
                }
            }
        } finally {
            if (!i()) {
                Logger.w(Logger.DEVICE_TAG, "no device ID available");
            }
        }
    }

    boolean i() {
        return b() || f();
    }

    @Override // com.vungle.publisher.env.i
    public boolean j() {
        return this.l;
    }

    void a(boolean z) {
        this.l = z;
    }

    @Override // com.vungle.publisher.env.i
    public Float k() {
        try {
            return Float.valueOf(this.e.b());
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting volume info", e);
            return null;
        }
    }

    @Override // com.vungle.publisher.env.i
    public boolean l() {
        boolean zEquals = "mounted".equals(Environment.getExternalStorageState());
        boolean zA = zj.a(this.g);
        if (zA && zEquals) {
            Logger.v(Logger.DEVICE_TAG, "external storage writable");
        } else {
            Logger.w(Logger.DEVICE_TAG, "external storage not writable");
        }
        return zA && zEquals;
    }

    public boolean m() {
        return c(Logger.DEVICE_TAG);
    }

    boolean c(String str) {
        boolean z;
        NoClassDefFoundError e;
        IllegalStateException e2;
        try {
            int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.g);
            z = iIsGooglePlayServicesAvailable == 0;
            if (!z) {
                try {
                    Logger.w(str, "Google Play Services not available: " + GooglePlayServicesUtil.getErrorString(iIsGooglePlayServicesAvailable));
                } catch (IllegalStateException e3) {
                    e2 = e3;
                    Logger.w(Logger.CONFIG_TAG, zb.a(e2));
                } catch (NoClassDefFoundError e4) {
                    e = e4;
                    Logger.d(str, e.getClass().getSimpleName() + ": " + e.getMessage());
                    Logger.v(str, e);
                }
            }
        } catch (IllegalStateException e5) {
            z = false;
            e2 = e5;
        } catch (NoClassDefFoundError e6) {
            z = false;
            e = e6;
        }
        return z;
    }

    @Override // com.vungle.publisher.env.i
    public void n() {
        this.i.d(this);
    }

    @Override // com.vungle.publisher.env.i
    public String o() {
        return this.h.getString("defaultUserAgent", null);
    }

    @Override // com.vungle.publisher.env.i
    public void a(WebView webView) {
        this.h.edit().putString("defaultUserAgent", zo.a(webView)).apply();
    }

    @Override // com.vungle.publisher.env.i
    public boolean a(Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    @Override // com.vungle.publisher.env.i
    public Long p() {
        Long lValueOf;
        StorageManager storageManager;
        try {
            File file = new File(this.j);
            StatFs statFs = new StatFs(file.getPath());
            if (Build.VERSION.SDK_INT < 26 || (storageManager = (StorageManager) this.g.getSystemService(StorageManager.class)) == null) {
                lValueOf = null;
            } else {
                lValueOf = Long.valueOf(storageManager.getCacheQuotaBytes(storageManager.getUuidForPath(file)));
            }
            try {
                lValueOf = Build.VERSION.SDK_INT >= 18 ? Long.valueOf(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) : Long.valueOf(statFs.getBlockSize() * statFs.getAvailableBlocks());
            } catch (Exception e) {
                Logger.e(Logger.DEVICE_TAG, "error getting available bytes");
            }
        } catch (Exception e2) {
            lValueOf = null;
        }
        return lValueOf;
    }

    @Override // com.vungle.publisher.env.i
    public String q() {
        return Build.FINGERPRINT;
    }

    @Override // com.vungle.publisher.env.i
    public int r() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.vungle.publisher.env.i
    public boolean s() {
        boolean zCanRequestPackageInstalls = false;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                if (this.g.checkCallingOrSelfPermission("android.permission.REQUEST_INSTALL_PACKAGES") == 0) {
                    zCanRequestPackageInstalls = this.g.getApplicationContext().getPackageManager().canRequestPackageInstalls();
                }
            } else {
                zCanRequestPackageInstalls = Settings.Secure.getInt(this.g.getContentResolver(), "install_non_market_apps") == 1;
            }
        } catch (Settings.SettingNotFoundException e) {
            Logger.e(Logger.DEVICE_TAG, "isInstallNonMarketAppsEnabled Settings not found", e);
        }
        Logger.v(Logger.DEVICE_TAG, "isInstallNonMarketAppsEnabled: " + zCanRequestPackageInstalls);
        return zCanRequestPackageInstalls;
    }

    @Override // com.vungle.publisher.env.i
    public boolean t() {
        boolean zHasSystemFeature;
        if (w.a) {
            zHasSystemFeature = this.g.getApplicationContext().getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
        } else if (Build.VERSION.SDK_INT >= 23) {
            zHasSystemFeature = ((UiModeManager) this.g.getSystemService("uimode")).getCurrentModeType() == 4;
        } else {
            zHasSystemFeature = this.g.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.tv") || !this.g.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        }
        Logger.v(Logger.DEVICE_TAG, "isTV: " + zHasSystemFeature);
        return zHasSystemFeature;
    }

    @Override // com.vungle.publisher.env.i
    public JsonObject u() {
        Location location;
        Location location2;
        if (w.a) {
            LocationManager locationManager = (LocationManager) this.g.getSystemService("location");
            Iterator<String> it = locationManager.getProviders(true).iterator();
            location = null;
            while (it.hasNext()) {
                Location lastKnownLocation = locationManager.getLastKnownLocation(it.next());
                if (lastKnownLocation == null || (location != null && lastKnownLocation.getAccuracy() >= location.getAccuracy())) {
                    lastKnownLocation = location;
                }
                location = lastKnownLocation;
            }
        } else {
            try {
                if (this.g.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode < 11011000) {
                    Logger.w(Logger.DEVICE_TAG, "Play services version less than 11.0.11 !");
                    location2 = null;
                } else {
                    try {
                        try {
                            location2 = (Location) Tasks.await(LocationServices.getFusedLocationProviderClient(this.g).getLastLocation(), 100L, TimeUnit.MILLISECONDS);
                        } catch (InterruptedException | ExecutionException | TimeoutException e) {
                            Logger.w(Logger.DEVICE_TAG, e.getCause());
                            location2 = null;
                        }
                    } catch (NoClassDefFoundError | NoSuchMethodError e2) {
                        Logger.w(Logger.DEVICE_TAG, "Location Play services FusedLocationProviderClient classes not present, cant get Loc data");
                    }
                }
                location = location2;
            } catch (PackageManager.NameNotFoundException e3) {
                Logger.w(Logger.DEVICE_TAG, "Play services not present, No Loc data !");
                location = null;
            }
        }
        if (location == null) {
            return null;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(LocationConst.ACCURACY, String.valueOf(location.getAccuracy()));
        jsonObject.addProperty(LocationConst.LATITUDE, String.valueOf(location.getLatitude()));
        jsonObject.addProperty(LocationConst.LONGITUDE, String.valueOf(location.getLongitude()));
        jsonObject.addProperty(LocationConst.SPEED, String.valueOf(location.getSpeed()));
        jsonObject.addProperty(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(location.getTime()));
        return jsonObject;
    }
}
