###### Class com.ironsource.mediationsdk.MediationInitializer (com.ironsource.mediationsdk.MediationInitializer)
.class Lcom/ironsource/mediationsdk/MediationInitializer;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;,
        Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;,
        Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;


# instance fields
.field private final GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDidReportInitialAvailability:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field private mIsInProgressMoreThan15Secs:Z

.field private mIsRevived:Z

.field private mListenForInit:Z

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mOnMediationInitializationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryAvailabilityLimit:I

.field private mRetryCounter:I

.field private mRetryDelay:I

.field private mRetryGrowLimit:I

.field private mRetryLimit:I

.field private mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

.field private mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mUserId:Ljava/lang/String;

.field private mUserIdType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "userId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 87
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 102
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    .line 126
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    .line 70
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IronSourceInitiatorHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    .line 75
    iput v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    .line 76
    iput v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    .line 77
    const/16 v0, 0x3e

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    .line 78
    const/16 v0, 0xc

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 83
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$1208(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    return v0
.end method

.method static synthetic access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return v0
.end method

.method static synthetic access$1602(Lcom/ironsource/mediationsdk/MediationInitializer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return p1
.end method

.method static synthetic access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    return v0
.end method

.method static synthetic access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    return v0
.end method

.method static synthetic access$1902(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->wasInitRevived()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;
    .registers 2

    .prologue
    .line 62
    const-class v1, Lcom/ironsource/mediationsdk/MediationInitializer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    if-nez v0, :cond_e

    .line 63
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    .line 65
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .registers 6
    .param p1, "status"    # Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInitStatus(old status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 123
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 124
    monitor-exit p0

    return-void

    .line 121
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 364
    if-nez p1, :cond_4

    .line 367
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p3, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 347
    .local v1, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_1b

    .line 348
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 349
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 351
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 359
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_1a
    :goto_1a
    return-object v1

    .line 354
    :cond_1b
    const-string v2, "userId"

    const-string v3, "it\'s missing"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 356
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1a
.end method

.method private wasInitRevived()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return v0
.end method


# virtual methods
.method public addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .prologue
    .line 325
    if-nez p1, :cond_3

    .line 329
    :goto_2
    return-void

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public declared-synchronized getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .registers 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 246
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 248
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;

    .line 249
    iput-object p3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 254
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_59
    .catchall {:try_start_1 .. :try_end_27} :catchall_5e

    .line 298
    :goto_27
    monitor-exit p0

    return-void

    .line 256
    :cond_29
    const/4 v1, 0x1

    :try_start_2a
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 257
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez v1, :cond_37

    .line 258
    new-instance v1, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 260
    :cond_37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/mediationsdk/MediationInitializer$2;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$2;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_58} :catch_59
    .catchall {:try_start_2a .. :try_end_58} :catchall_5e

    goto :goto_27

    .line 295
    :catch_59
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_27

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 292
    :cond_61
    :try_start_61
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Multiple calls to init are not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_80} :catch_59
    .catchall {:try_start_61 .. :try_end_80} :catchall_5e

    goto :goto_27
.end method

.method public declared-synchronized isInProgressMoreThan15Secs()Z
    .registers 2

    .prologue
    .line 321
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 303
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_f

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 306
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 308
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    :cond_1c
    return-void
.end method

.method public removeMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .prologue
    .line 332
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 336
    :cond_a
    :goto_a
    return-void

    .line 335
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .line 340
    return-void
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.AnonymousClass1 (com.ironsource.mediationsdk.MediationInitializer$1)
.class Lcom/ironsource/mediationsdk/MediationInitializer$1;
.super Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    .line 134
    .local v3, "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v5

    .line 136
    .local v5, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 137
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "userGenerated"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    :goto_1d
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "userIdType"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 159
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "userId"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_47
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 161
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "appKey"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_62
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    invoke-virtual {v3, v7, v8, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$502(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 167
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    if-eqz v6, :cond_1aa

    .line 168
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v6

    if-eqz v6, :cond_179

    .line 173
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 176
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getIntegration()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 177
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 182
    :cond_ba
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitiatedAdUnits()Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ce
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_141

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 184
    .local v4, "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v7

    invoke-interface {v4, v0, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitSuccess(Ljava/util/List;Z)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e3} :catch_e4

    goto :goto_ce

    .line 236
    .end local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    .end local v3    # "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    .end local v5    # "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_e4
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e8
    :goto_e8
    return-void

    .line 139
    .restart local v3    # "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v5    # "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_e9
    :try_start_e9
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_116

    .line 141
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "GAID"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :goto_10b
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 143
    :cond_116
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_139

    .line 145
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "UUID"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10b

    .line 147
    :cond_139
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10b

    .line 188
    .restart local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    :cond_141
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    if-eqz v6, :cond_e8

    .line 189
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v1

    .line 190
    .local v1, "data":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    if-eqz v1, :cond_16c

    .line 191
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto/16 :goto_e8

    .line 192
    :cond_16c
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto/16 :goto_e8

    .line 196
    .end local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    .end local v1    # "data":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :cond_179
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v6

    if-nez v6, :cond_e8

    .line 197
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 198
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 199
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_198
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 200
    .restart local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    const-string v7, "serverResponseIsNotValid"

    invoke-interface {v4, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_198

    .line 205
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_1aa
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1d3

    .line 206
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 207
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 208
    .restart local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    invoke-interface {v4}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onStillInProgressAfter15Secs()V

    goto :goto_1c3

    .line 212
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_1d3
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v6, :cond_218

    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ge v6, v7, :cond_218

    .line 213
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 214
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v6, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ge v6, v7, :cond_218

    .line 216
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1602(Lcom/ironsource/mediationsdk/MediationInitializer;I)I

    .line 218
    :cond_218
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v6, :cond_22a

    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ne v6, v7, :cond_273

    .line 219
    :cond_22a
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v6

    if-nez v6, :cond_273

    .line 220
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 221
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_244

    .line 222
    const-string v6, "noServerResponse"

    iput-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    .line 224
    :cond_244
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_260

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 225
    .restart local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-interface {v4, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_24e

    .line 228
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_260
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 230
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Mediation availability false reason: No server response"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 234
    :cond_273
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1208(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_278} :catch_e4

    goto/16 :goto_e8
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.AnonymousClass2 (com.ironsource.mediationsdk.MediationInitializer$2)
.class Lcom/ironsource/mediationsdk/MediationInitializer$2;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 265
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3a98

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer$2;JJ)V

    .line 286
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 265
    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1902(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 287
    return-void
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.AnonymousClass2.AnonymousClass1 (com.ironsource.mediationsdk.MediationInitializer$2$1)
.class Lcom/ironsource/mediationsdk/MediationInitializer$2$1;
.super Landroid/os/CountDownTimer;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/MediationInitializer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer$2;JJ)V
    .registers 6
    .param p1, "this$1"    # Lcom/ironsource/mediationsdk/MediationInitializer$2;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 276
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 277
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 278
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 279
    .local v0, "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    const-string v2, "noInternetConnection"

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_1e

    .line 282
    .end local v0    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No internet connection"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 285
    :cond_3b
    return-void
.end method

.method public onTick(J)V
    .registers 8
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 267
    const-wide/32 v2, 0xafc8

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2b

    .line 268
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 269
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 270
    .local v0, "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onStillInProgressAfter15Secs()V

    goto :goto_1b

    .line 273
    .end local v0    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_2b
    return-void
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.EInitStatus (com.ironsource.mediationsdk.MediationInitializer$EInitStatus)
.class final enum Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
.super Ljava/lang/Enum;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const-string v1, "NOT_INIT"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const-string v1, "INIT_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const-string v1, "INIT_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->$VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->$VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.InitRunnable (com.ironsource.mediationsdk.MediationInitializer$InitRunnable)
.class abstract Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InitRunnable"
.end annotation


# instance fields
.field isRecoverable:Z

.field protected listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->isRecoverable:Z

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    return-void
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.InitRunnable.AnonymousClass1 (com.ironsource.mediationsdk.MediationInitializer$InitRunnable$1)
.class Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnrecoverableError(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->isRecoverable:Z

    .line 54
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    iput-object p1, v0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->reason:Ljava/lang/String;

    .line 55
    return-void
.end method

###### Class com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener (com.ironsource.mediationsdk.MediationInitializer$OnMediationInitializationListener)
.class interface abstract Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
.super Ljava/lang/Object;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnMediationInitializationListener"
.end annotation


# virtual methods
.method public abstract onInitFailed(Ljava/lang/String;)V
.end method

.method public abstract onInitSuccess(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onStillInProgressAfter15Secs()V
.end method
