###### Class com.ironsource.mediationsdk.BannerSmash (com.ironsource.mediationsdk.BannerSmash)
.class public Lcom/ironsource/mediationsdk/BannerSmash;
.super Lcom/ironsource/mediationsdk/AbstractSmash;
.source "BannerSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBannerAdapterConfigs:Lorg/json/JSONObject;

.field private mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

.field private mBannerLoadRefreshInterval:J

.field private mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsReload:Z

.field private mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

.field private mSize:Lcom/ironsource/mediationsdk/EBannerSize;

.field private mTimeoutInMillis:J


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;JI)V
    .registers 9
    .param p1, "adapterConfigs"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .param p2, "timeout"    # J
    .param p4, "interval"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->TAG:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 45
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerAdapterConfigs:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsMultipleInstances:Z

    .line 47
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mSpId:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimeoutInMillis:J

    .line 49
    mul-int/lit16 v0, p4, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLoadRefreshInterval:J

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/BannerSmash$1;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/BannerSmash;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->reloadBanner()V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/BannerSmash;)J
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLoadRefreshInterval:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/BannerSmash;J)V
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/BannerSmash;->scheduleRefresh(J)V

    return-void
.end method

.method private cancelRefresh()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    if-eqz v0, :cond_f

    .line 276
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    :cond_f
    return-void
.end method

.method private reloadBanner()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 166
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    .line 167
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_31

    .line 168
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":reloadBanner()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->reloadBanner(Lorg/json/JSONObject;)V

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerReloadAd(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 172
    :cond_31
    return-void
.end method

.method private scheduleRefresh(J)V
    .registers 8
    .param p1, "refreshInterval"    # J

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 267
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerSmash;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":refreshing banner in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 269
    new-instance v0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/BannerSmash$1;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    .line 270
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mReloadBannerRunnable:Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_3a
    return-void
.end method


# virtual methods
.method completeIteration()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 7
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->cancelRefresh()V

    .line 156
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2e

    .line 157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":destroyBanner()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V

    .line 163
    :goto_2d
    return-void

    .line 160
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":destroyBanner wasn\'t called. adapter is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_2d
.end method

.method protected getAdUnitString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string v0, "banner"

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/EBannerSize;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    return-object v0
.end method

.method initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->startInitTimer()V

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_17

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerAdapterConfigs:Lorg/json/JSONObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    .line 63
    :cond_17
    return-void
.end method

.method isCappedPerSession()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method isExhausted()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 6
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 136
    if-eqz p1, :cond_47

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":loadBanner()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    .line 139
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->cancelRefresh()V

    .line 140
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->startLoadTimer()V

    .line 141
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    .line 142
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 143
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->bindSmash(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_47

    .line 147
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->preShow()V

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    .line 151
    :cond_47
    return-void
.end method

.method public onBannerAdClicked()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_9

    .line 216
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdClicked(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 217
    :cond_9
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 241
    :cond_9
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    const/4 v4, 0x1

    .line 200
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_30

    .line 201
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onBannerAdReloadFailed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 202
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->cancelRefresh()V

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 211
    :cond_2f
    :goto_2f
    return-void

    .line 207
    :cond_30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onBannerAdLoadFailed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 209
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_2f

    .line 210
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_2f
.end method

.method public onBannerAdLoaded()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopLoadTimer()V

    .line 184
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLoadRefreshInterval:J

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/BannerSmash;->scheduleRefresh(J)V

    .line 186
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_35

    .line 187
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onBannerAdReloaded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 196
    :cond_34
    :goto_34
    return-void

    .line 192
    :cond_35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onBannerAdLoaded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_34

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_34
.end method

.method public onBannerAdScreenDismissed()V
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    if-eqz v0, :cond_5

    .line 235
    :cond_4
    :goto_4
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_4
.end method

.method public onBannerAdScreenPresented()V
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsReload:Z

    if-eqz v0, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-void

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerLayoutListener:Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_4
.end method

.method public onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopInitTimer()V

    .line 257
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_17

    .line 258
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 260
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_17

    .line 261
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 263
    :cond_17
    return-void
.end method

.method public onBannerInitSuccess()V
    .registers 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/BannerSmash;->stopInitTimer()V

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_17

    .line 247
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 249
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_17

    .line 250
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerInitSuccess(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 252
    :cond_17
    return-void
.end method

.method setBannerManagerListener(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .registers 2
    .param p1, "manager"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mBannerManagerListener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 176
    return-void
.end method

.method startInitTimer()V
    .registers 7

    .prologue
    .line 81
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/BannerSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/BannerSmash$1;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mInitTimerTask:Ljava/util/TimerTask;

    .line 91
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 93
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mInitTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_17

    .line 94
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mInitTimerTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimeoutInMillis:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 98
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_17
    :goto_17
    return-void

    .line 95
    :catch_18
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method startLoadTimer()V
    .registers 7

    .prologue
    .line 103
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/BannerSmash$2;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/BannerSmash$2;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    .line 112
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 114
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_17

    .line 115
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/BannerSmash;->mTimeoutInMillis:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 119
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_17
    :goto_17
    return-void

    .line 116
    :catch_18
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

###### Class com.ironsource.mediationsdk.BannerSmash.AnonymousClass1 (com.ironsource.mediationsdk.BannerSmash$1)
.class Lcom/ironsource/mediationsdk/BannerSmash$1;
.super Ljava/util/TimerTask;
.source "BannerSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BannerSmash;->startInitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BannerSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash$1;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$1;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$1;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->access$100(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$1;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    const-string v1, "Timeout"

    const-string v2, "Banner"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BannerSmash;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 88
    :cond_1d
    return-void
.end method

###### Class com.ironsource.mediationsdk.BannerSmash.AnonymousClass2 (com.ironsource.mediationsdk.BannerSmash$2)
.class Lcom/ironsource/mediationsdk/BannerSmash$2;
.super Ljava/util/TimerTask;
.source "BannerSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BannerSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BannerSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash$2;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$2;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$2;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->access$100(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$2;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x25b

    const-string v3, "Timeout"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BannerSmash;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 109
    :cond_1e
    return-void
.end method

###### Class com.ironsource.mediationsdk.BannerSmash.ReloadBannerRunnable (com.ironsource.mediationsdk.BannerSmash$ReloadBannerRunnable)
.class Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;
.super Ljava/lang/Object;
.source "BannerSmash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/BannerSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadBannerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BannerSmash;


# direct methods
.method private constructor <init>(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/BannerSmash$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/mediationsdk/BannerSmash;
    .param p2, "x1"    # Lcom/ironsource/mediationsdk/BannerSmash$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;-><init>(Lcom/ironsource/mediationsdk/BannerSmash;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->access$200(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->access$200(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/BannerSmash;->mIsInForeground:Z

    if-eqz v0, :cond_4d

    .line 288
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/BannerSmash;->access$300(Lcom/ironsource/mediationsdk/BannerSmash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": refreshing banner for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->access$400(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 297
    :cond_4c
    :goto_4c
    return-void

    .line 294
    :cond_4d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerSmash$ReloadBannerRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/BannerSmash;->access$500(Lcom/ironsource/mediationsdk/BannerSmash;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ironsource/mediationsdk/BannerSmash;->access$600(Lcom/ironsource/mediationsdk/BannerSmash;J)V

    goto :goto_4c
.end method
