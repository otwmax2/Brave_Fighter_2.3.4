###### Class com.facebook.FacebookSdk (com.facebook.FacebookSdk)
.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field static final CALLBACK_OFFSET_CHANGED_AFTER_INIT:Ljava/lang/String; = "The callback request code offset can\'t be updated once the SDK is initialized."

.field static final CALLBACK_OFFSET_NEGATIVE:Ljava/lang/String; = "The callback request code offset can\'t be negative."

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THEME:I

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_THEME:Ljava/lang/String; = "com.facebook.sdk.WebDialogTheme"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static cacheDir:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkInitialized:Ljava/lang/Boolean;

.field private static volatile webDialogTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 63
    const-class v0, Lcom/facebook/FacebookSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    aput-object v2, v1, v4

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    .line 72
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 75
    sput-boolean v4, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 81
    const v0, 0xface

    sput v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 83
    sget v0, Lcom/facebook/R$style;->com_facebook_activity_theme:I

    sput v0, Lcom/facebook/FacebookSdk;->DEFAULT_THEME:I

    .line 84
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 94
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 129
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 287
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 288
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static clearLoggingBehaviors()V
    .registers 2

    .prologue
    .line 315
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 316
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 435
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 436
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 703
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 704
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 722
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 723
    sget-object v0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 663
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 664
    if-nez p0, :cond_7

    .line 693
    :cond_6
    :goto_6
    return-object v6

    .line 667
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 668
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_6

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_13
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_3b

    move-result-object v2

    .line 680
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 681
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_6

    array-length v7, v5

    if-eqz v7, :cond_6

    .line 687
    :try_start_1e
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_23} :catch_3d

    move-result-object v1

    .line 692
    .local v1, "md":Ljava/security/MessageDigest;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 693
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 676
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    :catch_3b
    move-exception v0

    .line 677
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6

    .line 688
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signatures":[Landroid/content/pm/Signature;
    :catch_3d
    move-exception v0

    .line 689
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_6
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 776
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 777
    sget-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .registers 1

    .prologue
    .line 795
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 796
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .registers 1

    .prologue
    .line 740
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 741
    sget-object v0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 384
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_b

    .line 386
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 388
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 389
    sget-object v0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 388
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 412
    sget-object v0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 459
    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 570
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 571
    const-string v1, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 573
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLoggingBehaviors()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 273
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 274
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static getOnProgressThreshold()J
    .registers 2

    .prologue
    .line 596
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 597
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 558
    const-string v0, "4.17.0"

    return-object v0
.end method

.method public static getWebDialogTheme()I
    .registers 1

    .prologue
    .line 757
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 758
    sget v0, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    return v0
.end method

.method public static isDebugEnabled()Z
    .registers 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .registers 2
    .param p0, "requestCode"    # I

    .prologue
    .line 809
    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_c

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 260
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .registers 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .registers 3
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 331
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 332
    :try_start_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 333
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    if-nez p0, :cond_3

    .line 655
    :cond_2
    :goto_2
    return-void

    .line 616
    :cond_3
    const/4 v0, 0x0

    .line 618
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 618
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_6c

    move-result-object v0

    .line 624
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 628
    sget-object v4, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v4, :cond_40

    .line 629
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, "appId":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_71

    move-object v2, v1

    .line 631
    check-cast v2, Ljava/lang/String;

    .line 632
    .local v2, "appIdString":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 633
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 644
    .end local v1    # "appId":Ljava/lang/Object;
    .end local v2    # "appIdString":Ljava/lang/String;
    :cond_40
    :goto_40
    sget-object v4, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v4, :cond_4e

    .line 645
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 648
    :cond_4e
    sget-object v4, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v4, :cond_5c

    .line 649
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.ClientToken"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 652
    :cond_5c
    sget v4, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    if-nez v4, :cond_2

    .line 653
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/facebook/FacebookSdk;->setWebDialogTheme(I)V

    goto :goto_2

    .line 620
    :catch_6c
    move-exception v3

    .line 621
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 635
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appId":Ljava/lang/Object;
    .restart local v2    # "appIdString":Ljava/lang/String;
    :cond_6e
    sput-object v2, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_40

    .line 637
    .end local v2    # "appIdString":Ljava/lang/String;
    :cond_71
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_40

    .line 638
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/GraphResponse;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 483
    if-eqz p0, :cond_4

    if-nez p1, :cond_29

    .line 484
    :cond_4
    :try_start_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Both context and applicationId must be non-null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    .line 545
    :catch_c
    move-exception v4

    .line 547
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "Facebook-publish"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 548
    new-instance v19, Lcom/facebook/GraphResponse;

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Lcom/facebook/FacebookRequestError;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct/range {v19 .. v22}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_28
    return-object v19

    .line 486
    :cond_29
    :try_start_29
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v8

    .line 487
    .local v8, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const-string v19, "com.facebook.sdk.attributionTracking"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 488
    .local v14, "preferences":Landroid/content/SharedPreferences;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ping"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 489
    .local v13, "pingKey":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "jsonKey":Ljava/lang/String;
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-interface {v14, v13, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 491
    .local v10, "lastPing":J
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v14, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_78} :catch_c

    move-result-object v12

    .line 495
    .local v12, "lastResponseJSON":Ljava/lang/String;
    :try_start_79
    sget-object v19, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 498
    invoke-static/range {p0 .. p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 499
    invoke-static/range {p0 .. p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v21

    .line 495
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p0

    invoke-static {v0, v8, v1, v2, v3}, Lcom/facebook/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_8e} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8e} :catch_c

    move-result-object v15

    .line 505
    .local v15, "publishParams":Lorg/json/JSONObject;
    :try_start_8f
    const-string v19, "%s/activities"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p1, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 506
    .local v18, "publishUrl":Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ae} :catch_c

    move-result-object v16

    .line 508
    .local v16, "publishRequest":Lcom/facebook/GraphRequest;
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-eqz v19, :cond_105

    .line 509
    const/4 v6, 0x0

    .line 511
    .local v6, "graphObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_be

    .line 512
    :try_start_b8
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_b8 .. :try_end_bd} :catch_12e
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bd} :catch_c

    .end local v6    # "graphObject":Lorg/json/JSONObject;
    .local v7, "graphObject":Lorg/json/JSONObject;
    move-object v6, v7

    .line 518
    .end local v7    # "graphObject":Lorg/json/JSONObject;
    .restart local v6    # "graphObject":Lorg/json/JSONObject;
    :cond_be
    :goto_be
    if-nez v6, :cond_f0

    .line 519
    :try_start_c0
    const-string v19, "true"

    const/16 v20, 0x0

    new-instance v21, Lcom/facebook/GraphRequestBatch;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    invoke-direct/range {v21 .. v22}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static/range {v19 .. v21}, Lcom/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    .line 523
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/facebook/GraphResponse;

    goto/16 :goto_28

    .line 501
    .end local v6    # "graphObject":Lorg/json/JSONObject;
    .end local v15    # "publishParams":Lorg/json/JSONObject;
    .end local v16    # "publishRequest":Lcom/facebook/GraphRequest;
    .end local v18    # "publishUrl":Ljava/lang/String;
    :catch_e3
    move-exception v4

    .line 502
    .local v4, "e":Lorg/json/JSONException;
    new-instance v19, Lcom/facebook/FacebookException;

    const-string v20, "An error occurred while publishing install."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 525
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v6    # "graphObject":Lorg/json/JSONObject;
    .restart local v15    # "publishParams":Lorg/json/JSONObject;
    .restart local v16    # "publishRequest":Lcom/facebook/GraphRequest;
    .restart local v18    # "publishUrl":Ljava/lang/String;
    :cond_f0
    new-instance v19, Lcom/facebook/GraphResponse;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_28

    .line 530
    .end local v6    # "graphObject":Lorg/json/JSONObject;
    :cond_105
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v17

    .line 533
    .local v17, "publishResponse":Lcom/facebook/GraphResponse;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 534
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 535
    invoke-interface {v5, v13, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v19

    if-eqz v19, :cond_127

    .line 539
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 541
    :cond_127
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_12a} :catch_c

    move-object/from16 v19, v17

    .line 543
    goto/16 :goto_28

    .line 515
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "publishResponse":Lcom/facebook/GraphResponse;
    .restart local v6    # "graphObject":Lorg/json/JSONObject;
    :catch_12e
    move-exception v19

    goto :goto_be
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/FacebookSdk$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public static removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .registers 3
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 303
    sget-object v1, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 304
    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 305
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 177
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 178
    monitor-exit v0

    return-void

    .line 177
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;I)V
    .registers 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I

    .prologue
    .line 143
    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 144
    monitor-exit v0

    return-void

    .line 143
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;ILcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callbackRequestCodeOffset"    # I
    .param p2, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;

    .prologue
    .line 161
    const-class v1, Lcom/facebook/FacebookSdk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-eq p1, v0, :cond_1a

    .line 162
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be updated once the SDK is initialized."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 161
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0

    .line 164
    :cond_1a
    if-gez p1, :cond_24

    .line 165
    :try_start_1c
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "The callback request code offset can\'t be negative."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_24
    sput p1, Lcom/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 168
    invoke-static {p0, p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_17

    .line 169
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .registers 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/facebook/FacebookSdk$InitializeCallback;

    .prologue
    .line 190
    const-class v2, Lcom/facebook/FacebookSdk;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 191
    if-eqz p1, :cond_10

    .line 192
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5e

    .line 253
    :cond_10
    :goto_10
    monitor-exit v2

    return-void

    .line 197
    :cond_12
    :try_start_12
    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 202
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 207
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 211
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 214
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    sget-object v3, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 218
    sget-object v1, Lcom/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 220
    new-instance v1, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v3, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v3}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v1, v3}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 228
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v1, p1, p0}, Lcom/facebook/FacebookSdk$3;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 252
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5d
    .catchall {:try_start_12 .. :try_end_5d} :catchall_5e

    goto :goto_10

    .line 190
    .end local v0    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :catchall_5e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .registers 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 712
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .registers 1
    .param p0, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 731
    sput-object p0, Lcom/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .registers 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 785
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->cacheDir:Lcom/facebook/internal/LockOnGetVariable;

    .line 786
    return-void
.end method

.method public static setClientToken(Ljava/lang/String;)V
    .registers 1
    .param p0, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 749
    sput-object p0, Lcom/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 399
    const-string v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    sget-object v1, Lcom/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_8
    sput-object p0, Lcom/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .registers 3
    .param p0, "facebookDomain"    # Ljava/lang/String;

    .prologue
    .line 424
    sget-object v0, Lcom/facebook/FacebookSdk;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Calling setFacebookDomain from non-DEBUG code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sput-object p0, Lcom/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public static setGraphApiVersion(Ljava/lang/String;)V
    .registers 2
    .param p0, "graphApiVersion"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 448
    sput-object p0, Lcom/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 450
    :cond_10
    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .prologue
    .line 348
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 349
    return-void
.end method

.method public static setLegacyTokenUpgradeSupported(Z)V
    .registers 1
    .param p0, "supported"    # Z

    .prologue
    .line 372
    sput-boolean p0, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    .line 373
    return-void
.end method

.method public static setLimitEventAndDataUsage(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "limitEventUsage"    # Z

    .prologue
    .line 586
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "limitEventUsage"

    .line 588
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .registers 4
    .param p0, "threshold"    # J

    .prologue
    .line 607
    sget-object v0, Lcom/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 608
    return-void
.end method

.method public static setWebDialogTheme(I)V
    .registers 1
    .param p0, "theme"    # I

    .prologue
    .line 766
    if-eqz p0, :cond_5

    .end local p0    # "theme":I
    :goto_2
    sput p0, Lcom/facebook/FacebookSdk;->webDialogTheme:I

    .line 767
    return-void

    .line 766
    .restart local p0    # "theme":I
    :cond_5
    sget p0, Lcom/facebook/FacebookSdk;->DEFAULT_THEME:I

    goto :goto_2
.end method

.method private static updateGraphDebugBehavior()V
    .registers 2

    .prologue
    .line 361
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 363
    sget-object v0, Lcom/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_1b
    return-void
.end method

###### Class com.facebook.FacebookSdk.AnonymousClass1 (com.facebook.FacebookSdk$1)
.class final Lcom/facebook/FacebookSdk$1;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/FacebookSdk$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacebookSdk #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/FacebookSdk$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.FacebookSdk.AnonymousClass2 (com.facebook.FacebookSdk$2)
.class final Lcom/facebook/FacebookSdk$2;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/facebook/FacebookSdk;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/FacebookSdk$2;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.FacebookSdk.AnonymousClass3 (com.facebook.FacebookSdk$3)
.class final Lcom/facebook/FacebookSdk$3;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Lcom/facebook/FacebookSdk$3;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$3;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/facebook/FacebookSdk$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->loadCurrentAccessToken()Z

    .line 233
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->loadCurrentProfile()Z

    .line 234
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 235
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 238
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 241
    :cond_1d
    iget-object v0, p0, Lcom/facebook/FacebookSdk$3;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    if-eqz v0, :cond_26

    .line 242
    iget-object v0, p0, Lcom/facebook/FacebookSdk$3;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    invoke-interface {v0}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    .line 246
    :cond_26
    iget-object v0, p0, Lcom/facebook/FacebookSdk$3;->val$applicationContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.facebook.FacebookSdk.AnonymousClass4 (com.facebook.FacebookSdk$4)
.class final Lcom/facebook/FacebookSdk$4;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 471
    iput-object p1, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/FacebookSdk$4;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    .line 475
    return-void
.end method

###### Class com.facebook.FacebookSdk.InitializeCallback (com.facebook.FacebookSdk$InitializeCallback)
.class public interface abstract Lcom/facebook/FacebookSdk$InitializeCallback;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializeCallback"
.end annotation


# virtual methods
.method public abstract onInitialized()V
.end method
