###### Class com.ironsource.adapters.facebook.FacebookAdapter (com.ironsource.adapters.facebook.FacebookAdapter)
.class public Lcom/ironsource/adapters/facebook/FacebookAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "FacebookAdapter.java"


# static fields
.field private static final CORE_SDK_VERSION:Ljava/lang/String; = "4.28.1"

.field private static final MEDIATION_SERVICE_NAME:Ljava/lang/String; = "Supersonic"

.field private static final VERSION:Ljava/lang/String; = "4.1.5"


# instance fields
.field private final PLACEMENT_ID:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mBannerPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAdListener:Lcom/facebook/ads/InterstitialAdListener;

.field private mInterstitialPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReloading:Z

.field private mRewardedVideoAdListener:Lcom/facebook/ads/RewardedVideoAdListener;

.field private mRewardedVideoPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardedVideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "placementId"

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->PLACEMENT_ID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIsReloading:Z

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialAdListener:Lcom/facebook/ads/InterstitialAdListener;

    .line 131
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoAdListener:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 186
    const-string v0, "Supersonic"

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/facebook/ads/InterstitialAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialAdListener:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIsReloading:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/ironsource/adapters/facebook/FacebookAdapter;Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/facebook/ads/AdView;
    .registers 6
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/facebook/ads/AdView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/facebook/ads/RewardedVideoAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoAdListener:Lcom/facebook/ads/RewardedVideoAdListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/facebook/ads/AdView;
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "config"    # Lorg/json/JSONObject;
    .param p4, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 357
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    .line 359
    .local v0, "adSize":Lcom/facebook/ads/AdSize;
    sget-object v3, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_46

    .line 377
    :goto_d
    const-string v3, "placementId"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "placementId":Ljava/lang/String;
    new-instance v1, Lcom/facebook/ads/AdView;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 379
    .local v1, "adView":Lcom/facebook/ads/AdView;
    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v3, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;

    invoke-direct {v3, p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    invoke-virtual {v1, v3}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 423
    if-eqz p4, :cond_2c

    .line 424
    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_2c
    return-object v1

    .line 361
    .end local v1    # "adView":Lcom/facebook/ads/AdView;
    .end local v2    # "placementId":Ljava/lang/String;
    :pswitch_2d
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    .line 362
    goto :goto_d

    .line 364
    :pswitch_30
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 365
    goto :goto_d

    .line 367
    :pswitch_33
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    .line 368
    goto :goto_d

    .line 370
    :pswitch_36
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 371
    goto :goto_d

    .line 373
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_42

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    :goto_41
    goto :goto_d

    :cond_42
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_41

    .line 359
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    new-instance v0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v1, "Facebook"

    const-string v2, "4.1.5"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.facebook.ads.AudienceNetworkActivity"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method private loadRewardedVideo(Ljava/lang/String;)V
    .registers 4
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_15
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/facebook/FacebookAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 470
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 471
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    return-void
.end method

.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 221
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    const-string v0, "4.28.1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    const-string v0, "4.1.5"

    return-object v0
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    .line 351
    if-eqz p5, :cond_7

    .line 352
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    .line 354
    :cond_7
    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 281
    const-string v0, "placementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 282
    if-eqz p5, :cond_19

    .line 283
    const-string v0, "Missing params"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 294
    :cond_19
    :goto_19
    return-void

    .line 287
    :cond_1a
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    .line 289
    const-string v0, "placementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p5, :cond_19

    .line 290
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_19
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 203
    const-string v0, "placementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    if-eqz p5, :cond_12

    .line 205
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 216
    :cond_12
    :goto_12
    return-void

    .line 209
    :cond_13
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    .line 211
    const-string v0, "placementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p5, :cond_2e

    .line 212
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2e
    const-string v0, "placementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRewardedVideoPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 9
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 431
    const-string v3, "placementId"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 433
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "No placement id in the response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 436
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    if-eqz p3, :cond_38

    .line 437
    invoke-interface {p3, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 466
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_38
    :goto_38
    return-void

    .line 442
    :cond_39
    if-eqz p1, :cond_38

    .line 443
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 444
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mIsReloading:Z

    .line 445
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 446
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;

    invoke-direct {v3, p0, p2, p3}, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 298
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 275
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActivity:Landroid/app/Activity;

    .line 270
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 271
    return-void
.end method

.method public reloadBanner(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 490
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 491
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 321
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 231
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass1 (com.ironsource.adapters.facebook.FacebookAdapter$1)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 116
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "IS Ad, onAdClicked"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 119
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 120
    :cond_2f
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 108
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "IS Ad, onAdLoaded"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 111
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    .line 112
    :cond_2f
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 7
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 100
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS Ad, onError; error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 103
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 104
    :cond_4c
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 92
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialDismissed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 95
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    .line 96
    :cond_2f
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialDisplayed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 87
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 88
    :cond_2f
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 124
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "IS Ad, onLoggingImpression"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 127
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$1;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    .line 128
    :cond_2f
    return-void
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass10 (com.ironsource.adapters.facebook.FacebookAdapter$10)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$10;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadRewardedVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$placement:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 512
    new-instance v1, Lcom/facebook/ads/RewardedVideoAd;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    .local v1, "rewardedVideoAd":Lcom/facebook/ads/RewardedVideoAd;
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/RewardedVideoAd;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 517
    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd()V

    .line 518
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 525
    .end local v1    # "rewardedVideoAd":Lcom/facebook/ads/RewardedVideoAd;
    :cond_2c
    :goto_2c
    return-void

    .line 521
    :catch_2d
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 523
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$10;->val$placement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_2c
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass11 (com.ironsource.adapters.facebook.FacebookAdapter$11)
.class synthetic Lcom/ironsource/adapters/facebook/FacebookAdapter$11;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 359
    invoke-static {}, Lcom/ironsource/mediationsdk/EBannerSize;->values()[Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->LARGE:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->TABLET:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$11;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->SMART:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass2 (com.ironsource.adapters.facebook.FacebookAdapter$2)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$2;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 179
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "RV Ad, onAdClicked"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 182
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    .line 183
    :cond_2f
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    const/4 v3, 0x1

    .line 171
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "RV Ad, onAdLoaded"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 173
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 174
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 175
    :cond_2f
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 7
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 163
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RV Ad, onError; error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 166
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 167
    :cond_45
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 145
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "RV Ad, onLoggingImpression"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 148
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 149
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    .line 151
    :cond_26
    return-void
.end method

.method public onRewardedVideoClosed()V
    .registers 5

    .prologue
    .line 155
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoClosed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 158
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    .line 159
    :cond_1d
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 5

    .prologue
    .line 135
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoCompleted"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 138
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 139
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$2;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 141
    :cond_26
    return-void
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass3 (com.ironsource.adapters.facebook.FacebookAdapter$3)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$3;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 238
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$config:Lorg/json/JSONObject;

    const-string v4, "placementId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/RewardedVideoAd;

    .line 239
    .local v1, "videoAd":Lcom/facebook/ads/RewardedVideoAd;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 241
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 242
    new-instance v2, Lcom/facebook/ads/RewardData;

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/RewardedVideoAd;->setRewardData(Lcom/facebook/ads/RewardData;)V

    .line 245
    :cond_39
    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    .line 250
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v2, :cond_46

    .line 251
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 260
    .end local v1    # "videoAd":Lcom/facebook/ads/RewardedVideoAd;
    :cond_46
    :goto_46
    return-void

    .line 247
    .restart local v1    # "videoAd":Lcom/facebook/ads/RewardedVideoAd;
    :cond_47
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v2, :cond_3c

    .line 248
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v3, "Rewarded Video"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_57

    goto :goto_3c

    .line 252
    .end local v1    # "videoAd":Lcom/facebook/ads/RewardedVideoAd;
    :catch_57
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Facebook show failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 255
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v2, :cond_46

    .line 256
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v3, "Rewarded Video"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 257
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v2, v6}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_46
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass4 (com.ironsource.adapters.facebook.FacebookAdapter$4)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$4;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 305
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$2900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v4, "placementId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    .local v1, "interstitialAd":Lcom/facebook/ads/InterstitialAd;
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 307
    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 308
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v4, "placementId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v1    # "interstitialAd":Lcom/facebook/ads/InterstitialAd;
    :cond_3e
    :goto_3e
    return-void

    .line 310
    :cond_3f
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v3, "invalid placement"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_3e

    .line 311
    :catch_4b
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v2, :cond_3e

    .line 313
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_3e
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass5 (com.ironsource.adapters.facebook.FacebookAdapter$5)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$5;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 329
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 338
    :cond_45
    :goto_45
    return-void

    .line 330
    :cond_46
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v1, :cond_45

    .line 331
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v2, "Interstitial"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_45

    .line 332
    :catch_56
    move-exception v0

    .line 333
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook show failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 335
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v1, :cond_45

    .line 336
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v2, "Interstitial"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_45
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass6 (com.ironsource.adapters.facebook.FacebookAdapter$6)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$6;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/facebook/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 409
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner Ad, onAdClicked"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 411
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 412
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    .line 413
    :cond_2f
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 8
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    const/4 v5, -0x1

    .line 394
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 395
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Banner Ad, onAdLoaded"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 396
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 397
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 398
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 400
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v2

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 403
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_53
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded()V

    .line 405
    :cond_66
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 8
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 383
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner Ad, onError; error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 384
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 385
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 387
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 389
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_4c
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 417
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner Ad, onLoggingImpression"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4100(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 420
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$6;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdScreenPresented()V

    .line 421
    :cond_2f
    return-void
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass7 (com.ironsource.adapters.facebook.FacebookAdapter$7)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$7;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 450
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iget-object v5, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v5}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v6}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$config:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4500(Lcom/ironsource/adapters/facebook/FacebookAdapter;Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/facebook/ads/AdView;

    move-result-object v0

    .line 451
    .local v0, "adView":Lcom/facebook/ads/AdView;
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 463
    .end local v0    # "adView":Lcom/facebook/ads/AdView;
    :cond_21
    :goto_21
    return-void

    .line 452
    :catch_22
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Banner Load Fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .line 454
    invoke-virtual {v5}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "failed to retrieve Facebook AdView from banner layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "errorString":Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 458
    .local v2, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v4, :cond_21

    .line 459
    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v4, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_21
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass8 (com.ironsource.adapters.facebook.FacebookAdapter$8)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$8;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 476
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->destroy()V

    .line 477
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->val$config:Lorg/json/JSONObject;

    const-string v3, "placementId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 483
    :cond_3c
    :goto_3c
    return-void

    .line 479
    :catch_3d
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":destroyBanner() failed with an exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$4600(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_3c
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.AnonymousClass9 (com.ironsource.adapters.facebook.FacebookAdapter$9)
.class Lcom/ironsource/adapters/facebook/FacebookAdapter$9;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->reloadBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/facebook/FacebookAdapter;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->val$config:Lorg/json/JSONObject;

    const-string v2, "placementId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 495
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$3600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->val$config:Lorg/json/JSONObject;

    const-string v2, "placementId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 496
    :cond_2b
    return-void
.end method
