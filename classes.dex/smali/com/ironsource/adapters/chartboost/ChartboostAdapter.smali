###### Class com.ironsource.adapters.chartboost.ChartboostAdapter (com.ironsource.adapters.chartboost.ChartboostAdapter)
.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
    }
.end annotation


# static fields
.field private static final VERSION:Ljava/lang/String; = "4.1.3"


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private final APP_SIGNATURE:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAlreadyCalledInit:Ljava/lang/Boolean;

.field private mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

.field private mDidCallInitInterstitial:Z

.field private mDidCallLoad:Z

.field private mInitiatedSuccessfully:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    .line 34
    iput-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallLoad:Z

    .line 35
    iput-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallInitInterstitial:Z

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mInitiatedSuccessfully:Z

    .line 38
    const-string v0, "appID"

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_ID:Ljava/lang/String;

    .line 39
    const-string v0, "appSignature"

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_SIGNATURE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallLoad:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallLoad:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mInitiatedSuccessfully:Z

    return v0
.end method

.method static synthetic access$402(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mInitiatedSuccessfully:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->reportInterstitialInitSuccess()V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->updateRVAvailability(Z)V

    return-void
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    new-instance v0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v1, "Chartboost"

    const-string v2, "4.1.3"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.chartboost.sdk.CBImpressionActivity"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 52
    return-object v0
.end method

.method private declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 139
    monitor-exit p0

    return-void

    .line 94
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportInterstitialInitSuccess()V
    .registers 4

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallInitInterstitial:Z

    if-eqz v1, :cond_1f

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallInitInterstitial:Z

    .line 389
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 390
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_d

    .line 391
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_d

    .line 394
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_1f
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateRVAvailability(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 397
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 398
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_6

    .line 399
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_6

    .line 401
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_18
    return-void
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 160
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "4.1.3"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 190
    const-string v0, "appID"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "appSignature"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 191
    :cond_18
    if-eqz p5, :cond_25

    .line 192
    const-string v0, "Missing params"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 201
    :cond_25
    :goto_25
    return-void

    .line 196
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallInitInterstitial:Z

    .line 197
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    if-nez v0, :cond_35

    .line 198
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    .line 200
    :cond_35
    const-string v3, "IS"

    const-string v0, "appID"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "appSignature"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 145
    const-string v0, "appID"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "appSignature"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 146
    :cond_18
    if-eqz p5, :cond_1e

    .line 147
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 155
    :cond_1e
    :goto_1e
    return-void

    .line 151
    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    if-nez v0, :cond_2b

    .line 152
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    .line 154
    :cond_2b
    const-string v3, "RV"

    const-string v0, "appID"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "appSignature"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 230
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 183
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidCallLoad:Z

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    if-eqz p1, :cond_8

    .line 86
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 87
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 89
    :cond_8
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    if-eqz p1, :cond_a

    .line 77
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 79
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 81
    :cond_a
    return-void
.end method

.method protected setConsent(Z)V
    .registers 4
    .param p1, "consent"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 68
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Chartboost;->restrictDataCollection(Landroid/content/Context;Z)V

    .line 70
    :cond_c
    return-void

    .line 68
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 218
    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 220
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 221
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 226
    :cond_f
    :goto_f
    return-void

    .line 223
    :cond_10
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_f

    .line 224
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v1, "Interstitial"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_f
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 164
    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 166
    const-string v1, "Default"

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 167
    const-string v1, "Default"

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 179
    :cond_f
    return-void

    .line 169
    :cond_10
    const-string v1, "Default"

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v1, :cond_24

    .line 172
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v2, "Rewarded Video"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 174
    :cond_24
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 175
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_2a

    .line 176
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_2a
.end method

###### Class com.ironsource.adapters.chartboost.ChartboostAdapter.AnonymousClass1 (com.ironsource.adapters.chartboost.ChartboostAdapter$1)
.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 97
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_88

    .line 99
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$002(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 101
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$102(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;)Landroid/app/Activity;

    .line 102
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 103
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_9f

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "isDebugEnabled":Z
    :try_start_37
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_37 .. :try_end_3c} :catch_ba
    .catchall {:try_start_37 .. :try_end_3c} :catchall_9f

    move-result v0

    .line 110
    :goto_3d
    if-eqz v0, :cond_99

    .line 111
    :try_start_3f
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 116
    :goto_44
    const-string v1, "Unity"

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 117
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    .line 118
    :cond_69
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v3, "4.1.3"

    invoke-static {v1, v3}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 122
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 123
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 124
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 128
    .end local v0    # "isDebugEnabled":Z
    :cond_88
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$type:Ljava/lang/String;

    const-string v3, "RV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 129
    const-string v1, "Default"

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 136
    :cond_97
    :goto_97
    monitor-exit v2

    .line 137
    return-void

    .line 113
    .restart local v0    # "isDebugEnabled":Z
    :cond_99
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    goto :goto_44

    .line 136
    .end local v0    # "isDebugEnabled":Z
    :catchall_9f
    move-exception v1

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_3f .. :try_end_a1} :catchall_9f

    throw v1

    .line 130
    :cond_a2
    :try_start_a2
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$type:Ljava/lang/String;

    const-string v3, "IS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 132
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 133
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_9f

    goto :goto_97

    .line 107
    .restart local v0    # "isDebugEnabled":Z
    :catch_ba
    move-exception v1

    goto :goto_3d
.end method

###### Class com.ironsource.adapters.chartboost.ChartboostAdapter.AnonymousClass2 (com.ironsource.adapters.chartboost.ChartboostAdapter$2)
.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 211
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 212
    return-void
.end method

###### Class com.ironsource.adapters.chartboost.ChartboostAdapter.CbDelegate (com.ironsource.adapters.chartboost.ChartboostAdapter$CbDelegate)
.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CbDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;


# direct methods
.method private constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .param p2, "x1"    # Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .registers 7
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 313
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1802(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z

    .line 315
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didCacheInterstitial ; location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 317
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 318
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_35

    .line 319
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_35

    .line 322
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_47
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .registers 7
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 249
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didCacheRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 251
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0, v4}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V

    .line 252
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didClickInterstitial ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 360
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 361
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 362
    :cond_2e
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didClickRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 291
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    .line 292
    :cond_2e
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didCloseInterstitial ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2100(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 352
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    .line 353
    :cond_2e
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didCloseRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 281
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1300(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    .line 283
    :cond_2e
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .registers 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 297
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didCompleteRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 299
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 300
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 301
    :cond_2e
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didDismissInterstitial ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 344
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didDismissRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 271
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1100(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 273
    :cond_2e
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didDisplayInterstitial ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 369
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 370
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 371
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    .line 373
    :cond_37
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didDisplayRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 242
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 244
    :cond_2e
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 8
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 328
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$1802(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z

    .line 330
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didFailToLoadInterstitial ; location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 332
    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$2000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 333
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_43

    .line 334
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_43

    .line 337
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_5d
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 8
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    const/4 v4, 0x1

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didFailToLoadRewardedVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 259
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 260
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V

    .line 263
    :goto_39
    return-void

    .line 262
    :cond_3a
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0, v4}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)V

    goto :goto_39
.end method

.method public didInitialize()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$402(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z

    .line 379
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V

    .line 380
    return-void
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .registers 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willDisplayVideo ; location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 307
    return-void
.end method
