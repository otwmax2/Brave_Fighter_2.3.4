###### Class com.tendcloud.tenddata.TalkingDataGA (com.tendcloud.tenddata.TalkingDataGA)
.class public final Lcom/tendcloud/tenddata/TalkingDataGA;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z = false

.field public static final PLATFORM_TYPE_AIR:I = 0x3

.field public static final PLATFORM_TYPE_COCOS2DX:I = 0x1

.field public static final PLATFORM_TYPE_NATIVE:I = 0x0

.field public static final PLATFORM_TYPE_PHONEGAP:I = 0x4

.field public static final PLATFORM_TYPE_UNITY:I = 0x2

.field public static a:Landroid/content/Context; = null

.field public static b:Ljava/lang/String; = null

.field static c:Ljava/lang/String; = null

.field static d:Ljava/lang/String; = null

.field static e:Z = false

.field static f:Landroid/os/Handler; = null

.field public static g:Z = false

.field static h:Z = false

.field static final i:Ljava/lang/String; = "TDGA"

.field static final j:J = 0x493e0L

.field public static k:Landroid/os/HandlerThread; = null

.field protected static final l:Ljava/util/Map;

.field private static final m:Ljava/lang/String; = "TDGA_APP_ID"

.field private static final n:Ljava/lang/String; = "TDGA_CHANNEL_ID"

.field private static o:Z

.field public static sPlatformType:I

.field public static sPushMessage:Landroid/os/HandlerThread;

.field public static sSDKInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput v1, Lcom/tendcloud/tenddata/TalkingDataGA;->sPlatformType:I

    sput-boolean v1, Lcom/tendcloud/tenddata/TalkingDataGA;->e:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sSDKInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/TalkingDataGA;->h:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Controller Message Processing Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->k:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Controller sPushMessage Processing Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPushMessage:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->l:Ljava/util/Map;

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPushMessage:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_28
    const-string v0, ""

    goto :goto_4
.end method

.method protected static final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "APP ID not allow empty. Please check it."

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    :try_start_12
    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_11

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-nez v0, :cond_23

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataGA;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.onResume# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_55} :catch_56

    goto :goto_11

    :catch_56
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TalkingDataGA.onResume#"

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected static a(Landroid/content/Context;)V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "TDGA_APP_ID"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string v3, "tdconfig.json"

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TDGA"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel id from assets json is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    if-eqz v0, :cond_4b

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_4b
    const-string v0, "TDGA_CHANNEL_ID"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.initSDK()#TDGA_APP_ID not found in AndroidManifest.xml!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_62
    return-void

    :cond_63
    if-nez v0, :cond_67

    const-string v0, "TalkingData"

    :cond_67
    invoke-static {p0, v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6a} :catch_6b

    goto :goto_62

    :catch_6b
    move-exception v0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.initSDK()#Failed to load meta-data"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sSDKInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 7

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    :try_start_9
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4a

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    :goto_13
    if-eqz p0, :cond_49

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_49

    const-class v0, Lcom/tendcloud/tenddata/game/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    :cond_49
    :goto_49
    return-void

    :cond_4a
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_8e

    check-cast p0, Landroid/app/Application;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_51

    goto :goto_13

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    :cond_56
    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_49

    new-instance v0, Lcom/tendcloud/tenddata/game/bu;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bu;-><init>()V

    :try_start_5f
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "gDefault"

    const-string v3, "android.app.IActivityManager"

    invoke-static {v1, v0, v2, v3}, Lcom/tendcloud/tenddata/game/aa;->a(Ljava/lang/Class;Lcom/tendcloud/tenddata/game/v;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6f} :catch_70

    goto :goto_49

    :catch_70
    move-exception v0

    const-string v1, "TDGA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerActivityLifecycleListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_8e
    move-object p0, v0

    goto :goto_13
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static final b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_40

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_3f
    return v0

    :catch_40
    move-exception v0

    :cond_41
    move v0, v1

    goto :goto_3f
.end method

.method public static callNullMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "TDGA"

    const-string v1, "null method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static final getAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "td_pefercen_profile"

    const-string v1, "appkey"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    :cond_14
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.getDeviceId#Called."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    if-nez p0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static final getGameAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "td_pefercen_profile"

    const-string v1, "gameappkey"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->d:Ljava/lang/String;

    :cond_14
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "td_pefercen_profile"

    const-string v1, "partnerId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    :cond_14
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-class v2, Lcom/tendcloud/tenddata/TalkingDataGA;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sSDKInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_82

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_84

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "stop working...application do not have permission to send data, you must add <uses-permission android:name=\"android.permission.INTERNET\"/> to your AndroidManifest.xml."

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_27
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->a()V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/az;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->h:Z

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->h:Z

    if-eqz v0, :cond_6e

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->e:Z

    if-nez v0, :cond_53

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/be;->a()V

    :cond_53
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/w;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w$a;)V

    :cond_6e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sSDKInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "TalkingDataGA.init()# TDGA Initialized Completed."

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_137

    :cond_82
    monitor-exit v2

    return-void

    :cond_84
    :try_start_84
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_8f
    .catchall {:try_start_84 .. :try_end_8f} :catchall_137

    move-result v0

    if-eqz v0, :cond_145

    const/4 v1, 0x0

    :try_start_93
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9c} :catch_13a
    .catchall {:try_start_93 .. :try_end_9c} :catchall_137

    :goto_9c
    :try_start_9c
    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    :goto_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->d:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string v1, "tdconfig.json"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TDGA"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel id from assets json is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    if-eqz v0, :cond_e8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    :cond_e8
    const-string v0, "play.google.com"

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TalkingData Game Analytics Android_Native_SDK SDK Init:\nSDK version is3.2.7 gp\nApp ID is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Channel is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    const-string v0, "td_pefercen_profile"

    const-string v1, "appkey"

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td_pefercen_profile"

    const-string v1, "gameappkey"

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td_pefercen_profile"

    const-string v1, "partnerId"

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_9c .. :try_end_135} :catchall_137

    goto/16 :goto_27

    :catchall_137
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_13a
    move-exception v0

    :try_start_13b
    sget-boolean v3, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v3, :cond_142

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_142
    move-object v0, v1

    goto/16 :goto_9c

    :cond_145
    sput-object p1, Lcom/tendcloud/tenddata/TalkingDataGA;->b:Ljava/lang/String;
    :try_end_147
    .catchall {:try_start_13b .. :try_end_147} :catchall_137

    goto/16 :goto_9e
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.onEvent()# event id is empty."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_38

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_37

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_37

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_37
    move-object p2, v0

    :cond_38
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->a:Z

    if-nez v0, :cond_90

    if-eqz p1, :cond_90

    const-string v0, "__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingDataGA.onEvent()# eventid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_83

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " map size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_90
    new-instance v0, Lcom/tendcloud/tenddata/game/cb;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/tendcloud/tenddata/game/cb;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a5} :catch_a7

    goto/16 :goto_13

    :catch_a7
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TalkingDataGA.onEvent#"

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.onEvent()#SDK not initialized. "

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_17

    :catch_1e
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TalkingDataGA.onEvent#"

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static final onKill()V
    .registers 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.onKill()#SDK not initialized."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-static {}, Lcom/tendcloud/tenddata/game/br;->b()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->d()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_17

    :catch_1f
    move-exception v0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.onKill() #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public static final onPause(Landroid/app/Activity;)V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_2
    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TalkingDataGA.onPause()#SDK not initialized"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_6

    :catch_1d
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TalkingDataGA.onPause#"

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    const/4 v0, 0x1

    :try_start_30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.onResume# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_61} :catch_1d

    goto :goto_6
.end method

.method public static final onResume(Landroid/app/Activity;)V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_2
    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bl;->a:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/content/Context;)V

    :cond_18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.onResume# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->o:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->b(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_a

    :catch_4b
    move-exception v0

    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.onResume# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static removeGlobalKV(Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.removeGlobalKV# key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_1e
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setGlobalKV(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkingDataGA.setGlobalKV# key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->l:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setPushDisabled()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->e:Z

    return-void
.end method

.method public static setVerboseLogDisabled()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bp;->a:Z

    return-void
.end method
