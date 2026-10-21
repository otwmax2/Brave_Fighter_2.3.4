###### Class de.greenrobot.event.EventBus (de.greenrobot.event.EventBus)
.class public Lde/greenrobot/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/EventBus$2;,
        Lde/greenrobot/event/EventBus$PostCallback;,
        Lde/greenrobot/event/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_METHOD_NAME:Ljava/lang/String; = "onEvent"

.field public static TAG:Ljava/lang/String;

.field private static volatile defaultInstance:Lde/greenrobot/event/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final asyncPoster:Lde/greenrobot/event/AsyncPoster;

.field private final backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lde/greenrobot/event/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private logSubscriberExceptions:Z

.field private final mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subscribed:Z

.field private final subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lde/greenrobot/event/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    const-string v0, "Event"

    sput-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lde/greenrobot/event/EventBus$1;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$1;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    .line 111
    new-instance v0, Lde/greenrobot/event/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/event/HandlerPoster;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    .line 112
    new-instance v0, Lde/greenrobot/event/BackgroundPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/BackgroundPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    .line 113
    new-instance v0, Lde/greenrobot/event/AsyncPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/AsyncPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    .line 114
    new-instance v0, Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-direct {v0}, Lde/greenrobot/event/SubscriberMethodFinder;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 116
    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 545
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 546
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 544
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 550
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    return-void
.end method

.method public static clearCaches()V
    .registers 1

    .prologue
    .line 85
    invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearCaches()V

    .line 86
    sget-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public static clearSkipMethodNameVerifications()V
    .registers 0

    .prologue
    .line 100
    invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearSkipMethodVerifications()V

    .line 101
    return-void
.end method

.method private findEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v3

    .line 527
    :try_start_3
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 528
    .local v1, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v1, :cond_29

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .restart local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 531
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_13
    if-eqz v0, :cond_24

    .line 532
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_13

    .line 536
    :cond_24
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    monitor-exit v3

    return-object v1

    .line 539
    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public static getDefault()Lde/greenrobot/event/EventBus;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_13

    .line 74
    const-class v1, Lde/greenrobot/event/EventBus;

    monitor-enter v1

    .line 75
    :try_start_7
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_12

    .line 76
    new-instance v0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    .line 78
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 80
    :cond_13
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    return-object v0

    .line 78
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    .registers 16
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lde/greenrobot/event/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 459
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 460
    .local v3, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-direct {p0, v3}, Lde/greenrobot/event/EventBus;->findEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 461
    .local v4, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v8, 0x0

    .line 462
    .local v8, "subscriptionFound":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 463
    .local v2, "countTypes":I
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_10
    if-ge v5, v2, :cond_5d

    .line 464
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 466
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 467
    :try_start_19
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 468
    .local v9, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_52

    .line 469
    if-eqz v9, :cond_4f

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4f

    .line 470
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/greenrobot/event/Subscription;

    .line 471
    .local v7, "subscription":Lde/greenrobot/event/Subscription;
    iput-object p1, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 472
    iput-object v7, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "aborted":Z
    :try_start_3f
    iget-boolean v10, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v7, p1, v10}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 476
    iget-boolean v0, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_55

    .line 478
    iput-object v11, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 479
    iput-object v11, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 480
    iput-boolean v12, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 482
    if-eqz v0, :cond_2e

    .line 486
    .end local v0    # "aborted":Z
    .end local v7    # "subscription":Lde/greenrobot/event/Subscription;
    :cond_4e
    const/4 v8, 0x1

    .line 463
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 468
    .end local v9    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :catchall_52
    move-exception v10

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v10

    .line 478
    .restart local v0    # "aborted":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "subscription":Lde/greenrobot/event/Subscription;
    .restart local v9    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :catchall_55
    move-exception v10

    iput-object v11, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 479
    iput-object v11, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 480
    iput-boolean v12, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    throw v10

    .line 489
    .end local v0    # "aborted":Z
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "subscription":Lde/greenrobot/event/Subscription;
    .end local v9    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :cond_5d
    if-nez v8, :cond_87

    .line 490
    sget-object v10, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No subscribers registered for event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-class v10, Lde/greenrobot/event/NoSubscriberEvent;

    if-eq v3, v10, :cond_87

    const-class v10, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eq v3, v10, :cond_87

    .line 492
    new-instance v10, Lde/greenrobot/event/NoSubscriberEvent;

    invoke-direct {v10, p0, p1}, Lde/greenrobot/event/NoSubscriberEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 495
    :cond_87
    return-void
.end method

.method private postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
    .registers 7
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "isMainThread"    # Z

    .prologue
    .line 498
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_2c
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 522
    :goto_2f
    return-void

    .line 503
    :pswitch_30
    if-eqz p3, :cond_36

    .line 504
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_2f

    .line 506
    :cond_36
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/HandlerPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_2f

    .line 510
    :pswitch_3c
    if-eqz p3, :cond_44

    .line 511
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/BackgroundPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_2f

    .line 513
    :cond_44
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_2f

    .line 517
    :pswitch_48
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/AsyncPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_2f

    .line 498
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_30
        :pswitch_3c
        :pswitch_48
    .end packed-switch
.end method

.method private declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "sticky"    # Z
    .param p4, "priority"    # I

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/SubscriberMethod;

    .line 189
    .local v1, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    invoke-direct {p0, p1, v1, p3, p4}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 186
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .end local v2    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 191
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_22
    monitor-exit p0

    return-void
.end method

.method private varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    .registers 15
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "sticky"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p4, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "moreEventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 228
    .local v5, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {v8, v5, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 230
    .local v7, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/greenrobot/event/SubscriberMethod;

    .line 231
    .local v6, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    iget-object v8, v6, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    if-ne p4, v8, :cond_27

    .line 232
    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, p3, v8}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_f

    .line 227
    .end local v5    # "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .end local v7    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_24
    move-exception v8

    monitor-exit p0

    throw v8

    .line 233
    .restart local v5    # "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .restart local v7    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_27
    if-eqz p5, :cond_f

    .line 234
    move-object v0, p5

    .local v0, "arr$":[Ljava/lang/Class;
    :try_start_2a
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2c
    if-ge v3, v4, :cond_f

    aget-object v1, v0, v3

    .line 235
    .local v1, "eventType2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, v6, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    if-ne v1, v8, :cond_39

    .line 236
    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, p3, v8}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_24

    goto :goto_f

    .line 234
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 242
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "eventType2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    :cond_3c
    monitor-exit p0

    return-void
.end method

.method public static skipMethodVerificationFor(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationFor(Ljava/lang/Class;)V

    .line 96
    return-void
.end method

.method private subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    .registers 18
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lde/greenrobot/event/SubscriberMethod;
    .param p3, "sticky"    # Z
    .param p4, "priority"    # I

    .prologue
    .line 246
    const/4 v10, 0x1

    iput-boolean v10, p0, Lde/greenrobot/event/EventBus;->subscribed:Z

    .line 247
    iget-object v1, p2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 248
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    .local v9, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    new-instance v4, Lde/greenrobot/event/Subscription;

    move/from16 v0, p4

    invoke-direct {v4, p1, p2, v0}, Lde/greenrobot/event/Subscription;-><init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;I)V

    .line 250
    .local v4, "newSubscription":Lde/greenrobot/event/Subscription;
    if-nez v9, :cond_6c

    .line 251
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v9    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 252
    .restart local v9    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v10, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_20
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .line 266
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-gt v2, v5, :cond_38

    .line 267
    if-eq v2, v5, :cond_35

    iget v11, v4, Lde/greenrobot/event/Subscription;->priority:I

    invoke-virtual {v9, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lde/greenrobot/event/Subscription;

    iget v10, v10, Lde/greenrobot/event/Subscription;->priority:I

    if-le v11, v10, :cond_a9

    .line 268
    :cond_35
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 273
    :cond_38
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 274
    .local v7, "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v7, :cond_4c

    .line 275
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .restart local v7    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v10, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_4c
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    if-eqz p3, :cond_6b

    .line 282
    iget-object v11, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v11

    .line 283
    :try_start_54
    iget-object v10, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 284
    .local v6, "stickyEvent":Ljava/lang/Object;
    monitor-exit v11
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_ad

    .line 285
    if-eqz v6, :cond_6b

    .line 288
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    if-ne v10, v11, :cond_b0

    const/4 v10, 0x1

    :goto_68
    invoke-direct {p0, v4, v6, v10}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 291
    .end local v6    # "stickyEvent":Ljava/lang/Object;
    :cond_6b
    return-void

    .line 254
    .end local v2    # "i":I
    .end local v5    # "size":I
    .end local v7    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_6c
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/greenrobot/event/Subscription;

    .line 255
    .local v8, "subscription":Lde/greenrobot/event/Subscription;
    invoke-virtual {v8, v4}, Lde/greenrobot/event/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 256
    new-instance v10, Lde/greenrobot/event/EventBusException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subscriber "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already registered to event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 266
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "subscription":Lde/greenrobot/event/Subscription;
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 284
    .restart local v7    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_ad
    move-exception v10

    :try_start_ae
    monitor-exit v11
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v10

    .line 288
    .restart local v6    # "stickyEvent":Ljava/lang/Object;
    :cond_b0
    const/4 v10, 0x0

    goto :goto_68
.end method

.method private unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    .local v3, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/Subscription;>;"
    if-eqz v3, :cond_28

    .line 323
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 324
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_28

    .line 325
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/Subscription;

    .line 326
    .local v2, "subscription":Lde/greenrobot/event/Subscription;
    iget-object v4, v2, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v4, p1, :cond_25

    .line 327
    const/4 v4, 0x0

    iput-boolean v4, v2, Lde/greenrobot/event/Subscription;->active:Z

    .line 328
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    add-int/lit8 v0, v0, -0x1

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 324
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 334
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "subscription":Lde/greenrobot/event/Subscription;
    :cond_28
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 381
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus$PostingThreadState;

    .line 382
    .local v0, "postingState":Lde/greenrobot/event/EventBus$PostingThreadState;
    iget-boolean v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    if-nez v1, :cond_14

    .line 383
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_14
    if-nez p1, :cond_1e

    .line 386
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "Event may not be null"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_1e
    iget-object v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    if-eq v1, p1, :cond_2a

    .line 388
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "Only the currently handled event may be aborted"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_2a
    iget-object v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    iget-object v1, v1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    sget-object v2, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    if-eq v1, v2, :cond_3c

    .line 390
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, " event handlers may only abort the incoming event"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_3c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 394
    return-void
.end method

.method public configureLogSubscriberExceptions(Z)V
    .registers 4
    .param p1, "logSubscriberExceptions"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->subscribed:Z

    if-eqz v0, :cond_c

    .line 124
    new-instance v0, Lde/greenrobot/event/EventBusException;

    const-string v1, "This method must be called before any registration"

    invoke-direct {v0, v1}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_c
    iput-boolean p1, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 127
    return-void
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 416
    :try_start_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 417
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    .registers 5
    .param p1, "pendingPost"    # Lde/greenrobot/event/PendingPost;

    .prologue
    .line 559
    iget-object v0, p1, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;

    .line 560
    .local v0, "event":Ljava/lang/Object;
    iget-object v1, p1, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;

    .line 561
    .local v1, "subscription":Lde/greenrobot/event/Subscription;
    invoke-static {p1}, Lde/greenrobot/event/PendingPost;->releasePendingPost(Lde/greenrobot/event/PendingPost;)V

    .line 562
    iget-boolean v2, v1, Lde/greenrobot/event/Subscription;->active:Z

    if-eqz v2, :cond_e

    .line 563
    invoke-virtual {p0, v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 565
    :cond_e
    return-void
.end method

.method invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .registers 10
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v3, v3, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v4, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_a5

    .line 591
    :goto_f
    return-void

    .line 570
    :catch_10
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 572
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, p2, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eqz v3, :cond_69

    .line 574
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p2

    .line 576
    check-cast v2, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 577
    .local v2, "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " caused exception in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 580
    .end local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :cond_69
    iget-boolean v3, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-eqz v3, :cond_99

    .line 581
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not dispatch event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to subscribing class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    :cond_99
    new-instance v2, Lde/greenrobot/event/SubscriberExceptionEvent;

    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-direct {v2, p0, v0, p2, v3}, Lde/greenrobot/event/SubscriberExceptionEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    .restart local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    invoke-virtual {p0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 588
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :catch_a5
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected exception"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public post(Ljava/lang/Object;)V
    .registers 8
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 351
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus$PostingThreadState;

    .line 352
    .local v1, "postingState":Lde/greenrobot/event/EventBus$PostingThreadState;
    iget-object v0, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 353
    .local v0, "eventQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    if-eqz v2, :cond_14

    .line 372
    :goto_13
    return-void

    .line 358
    :cond_14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v2, v5, :cond_2f

    move v2, v3

    :goto_1f
    iput-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    .line 359
    iput-boolean v3, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 360
    iget-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    if-eqz v2, :cond_31

    .line 361
    new-instance v2, Lde/greenrobot/event/EventBusException;

    const-string v3, "Internal error. Abort state was not reset"

    invoke-direct {v2, v3}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    move v2, v4

    .line 358
    goto :goto_1f

    .line 364
    :cond_31
    :goto_31
    :try_start_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 365
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lde/greenrobot/event/EventBus;->postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_40

    goto :goto_31

    .line 368
    :catchall_40
    move-exception v2

    iput-boolean v4, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 369
    iput-boolean v4, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    throw v2

    .line 368
    :cond_46
    iput-boolean v4, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 369
    iput-boolean v4, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    goto :goto_13
.end method

.method public postSticky(Ljava/lang/Object;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 402
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 403
    :try_start_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 406
    invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 407
    return-void

    .line 404
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public register(Ljava/lang/Object;)V
    .registers 4
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string v0, "onEvent"

    invoke-direct {p0, p1, v0, v1, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 141
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 150
    const-string v0, "onEvent"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 151
    return-void
.end method

.method public varargs register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "moreEventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "onEvent"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method public register(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 159
    return-void
.end method

.method public varargs register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 11
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    .local p3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "moreEventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 207
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .registers 5
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 166
    const-string v0, "onEvent"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 167
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 174
    const-string v0, "onEvent"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 175
    return-void
.end method

.method public varargs registerSticky(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "moreEventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "onEvent"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 215
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 183
    return-void
.end method

.method public varargs registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 11
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    .local p3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "moreEventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 223
    return-void
.end method

.method public removeAllStickyEvents()V
    .registers 3

    .prologue
    .line 453
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 454
    :try_start_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 427
    :try_start_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 428
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 437
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v3

    .line 438
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 439
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 440
    .local v1, "existingEvent":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 441
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v2, 0x1

    monitor-exit v3

    .line 444
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1a

    .line 446
    .end local v0    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v1    # "existingEvent":Ljava/lang/Object;
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 8
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 339
    .local v2, "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_29

    .line 340
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 341
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 338
    .end local v0    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 343
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_22
    :try_start_22
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 347
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_27
    monitor-exit p0

    return-void

    .line 345
    :cond_29
    :try_start_29
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriber to unregister was not registered before: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_1f

    goto :goto_27
.end method

.method public varargs declared-synchronized unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 11
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    .local p2, "eventTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_1
    array-length v5, p2

    if-nez v5, :cond_f

    .line 303
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Provide at least one event class"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_c

    .line 302
    :catchall_c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 305
    :cond_f
    :try_start_f
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 306
    .local v4, "subscribedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v4, :cond_36

    .line 307
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1c
    if-ge v2, v3, :cond_29

    aget-object v1, v0, v2

    .line 308
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v1}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 309
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 311
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 312
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_c

    .line 317
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 315
    :cond_36
    :try_start_36
    sget-object v5, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscriber to unregister was not registered before: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_c

    goto :goto_34
.end method

###### Class de.greenrobot.event.EventBus.AnonymousClass1 (de.greenrobot.event.EventBus$1)
.class Lde/greenrobot/event/EventBus$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lde/greenrobot/event/EventBus$PostingThreadState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/greenrobot/event/EventBus;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lde/greenrobot/event/EventBus$1;->this$0:Lde/greenrobot/event/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lde/greenrobot/event/EventBus$PostingThreadState;
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lde/greenrobot/event/EventBus$PostingThreadState;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus$PostingThreadState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lde/greenrobot/event/EventBus$1;->initialValue()Lde/greenrobot/event/EventBus$PostingThreadState;

    move-result-object v0

    return-object v0
.end method

###### Class de.greenrobot.event.EventBus.AnonymousClass2 (de.greenrobot.event.EventBus$2)
.class synthetic Lde/greenrobot/event/EventBus$2;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$greenrobot$event$ThreadMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 498
    invoke-static {}, Lde/greenrobot/event/ThreadMode;->values()[Lde/greenrobot/event/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    :try_start_9
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    sget-object v1, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    sget-object v1, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    sget-object v1, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    sget-object v1, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class de.greenrobot.event.EventBus.PostCallback (de.greenrobot.event.EventBus$PostCallback)
.class interface abstract Lde/greenrobot/event/EventBus$PostCallback;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PostCallback"
.end annotation


# virtual methods
.method public abstract onPostCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberExceptionEvent;",
            ">;)V"
        }
    .end annotation
.end method

###### Class de.greenrobot.event.EventBus.PostingThreadState (de.greenrobot.event.EventBus$PostingThreadState)
.class final Lde/greenrobot/event/EventBus$PostingThreadState;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PostingThreadState"
.end annotation


# instance fields
.field canceled:Z

.field event:Ljava/lang/Object;

.field eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field isMainThread:Z

.field isPosting:Z

.field subscription:Lde/greenrobot/event/Subscription;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    return-void
.end method
