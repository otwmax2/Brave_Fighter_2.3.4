###### Class com.facebook.appevents.AnalyticsUserIDStore (com.facebook.appevents.AnalyticsUserIDStore)
.class Lcom/facebook/appevents/AnalyticsUserIDStore;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"


# static fields
.field private static final ANALYTICS_USER_ID_KEY:Ljava/lang/String; = "com.facebook.appevents.AnalyticsUserIDStore.userID"

.field private static final TAG:Ljava/lang/String;

.field private static volatile initialized:Z

.field private static lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 32
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_e

    .line 82
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 86
    :cond_e
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 88
    :try_start_17
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_23

    .line 90
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_23
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private static initAndWait()V
    .registers 3

    .prologue
    .line 95
    sget-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v1, :cond_5

    .line 112
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_4
    return-void

    .line 99
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 101
    :try_start_e
    sget-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_3a

    if-eqz v1, :cond_1c

    .line 110
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    .line 106
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    .line 108
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_3a

    .line 110
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_3a
    move-exception v1

    sget-object v2, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public static initStore()V
    .registers 2

    .prologue
    .line 42
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_5

    .line 52
    :goto_4
    return-void

    .line 46
    :cond_5
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AnalyticsUserIDStore$1;

    invoke-direct {v1}, Lcom/facebook/appevents/AnalyticsUserIDStore$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public static setUserID(Ljava/lang/String;)V
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 56
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_11

    .line 57
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 61
    :cond_11
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AnalyticsUserIDStore$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AnalyticsUserIDStore$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

###### Class com.facebook.appevents.AnalyticsUserIDStore.AnonymousClass1 (com.facebook.appevents.AnalyticsUserIDStore$1)
.class final Lcom/facebook/appevents/AnalyticsUserIDStore$1;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$000()V

    .line 50
    return-void
.end method

###### Class com.facebook.appevents.AnalyticsUserIDStore.AnonymousClass2 (com.facebook.appevents.AnalyticsUserIDStore$2)
.class final Lcom/facebook/appevents/AnalyticsUserIDStore$2;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AnalyticsUserIDStore;->setUserID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/AnalyticsUserIDStore$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 66
    :try_start_b
    iget-object v2, p0, Lcom/facebook/appevents/AnalyticsUserIDStore$2;->val$id:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_34

    .line 74
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 76
    return-void

    .line 74
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_34
    move-exception v2

    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method
