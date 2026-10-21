###### Class com.ironsource.environment.DeviceStatus (com.ironsource.environment.DeviceStatus)
.class public Lcom/ironsource/environment/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static final CACHED_UUID_KEY:Ljava/lang/String; = "cachedUUID"

.field private static final DEVICE_OS:Ljava/lang/String; = "android"

.field private static final GOOGLE_PLAY_SERVICES_CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_INFO_METHOD_NAME:Ljava/lang/String; = "getAdvertisingIdInfo"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_METHOD_NAME:Ljava/lang/String; = "getId"

.field private static final GOOGLE_PLAY_SERVICES_IS_LIMITED_AD_TRACKING_METHOD_NAME:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static final MEDIATION_SHARED_PREFS:Ljava/lang/String; = "Mediation_Shared_Preferences"

.field public static final UUID_ENABLED:Ljava/lang/String; = "uuidEnabled"

.field private static uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBinary(Ljava/lang/String;)Z
    .registers 8
    .param p0, "binaryName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "found":Z
    const/16 v5, 0x8

    :try_start_4
    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/sbin/"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "/system/bin/"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "/system/xbin/"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "/data/local/xbin/"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "/data/local/bin/"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "/system/sd/xbin/"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "/system/bin/failsafe/"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "/data/local/"

    aput-object v6, v3, v5

    .line 193
    .local v3, "paths":[Ljava/lang/String;
    array-length v5, v3

    :goto_2f
    if-ge v4, v5, :cond_50

    aget-object v2, v3, v4

    .line 194
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_54

    move-result v6

    if-eqz v6, :cond_51

    .line 196
    const/4 v1, 0x1

    .line 203
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "paths":[Ljava/lang/String;
    :cond_50
    :goto_50
    return v1

    .line 193
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "paths":[Ljava/lang/String;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 200
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "paths":[Ljava/lang/String;
    :catch_54
    move-exception v4

    goto :goto_50
.end method

.method public static getActivityRequestedOrientation(Landroid/content/Context;)I
    .registers 2
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 283
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/app/Activity;

    .line 284
    .end local p0    # "activity":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_a
    return v0

    .restart local p0    # "activity":Landroid/content/Context;
    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 13
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 88
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 90
    .local v5, "mAdvertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getAdvertisingIdInfo"

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    .local v1, "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 93
    .local v6, "mInfoClass":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .local v2, "getIdMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "isLimitAdTrackingEnabled"

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    .local v3, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "advertisingId":Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 99
    .local v4, "isLimitedTrackingEnabled":Z
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    return-object v7
.end method

.method public static getAndroidAPIVersion()I
    .registers 1

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAndroidOsVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationRotation(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const-string v1, "window"

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 240
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method public static getAppsInstallTime(Landroid/content/Context;Z)Lorg/json/JSONObject;
    .registers 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "includeSystemPackages"    # Z

    .prologue
    const/4 v13, 0x0

    .line 473
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 474
    .local v3, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 477
    .local v8, "pkgAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 479
    .local v7, "packagesInstalledPerDate":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 480
    .local v4, "manager":Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 482
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_65

    .line 483
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 485
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez p1, :cond_40

    :try_start_37
    invoke-static {v9}, Lcom/ironsource/environment/DeviceStatus;->isSystemPackage(Landroid/content/pm/ResolveInfo;)Z

    move-result v11

    if-eqz v11, :cond_40

    .line 482
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 489
    :cond_40
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x1000

    invoke-virtual {v4, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 491
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "installTime":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 493
    .local v5, "numberOfInstalledApps":I
    add-int/lit8 v5, v5, 0x1

    .line 494
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5f} :catch_60

    goto :goto_3d

    .line 495
    .end local v2    # "installTime":Ljava/lang/String;
    .end local v5    # "numberOfInstalledApps":I
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_60
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_65
    return-object v7
.end method

.method public static getAvailableExternalMemorySizeInMegaBytes()J
    .registers 4

    .prologue
    .line 398
    const-wide/16 v2, 0x0

    .line 399
    .local v2, "res":J
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isExternalMemoryAvailableWritable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 400
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 401
    .local v0, "path":Ljava/io/File;
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 403
    .end local v0    # "path":Ljava/io/File;
    :cond_10
    return-wide v2
.end method

.method public static getAvailableInternalMemorySizeInMegaBytes()J
    .registers 4

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 383
    .local v0, "path":Ljava/io/File;
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 384
    .local v2, "res":J
    return-wide v2
.end method

.method public static getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 422
    const/4 v1, -0x1

    .line 425
    .local v1, "batteryLevel":I
    const/4 v5, 0x0

    :try_start_4
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 426
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2d

    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 427
    .local v3, "level":I
    :goto_18
    if-eqz v0, :cond_21

    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_2f

    move-result v4

    .line 430
    .local v4, "scale":I
    :cond_21
    if-eq v3, v8, :cond_2c

    if-eq v4, v8, :cond_2c

    .line 431
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 437
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v3    # "level":I
    .end local v4    # "scale":I
    :cond_2c
    :goto_2c
    return v1

    .restart local v0    # "batteryIntent":Landroid/content/Intent;
    :cond_2d
    move v3, v4

    .line 426
    goto :goto_18

    .line 433
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    :catch_2f
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public static getDeviceDefaultOrientation(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 295
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v1

    .line 296
    .local v1, "rotation":I
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 298
    .local v0, "orientation":I
    if-eqz v1, :cond_e

    if-ne v1, v2, :cond_10

    :cond_e
    if-eq v0, v2, :cond_17

    :cond_10
    if-eq v1, v3, :cond_15

    const/4 v4, 0x3

    if-ne v1, v4, :cond_18

    :cond_15
    if-ne v0, v3, :cond_18

    .line 304
    :cond_17
    :goto_17
    return v2

    :cond_18
    move v2, v3

    goto :goto_17
.end method

.method public static getDeviceDensity()F
    .registers 2

    .prologue
    .line 323
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 324
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public static getDeviceHeight()I
    .registers 2

    .prologue
    .line 270
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 271
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceLocalTime()J
    .registers 4

    .prologue
    .line 62
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 65
    .local v1, "currentLocalTime":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 164
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOEM()Ljava/lang/String;
    .registers 1

    .prologue
    .line 171
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getDeviceOs()Ljava/lang/String;
    .registers 1

    .prologue
    .line 178
    const-string v0, "android"

    return-object v0
.end method

.method public static getDeviceTimeZoneOffsetInMinutes()I
    .registers 4

    .prologue
    .line 72
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceLocalTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public static getDeviceWidth()I
    .registers 2

    .prologue
    .line 260
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 261
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getFreeStorageInBytes(Ljava/io/File;)J
    .registers 13
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 117
    const-wide/16 v0, 0x400

    .line 118
    .local v0, "SIZE_KB":J
    const-wide/32 v2, 0x100000

    .line 120
    .local v2, "SIZE_MB":J
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "stat":Landroid/os/StatFs;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ge v7, v8, :cond_26

    .line 122
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v10, v7

    mul-long v4, v8, v10

    .line 127
    .local v4, "res":J
    :goto_20
    const-wide/32 v8, 0x100000

    div-long v8, v4, v8

    return-wide v8

    .line 124
    .end local v4    # "res":J
    :cond_26
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long v4, v8, v10

    .restart local v4    # "res":J
    goto :goto_20
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 335
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 371
    .local v0, "internalFile":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_b
    return-object v1
.end method

.method public static getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 143
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    const-class v6, Lcom/ironsource/environment/DeviceStatus;

    monitor-enter v6

    :try_start_3
    sget-object v5, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 446
    sget-object v5, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_50

    .line 464
    :goto_d
    monitor-exit v6

    return-object v5

    .line 449
    :cond_f
    :try_start_f
    const-string v5, "Mediation_Shared_Preferences"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 450
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "uuidEnabled"

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 451
    .local v3, "isEnabled":Z
    if-eqz v3, :cond_45

    .line 452
    const-string v5, "cachedUUID"

    const-string v7, ""

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 454
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    .line 455
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 456
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cachedUUID"

    sget-object v7, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_45} :catch_4b
    .catchall {:try_start_f .. :try_end_45} :catchall_50

    .line 464
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "isEnabled":Z
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_45
    :goto_45
    :try_start_45
    sget-object v5, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_50

    goto :goto_d

    .line 459
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "isEnabled":Z
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_48
    :try_start_48
    sput-object v2, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4a} :catch_4b
    .catchall {:try_start_48 .. :try_end_4a} :catchall_50

    goto :goto_45

    .line 461
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "isEnabled":Z
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_4b
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_45

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getSystemVolumePercent(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 250
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 251
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public static isDeviceOrientationLocked(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public static isExternalMemoryAvailableWritable()Z
    .registers 2

    .prologue
    .line 134
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isImmersiveSupported(Landroid/app/Activity;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 412
    .local v0, "uiOptions":I
    or-int/lit16 v1, v0, 0x1000

    if-eq v1, v0, :cond_14

    or-int/lit16 v1, v0, 0x800

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 211
    .local v0, "config":Landroid/content/res/Configuration;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_16

    .line 212
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_16

    .line 217
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isRootedDevice()Z
    .registers 1

    .prologue
    .line 185
    const-string v0, "su"

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystemPackage(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 469
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
