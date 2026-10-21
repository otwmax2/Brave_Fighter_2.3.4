###### Class com.ironsource.adapters.admob.AdMobAdapter (com.ironsource.adapters.admob.AdMobAdapter)
.class public Lcom/ironsource/adapters/admob/AdMobAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AdMobAdapter.java"


# static fields
.field private static final CORE_SDK_VERSION:Ljava/lang/String; = "12.0.1"

.field private static final VERSION:Ljava/lang/String; = "4.1.6"


# instance fields
.field private final AD_UNIT_ID:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

.field private mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private mAge:I

.field private mConsent:Ljava/lang/Boolean;

.field private mDidInitSdk:Z

.field private mGender:I

.field private mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReloading:Z

.field private mIsRewardedVideoReady:Z

.field private mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v0, "ironSource"

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    .line 53
    iput-boolean v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsRewardedVideoReady:Z

    .line 55
    iput-boolean v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Z

    .line 57
    const-string v0, "adUnitId"

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->AD_UNIT_ID:Ljava/lang/String;

    .line 58
    const-string v0, "appId"

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->APP_ID:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsReloading:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    .line 224
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter$6;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/reward/RewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->rewardedVideoAdListener:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setInterstitialAdAvailability(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/ironsource/adapters/admob/AdMobAdapter;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAd(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsReloading:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/google/android/gms/ads/AdView;
    .registers 6
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ironsource/adapters/admob/AdMobAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsRewardedVideoReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .registers 5

    .prologue
    .line 614
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 615
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mGender:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 616
    const-string v2, "ironSource"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 617
    iget v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1e

    .line 618
    iget v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_40

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 621
    :cond_1e
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    if-eqz v2, :cond_3b

    .line 622
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 623
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "npa"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 630
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    return-object v2

    .line 618
    :cond_40
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/google/android/gms/ads/AdView;
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "config"    # Lorg/json/JSONObject;
    .param p4, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    const/16 v5, 0x5a

    const/4 v4, -0x1

    .line 450
    const-string v2, "adUnitId"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "adUnitId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 452
    .local v1, "adView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 453
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_80

    .line 470
    :goto_1c
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v2, Lcom/ironsource/adapters/admob/AdMobAdapter$10;

    invoke-direct {v2, p0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter$10;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 527
    if-eqz p4, :cond_34

    .line 528
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_34
    const-string v2, "Adview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-object v1

    .line 455
    :pswitch_57
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x32

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1c

    .line 458
    :pswitch_62
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1c

    .line 461
    :pswitch_6b
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1c

    .line 464
    :pswitch_71
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1c

    .line 467
    :pswitch_7a
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1c

    .line 453
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_57
        :pswitch_62
        :pswitch_6b
        :pswitch_71
        :pswitch_7a
    .end packed-switch
.end method

.method private getErrorString(I)Ljava/lang/String;
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 634
    packed-switch p1, :pswitch_data_12

    .line 644
    const-string v0, "Unknown error"

    :goto_5
    return-object v0

    .line 636
    :pswitch_6
    const-string v0, "Internal error"

    goto :goto_5

    .line 638
    :pswitch_9
    const-string v0, "The ad request was invalid"

    goto :goto_5

    .line 640
    :pswitch_c
    const-string v0, "The ad request was unsuccessful due to network connectivity"

    goto :goto_5

    .line 642
    :pswitch_f
    const-string v0, "The ad request was successful, but no ad was returned due to lack of ad inventory"

    goto :goto_5

    .line 634
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    new-instance v0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v1, "AdMob"

    const-string v2, "4.1.6"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.android.gms.ads.AdActivity"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method private getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 649
    const-string v1, "adUnitId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "adUnitId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 651
    :cond_14
    const/4 v1, 0x0

    .line 654
    :goto_15
    return-object v1

    :cond_16
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/InterstitialAd;

    goto :goto_15
.end method

.method private declared-synchronized initSDK(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Z

    if-nez v0, :cond_15

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :goto_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    .line 149
    :cond_15
    monitor-exit p0

    return-void

    .line 146
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_12

    .line 142
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadRewardedVideoAd(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$4;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private setInterstitialAdAvailability(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 658
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 659
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$14;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$14;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 576
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$12;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$12;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    return-void
.end method

.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAd(Lorg/json/JSONObject;)V

    .line 178
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string v0, "12.0.1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string v0, "4.1.6"

    return-object v0
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 442
    const-string v0, "appId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;)V

    .line 444
    if-eqz p5, :cond_e

    .line 445
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    .line 447
    :cond_e
    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 308
    const-string v2, "appId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 309
    if-eqz p5, :cond_19

    .line 310
    const-string v2, "Missing params: \'appId\' "

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {p5, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 379
    :cond_19
    :goto_19
    return-void

    .line 315
    :cond_1a
    const-string v2, "adUnitId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "adUnitId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 317
    if-eqz p5, :cond_19

    .line 318
    const-string v2, "Missing params: \'adUnitId\' "

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {p5, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_19

    .line 323
    :cond_34
    const-string v2, "appId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v2, Lcom/ironsource/adapters/admob/AdMobAdapter$7;

    invoke-direct {v2, p0, v1, p4}, Lcom/ironsource/adapters/admob/AdMobAdapter$7;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 375
    if-eqz p5, :cond_19

    .line 376
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
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
    .line 155
    const-string v1, "appId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 156
    if-eqz p5, :cond_12

    .line 157
    const/4 v1, 0x0

    invoke-interface {p5, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 173
    :cond_12
    :goto_12
    return-void

    .line 162
    :cond_13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$3;

    invoke-direct {v1, p0, p1, p4}, Lcom/ironsource/adapters/admob/AdMobAdapter$3;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method public final isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 431
    const-string v1, "adUnitId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "adUnitId":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 433
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 435
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsRewardedVideoReady:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 9
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "config"    # Lorg/json/JSONObject;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .prologue
    .line 536
    const-string v3, "adUnitId"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 538
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "No ad unit id in the response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 541
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    const-string v3, "bar"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz p3, :cond_3d

    .line 543
    invoke-interface {p3, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 572
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-void

    .line 547
    :cond_3e
    if-eqz p1, :cond_3d

    .line 548
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 549
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsReloading:Z

    .line 550
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 551
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/ironsource/adapters/admob/AdMobAdapter$11;

    invoke-direct {v3, p0, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter$11;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 383
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 384
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$8;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$2;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public reloadBanner(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mIsReloading:Z

    .line 599
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 600
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$13;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

.method public setAge(I)V
    .registers 2
    .param p1, "age"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    .line 122
    return-void
.end method

.method protected setConsent(Z)V
    .registers 3
    .param p1, "consent"    # Z

    .prologue
    .line 673
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    .line 674
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 6
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2c

    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_36

    .line 134
    iput v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mGender:I

    .line 137
    :goto_f
    return-void

    .line 126
    :sswitch_10
    const-string v3, "female"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    goto :goto_a

    :sswitch_1a
    const-string v3, "male"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v2

    goto :goto_a

    .line 128
    :pswitch_24
    const/4 v0, 0x2

    iput v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mGender:I

    goto :goto_f

    .line 131
    :pswitch_28
    iput v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mGender:I

    goto :goto_f

    .line 126
    nop

    :sswitch_data_2c
    .sparse-switch
        -0x4c2f64b4 -> :sswitch_10
        0x33060d -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 412
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$9;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 201
    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$5;

    invoke-direct {v1, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter$5;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass1 (com.ironsource.adapters.admob.AdMobAdapter$1)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$1;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->onResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume(Landroid/content/Context;)V

    .line 103
    :cond_13
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass10 (com.ironsource.adapters.admob.AdMobAdapter$10)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$10;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/google/android/gms/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/AdView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    .prologue
    .line 474
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 476
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 477
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdScreenDismissed()V

    .line 479
    :cond_2a
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    .line 483
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 484
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v3, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2800(Lcom/ironsource/adapters/admob/AdMobAdapter;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "adapterError":Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    .line 488
    .local v1, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v2, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 490
    .end local v0    # "adapterError":Ljava/lang/String;
    .end local v1    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_51
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    .prologue
    .line 494
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 496
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 497
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    .line 498
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLeftApplication()V

    .line 500
    :cond_3f
    return-void
.end method

.method public onAdLoaded()V
    .registers 5

    .prologue
    .line 513
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 514
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 515
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 516
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 518
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 519
    const-string v1, "Adview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added the following ad unit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4d
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded()V

    .line 525
    :cond_62
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    .prologue
    .line 504
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 506
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 507
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$4800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdScreenPresented()V

    .line 509
    :cond_2a
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass11 (com.ironsource.adapters.admob.AdMobAdapter$11)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$11;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 556
    :try_start_0
    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v6, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v6}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v7}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$config:Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5500(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    .line 557
    .local v1, "adView":Lcom/google/android/gms/ads/AdView;
    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 558
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 569
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v1    # "adView":Lcom/google/android/gms/ads/AdView;
    :cond_27
    :goto_27
    return-void

    .line 559
    :catch_28
    move-exception v2

    .line 560
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Banner Load Fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    .line 561
    invoke-virtual {v6}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed to retrieve AdMob AdView from banner layout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "errorString":Ljava/lang/String;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    .line 565
    .local v3, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v5, :cond_27

    .line 566
    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v5, v3}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_27
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass12 (com.ironsource.adapters.admob.AdMobAdapter$12)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$12;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 582
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 583
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 591
    :cond_3c
    :goto_3c
    return-void

    .line 587
    :catch_3d
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

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

    invoke-static {v1, v2, v3, v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_3c
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass13 (com.ironsource.adapters.admob.AdMobAdapter$13)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$13;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->reloadBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 603
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 604
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 605
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 607
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_31
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass14 (com.ironsource.adapters.admob.AdMobAdapter$14)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$14;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->setInterstitialAdAvailability(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 662
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->val$config:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    .line 663
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "adUnitId":Ljava/lang/String;
    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    .line 665
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInterstitialAdAvailability for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", avilbility "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 666
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$5800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_50
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass15 (com.ironsource.adapters.admob.AdMobAdapter$15)
.class synthetic Lcom/ironsource/adapters/admob/AdMobAdapter$15;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
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
    .line 453
    invoke-static {}, Lcom/ironsource/mediationsdk/EBannerSize;->values()[Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->LARGE:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->TABLET:Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$15;->$SwitchMap$com$ironsource$mediationsdk$EBannerSize:[I

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

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass2 (com.ironsource.adapters.admob.AdMobAdapter$2)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->onPause(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 114
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->pause(Landroid/content/Context;)V

    .line 115
    :cond_13
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass3 (com.ironsource.adapters.admob.AdMobAdapter$3)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$3;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$100(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$002(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/reward/RewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 168
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 170
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    .line 171
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass4 (com.ironsource.adapters.admob.AdMobAdapter$4)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$4;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAd(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 185
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "RVAdUnitId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 188
    .local v1, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 189
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass5 (com.ironsource.adapters.admob.AdMobAdapter$5)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$5;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 209
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 220
    :cond_15
    return-void

    .line 211
    :cond_16
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 212
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v1

    const-string v2, "Rewarded Video"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 215
    :cond_2d
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 216
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_37

    .line 217
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_37
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass6 (com.ironsource.adapters.admob.AdMobAdapter$6)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$6;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .registers 6
    .param p1, "rewardItem"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 277
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewarded"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 280
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 281
    :cond_1d
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 5

    .prologue
    .line 269
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdClosed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 271
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 272
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    .line 273
    :cond_1d
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .registers 8
    .param p1, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 293
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onRewardedVideoAdFailedToLoad"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 295
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1, v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$802(Lcom/ironsource/adapters/admob/AdMobAdapter;Z)Z

    .line 297
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 298
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_1c

    .line 299
    invoke-interface {v0, v5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1c

    .line 301
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_2e
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .registers 5

    .prologue
    .line 285
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdLeftApplication"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 288
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    .line 289
    :cond_1d
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 227
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onRewardedVideoAdLoaded"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 229
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1, v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$802(Lcom/ironsource/adapters/admob/AdMobAdapter;Z)Z

    .line 231
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 232
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_1b

    .line 233
    invoke-interface {v0, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1b

    .line 235
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_2d
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onRewardedVideoAdOpened"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 241
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1, v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$802(Lcom/ironsource/adapters/admob/AdMobAdapter;Z)Z

    .line 243
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 244
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 246
    :cond_23
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 247
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    if-eqz v0, :cond_2d

    .line 248
    invoke-interface {v0, v5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_2d

    .line 250
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_3f
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 5

    .prologue
    .line 262
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoCompleted"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 263
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 264
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 265
    :cond_1d
    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 5

    .prologue
    .line 254
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoStarted"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 257
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    .line 258
    :cond_1d
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass7 (com.ironsource.adapters.admob.AdMobAdapter$7)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$7;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 5

    .prologue
    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 332
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 333
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    .line 335
    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2600(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    .line 336
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .prologue
    .line 340
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdFailedToLoad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 341
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2800(Lcom/ironsource/adapters/admob/AdMobAdapter;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "adapterError":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 345
    .end local v0    # "adapterError":Ljava/lang/String;
    :cond_65
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2600(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    .line 346
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 5

    .prologue
    .line 350
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdLeftApplication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 352
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 354
    :cond_3e
    return-void
.end method

.method public onAdLoaded()V
    .registers 5

    .prologue
    .line 367
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdLoaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 368
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 369
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    .line 371
    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2600(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    .line 372
    return-void
.end method

.method public onAdOpened()V
    .registers 5

    .prologue
    .line 358
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 359
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 360
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 361
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    .line 363
    :cond_4f
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass8 (com.ironsource.adapters.admob.AdMobAdapter$8)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$8;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 387
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    .line 388
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    if-nez v0, :cond_1a

    .line 389
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v2, :cond_19

    .line 390
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v3, "invalid adUnitId"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 403
    :cond_19
    :goto_19
    return-void

    .line 395
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 396
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    const-string v3, "adUnitId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "adUnitId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 398
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_19

    .line 400
    .end local v1    # "adUnitId":Ljava/lang/String;
    :cond_44
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v2

    if-nez v2, :cond_19

    .line 401
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_19
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass9 (com.ironsource.adapters.admob.AdMobAdapter$9)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$9;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/adapters/admob/AdMobAdapter;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$3700(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    .line 416
    .local v0, "ad":Lcom/google/android/gms/ads/InterstitialAd;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_20

    .line 417
    :cond_10
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v1, :cond_1f

    .line 418
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v2, "Interstitial"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 424
    :cond_1f
    :goto_1f
    return-void

    .line 423
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_1f
.end method
