###### Class com.facebook.appevents.internal.ActivityLifecycleTracker (com.facebook.appevents.internal.ActivityLifecycleTracker)
.class public Lcom/facebook/appevents/internal/ActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"


# static fields
.field private static final INCORRECT_IMPL_WARNING:Ljava/lang/String; = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static currentActivityAppearTime:J

.field private static volatile currentFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static volatile currentSession:Lcom/facebook/appevents/internal/SessionInfo;

.field private static foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static tracking:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Lcom/facebook/appevents/internal/SessionInfo;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;
    .registers 1
    .param p0, "x0"    # Lcom/facebook/appevents/internal/SessionInfo;

    .prologue
    .line 43
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 43
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700()J
    .registers 2

    .prologue
    .line 43
    sget-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    return-wide v0
.end method

.method private static cancelCurrentTask()V
    .registers 2

    .prologue
    .line 280
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 281
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 284
    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    return-void
.end method

.method public static getCurrentSessionGuid()Ljava/util/UUID;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getSessionTimeoutInSeconds()I
    .registers 2

    .prologue
    .line 271
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 272
    .local v0, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-nez v0, :cond_f

    .line 273
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v1

    .line 276
    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSessionTimeoutInSeconds()I

    move-result v1

    goto :goto_e
.end method

.method public static isTracking()Z
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "currentTime":J
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;-><init>(Landroid/app/Activity;J)V

    .line 146
    .local v2, "handleActivityCreate":Ljava/lang/Runnable;
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method private static onActivityPaused(Landroid/app/Activity;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 200
    .local v2, "count":I
    if-gez v2, :cond_15

    .line 203
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 205
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v7, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_15
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    .local v4, "currentTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "activityName":Ljava/lang/String;
    new-instance v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    .line 266
    .local v3, "handleActivityPaused":Ljava/lang/Runnable;
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 152
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "currentTime":J
    sput-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    .line 155
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;-><init>(Landroid/app/Activity;J)V

    .line 195
    .local v2, "handleActivityResume":Ljava/lang/Runnable;
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public static startTracking(Landroid/app/Application;Ljava/lang/String;)V
    .registers 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 104
    :goto_a
    return-void

    .line 64
    :cond_b
    sput-object p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_a
.end method

###### Class com.facebook.appevents.internal.ActivityLifecycleTracker.AnonymousClass1 (com.facebook.appevents.internal.ActivityLifecycleTracker$1)
.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 73
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 88
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 82
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->onContextStop()V

    .line 94
    return-void
.end method

###### Class com.facebook.appevents.internal.ActivityLifecycleTracker.AnonymousClass2 (com.facebook.appevents.internal.ActivityLifecycleTracker$2)
.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .registers 4

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 120
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    if-nez v4, :cond_42

    .line 121
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, "applicationContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    .line 126
    .local v2, "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    if-eqz v2, :cond_1f

    .line 131
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v1, v0, v2, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 134
    :cond_1f
    new-instance v4, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 135
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    .line 136
    invoke-static {v4}, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;->create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v3

    .line 137
    .local v3, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/facebook/appevents/internal/SessionInfo;->setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V

    .line 142
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v1, v0, v3, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 144
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    .end local v3    # "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    :cond_42
    return-void
.end method

###### Class com.facebook.appevents.internal.ActivityLifecycleTracker.AnonymousClass3 (com.facebook.appevents.internal.ActivityLifecycleTracker$3)
.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .registers 4

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 158
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, "applicationContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 162
    new-instance v4, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 167
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v1, v0, v8, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 190
    :cond_28
    :goto_28
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 191
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 192
    return-void

    .line 168
    :cond_3d
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 169
    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    .line 170
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 171
    .local v2, "suspendTime":J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_83

    .line 177
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    .line 178
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v1, v0, v4, v5}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v1, v0, v8, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 184
    new-instance v4, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    goto :goto_28

    .line 185
    :cond_83
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_28

    .line 186
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    goto :goto_28
.end method

###### Class com.facebook.appevents.internal.ActivityLifecycleTracker.AnonymousClass4 (com.facebook.appevents.internal.ActivityLifecycleTracker$4)
.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 218
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    if-nez v3, :cond_17

    .line 221
    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 224
    :cond_17
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 225
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_45

    .line 229
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;)V

    .line 245
    .local v2, "task":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 247
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-interface {v3, v2, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 252
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_45
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$700()J

    move-result-wide v0

    .line 253
    .local v0, "appearTime":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_54

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 256
    .local v4, "timeSpentOnActivityInSeconds":J
    :cond_54
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    .line 258
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    .line 256
    invoke-static {v3, v6, v7, v4, v5}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 263
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 264
    return-void
.end method

###### Class com.facebook.appevents.internal.ActivityLifecycleTracker.AnonymousClass4.AnonymousClass1 (com.facebook.appevents.internal.ActivityLifecycleTracker$4$1)
.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_24

    .line 233
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    iget-object v0, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    iget-object v1, v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->clearSavedSessionFromDisk()V

    .line 239
    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 242
    :cond_24
    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 243
    return-void
.end method
