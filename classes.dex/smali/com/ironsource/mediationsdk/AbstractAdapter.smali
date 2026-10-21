###### Class com.ironsource.mediationsdk.AbstractAdapter (com.ironsource.mediationsdk.AbstractAdapter)
.class public abstract Lcom/ironsource/mediationsdk/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BaseApi;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterApi;
.implements Lcom/ironsource/mediationsdk/sdk/BannerAdapterApi;
.implements Lcom/ironsource/mediationsdk/logger/LoggingApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialApi;


# instance fields
.field protected mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field protected mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field protected mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

.field protected mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentAdNetworkBanner:Landroid/view/View;

.field protected mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;

.field protected mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

.field protected mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method protected addBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 159
    return-void
.end method

.method public addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public addRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    return-void
.end method

.method public abstract getCoreSDKVersion()Ljava/lang/String;
.end method

.method protected getDynamicUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginFrameworkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenWidthPixels(Landroid/app/Activity;)I
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 140
    return-void
.end method

.method protected isAdaptersDebugEnabled()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method protected isLargeScreen(Landroid/app/Activity;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    .line 213
    .local v1, "dpHeight":F
    const/high16 v2, 0x44340000    # 720.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 4
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 145
    return-void
.end method

.method protected log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    return-void
.end method

.method public reloadBanner(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    return-void
.end method

.method protected removeBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 163
    return-void
.end method

.method protected removeBannerViews()V
    .registers 3

    .prologue
    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/mediationsdk/AbstractAdapter$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter$1;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public removeInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public removeRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public setAge(I)V
    .registers 2
    .param p1, "age"    # I

    .prologue
    .line 198
    return-void
.end method

.method protected setConsent(Z)V
    .registers 2
    .param p1, "consent"    # Z

    .prologue
    .line 226
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 203
    return-void
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2
    .param p1, "logListener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    .line 127
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 2
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method protected setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .param p2, "adUnit"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .line 132
    return-void
.end method

###### Class com.ironsource.mediationsdk.AbstractAdapter.AnonymousClass1 (com.ironsource.mediationsdk.AbstractAdapter$1)
.class Lcom/ironsource/mediationsdk/AbstractAdapter$1;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AbstractAdapter;->removeBannerViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractAdapter;->mCurrentAdNetworkBanner:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 114
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractAdapter;->mCurrentAdNetworkBanner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-ne v1, v2, :cond_25

    .line 115
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$1;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/AbstractAdapter;->mCurrentAdNetworkBanner:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeView(Landroid/view/View;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 121
    :cond_25
    :goto_25
    return-void

    .line 118
    :catch_26
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method
