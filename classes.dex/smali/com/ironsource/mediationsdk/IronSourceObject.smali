###### Class com.ironsource.mediationsdk.IronSourceObject (com.ironsource.mediationsdk.IronSourceObject)
.class public Lcom/ironsource/mediationsdk/IronSourceObject;
.super Ljava/lang/Object;
.source "IronSourceObject.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;


# instance fields
.field private final KEY_INIT_COUNTER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdUnitsToInitialize:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBannerAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

.field private mConsent:Ljava/lang/Boolean;

.field private mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mDemandOnlyAdUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mDidInitInterstitial:Z

.field private mDynamicUserId:Ljava/lang/String;

.field private mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitCounter:I

.field private mInitSucceeded:Z

.field private mInitiatedAdUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

.field private mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMediationType:Ljava/lang/String;

.field private mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

.field private mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field private mRequestedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

.field private mRvServerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSegment:Ljava/lang/String;

.field private final mServerResponseLocker:Ljava/lang/Object;

.field private mShouldSendGetInstanceEvent:Z

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 84
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    .line 87
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    .line 93
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 99
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 103
    const-string v0, "sessionDepth"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->KEY_INIT_COUNTER:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 121
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeManagers()V

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    .line 134
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 135
    return-void
.end method

.method private varargs declared-synchronized attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 14
    .param p1, "isDemandOnlyInit"    # Z
    .param p2, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v5, 0x0

    .line 246
    monitor-enter p0

    :try_start_2
    array-length v7, p2

    move v6, v5

    :goto_4
    if-ge v6, v7, :cond_16

    aget-object v0, p2, v6

    .line 247
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    sget-object v8, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v8}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 248
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 246
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 252
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_16
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_71

    if-ne v6, v7, :cond_40

    .line 255
    :try_start_22
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v6, :cond_3e

    .line 256
    array-length v6, p2

    :goto_27
    if-ge v5, v6, :cond_3e

    aget-object v0, p2, v5

    .line 257
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 258
    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_3a
    .catchall {:try_start_22 .. :try_end_37} :catchall_71

    .line 256
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 261
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :catch_3a
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_71

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 264
    :cond_40
    :try_start_40
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    if-nez v6, :cond_c0

    .line 266
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 267
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 269
    .local v4, "shouldSentInstanceEvent":Z
    array-length v6, p2

    :goto_4a
    if-ge v5, v6, :cond_9f

    aget-object v0, p2, v5

    .line 270
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 271
    const/4 v4, 0x1

    .line 273
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_71

    .line 277
    :try_start_61
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_6c
    .catchall {:try_start_61 .. :try_end_69} :catchall_71

    .line 269
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 278
    :catch_6c
    move-exception v2

    .line 279
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_69

    .line 246
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "shouldSentInstanceEvent":Z
    :catchall_71
    move-exception v5

    monitor-exit p0

    throw v5

    .line 282
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "shouldSentInstanceEvent":Z
    :cond_74
    :try_start_74
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ad unit has already been initialized"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 284
    if-eqz p1, :cond_69

    .line 285
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 286
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_74 .. :try_end_9e} :catchall_71

    goto :goto_69

    .line 291
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_9f
    if-eqz v4, :cond_3e

    .line 293
    :try_start_a1
    const-string v5, "sessionDepth"

    iget v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ac} :catch_bb
    .catchall {:try_start_a1 .. :try_end_ac} :catchall_71

    .line 297
    :goto_ac
    :try_start_ac
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0xe

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 298
    .local v3, "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_3e

    .line 294
    .end local v3    # "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_bb
    move-exception v2

    .line 295
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ac

    .line 302
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "shouldSentInstanceEvent":Z
    :cond_c0
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    if-eqz v6, :cond_3e

    .line 305
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    .restart local v1    # "data":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 308
    .restart local v4    # "shouldSentInstanceEvent":Z
    array-length v6, p2

    :goto_ca
    if-ge v5, v6, :cond_130

    aget-object v0, p2, v5

    .line 310
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_105

    .line 311
    const/4 v4, 0x1

    .line 313
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e1
    .catchall {:try_start_ac .. :try_end_e1} :catchall_71

    .line 317
    :try_start_e1
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e9} :catch_fb
    .catchall {:try_start_e1 .. :try_end_e9} :catchall_71

    .line 323
    :goto_e9
    :try_start_e9
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    if-eqz v7, :cond_100

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 324
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 308
    :cond_f8
    :goto_f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 318
    :catch_fb
    move-exception v2

    .line 319
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e9

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_100
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    goto :goto_f8

    .line 330
    :cond_105
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ad unit has already been initialized"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 332
    if-eqz p1, :cond_f8

    .line 333
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 334
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_12f
    .catchall {:try_start_e9 .. :try_end_12f} :catchall_71

    goto :goto_f8

    .line 339
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_130
    if-eqz v4, :cond_3e

    .line 341
    :try_start_132
    const-string v5, "sessionDepth"

    iget v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13d} :catch_14d
    .catchall {:try_start_132 .. :try_end_13d} :catchall_71

    .line 345
    :goto_13d
    :try_start_13d
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0xe

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 346
    .restart local v3    # "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto/16 :goto_3e

    .line 342
    .end local v3    # "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_14d
    move-exception v2

    .line 343
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_151
    .catchall {:try_start_13d .. :try_end_151} :catchall_71

    goto :goto_13d
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    .prologue
    .line 1709
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1710
    const/4 v10, 0x0

    .line 1755
    :goto_7
    return-object v10

    .line 1713
    :cond_8
    const/4 v10, 0x0

    .line 1716
    .local v10, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1717
    .local v4, "gaid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1718
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "using custom identifier"

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1721
    :cond_23
    const/4 v6, 0x0

    .line 1722
    .local v6, "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v1, :cond_2e

    .line 1723
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object v6

    .line 1725
    :cond_2e
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v5

    .line 1727
    .local v5, "mediationType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object v12

    .line 1729
    .local v12, "serverResponseString":Ljava/lang/String;
    if-nez v12, :cond_47

    .line 1730
    const/4 v10, 0x0

    goto :goto_7

    .line 1733
    :cond_47
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_68

    .line 1734
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1736
    .local v9, "encryptedResponseJson":Lorg/json/JSONObject;
    const-string v1, "response"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1738
    .local v8, "encryptedResponse":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1739
    const/4 v10, 0x0

    goto :goto_7

    .line 1742
    :cond_62
    const-string v1, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {v1, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1745
    .end local v8    # "encryptedResponse":Ljava/lang/String;
    .end local v9    # "encryptedResponseJson":Lorg/json/JSONObject;
    :cond_68
    new-instance v11, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {v11, p1, v1, v0, v12}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_7d

    .line 1748
    .end local v10    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .local v11, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :try_start_73
    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_82

    move-result v1

    if-nez v1, :cond_7b

    .line 1749
    const/4 v10, 0x0

    goto :goto_7

    :cond_7b
    move-object v10, v11

    .line 1753
    .end local v11    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v10    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_7

    .line 1751
    .end local v4    # "gaid":Ljava/lang/String;
    .end local v5    # "mediationType":Ljava/lang/String;
    .end local v6    # "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "serverResponseString":Ljava/lang/String;
    :catch_7d
    move-exception v7

    .line 1752
    .local v7, "e":Ljava/lang/Exception;
    :goto_7e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1751
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v4    # "gaid":Ljava/lang/String;
    .restart local v5    # "mediationType":Ljava/lang/String;
    .restart local v6    # "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v12    # "serverResponseString":Ljava/lang/String;
    :catch_82
    move-exception v7

    move-object v10, v11

    .end local v11    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v10    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_7e
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 1672
    const/4 v6, 0x0

    .line 1675
    .local v6, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1678
    .local v2, "cachedResponseString":Ljava/lang/String;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_81

    .line 1683
    .local v1, "cachedJsonObject":Lorg/json/JSONObject;
    :goto_a
    const-string v8, "appKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "cachedAppKey":Ljava/lang/String;
    const-string v8, "userId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1685
    .local v4, "cachedUserId":Ljava/lang/String;
    const-string v8, "response"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "cachedSettings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 1688
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 1689
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 1693
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_80

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 1695
    new-instance v6, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .end local v6    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-direct {v6, p1, v0, v4, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    .restart local v6    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    .line 1698
    .local v7, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1701
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1705
    .end local v7    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_80
    return-object v6

    .line 1679
    .end local v0    # "cachedAppKey":Ljava/lang/String;
    .end local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    .end local v3    # "cachedSettings":Ljava/lang/String;
    .end local v4    # "cachedUserId":Ljava/lang/String;
    :catch_81
    move-exception v5

    .line 1680
    .local v5, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    goto :goto_a
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;
    .registers 2

    .prologue
    .line 112
    const-class v1, Lcom/ironsource/mediationsdk/IronSourceObject;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    if-nez v0, :cond_e

    .line 113
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceObject;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    .line 116
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 2053
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2054
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 2055
    :cond_18
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 2078
    :goto_1a
    return-object v3

    .line 2057
    :cond_1b
    const/4 v2, 0x0

    .line 2060
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :try_start_1c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 2062
    if-nez v2, :cond_46

    .line 2064
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 2066
    if-nez v2, :cond_46

    .line 2067
    const-string v1, "Default placement was not found"

    .line 2068
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_4b

    .line 2075
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :cond_46
    :goto_46
    if-nez v2, :cond_50

    .line 2076
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_1a

    .line 2071
    :catch_4b
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    .line 2078
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_50
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v3

    goto :goto_1a
.end method

.method private getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 11
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 1421
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v4

    .line 1423
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-nez v4, :cond_35

    .line 1424
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1425
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v3, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1428
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v4

    .line 1430
    if-nez v4, :cond_35

    .line 1431
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 1432
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v2, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1445
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    :goto_34
    return-object v5

    .line 1437
    :cond_35
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1438
    .local v1, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 1440
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v0, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1441
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v7, "Interstitial"

    invoke-static {v7, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_34

    :cond_5f
    move-object v5, v4

    .line 1445
    goto :goto_34
.end method

.method private getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 11
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 1127
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v4

    .line 1128
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-nez v4, :cond_35

    .line 1129
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1130
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v3, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1133
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v4

    .line 1134
    if-nez v4, :cond_35

    .line 1135
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 1136
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v2, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1149
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    :goto_34
    return-object v5

    .line 1141
    :cond_35
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v4}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1142
    .local v1, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 1144
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v0, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1145
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v7, "Rewarded Video"

    invoke-static {v7, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_34

    :cond_5d
    move-object v5, v4

    .line 1149
    goto :goto_34
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 2082
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2083
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 2084
    :cond_18
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 2107
    :goto_1a
    return-object v3

    .line 2086
    :cond_1b
    const/4 v2, 0x0

    .line 2089
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :try_start_1c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v2

    .line 2091
    if-nez v2, :cond_46

    .line 2093
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v2

    .line 2095
    if-nez v2, :cond_46

    .line 2096
    const-string v1, "Default placement was not found"

    .line 2097
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_4b

    .line 2104
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :cond_46
    :goto_46
    if-nez v2, :cond_50

    .line 2105
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_1a

    .line 2100
    :catch_4b
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    .line 2107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_50
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v3

    goto :goto_1a
.end method

.method private initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .registers 10
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1764
    const/4 v3, 0x0

    .line 1765
    .local v3, "isRVEventsEnabled":Z
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1766
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v3

    .line 1769
    :cond_18
    const/4 v2, 0x0

    .line 1770
    .local v2, "isISEventsEnabled":Z
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1771
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v2

    .line 1774
    :cond_2f
    const/4 v1, 0x0

    .line 1775
    .local v1, "isBNEventsEnabled":Z
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1776
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v1

    .line 1779
    :cond_46
    if-eqz v3, :cond_185

    .line 1780
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 1781
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 1782
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 1783
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 1784
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 1785
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 1786
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 1790
    :goto_e5
    if-eqz v2, :cond_18e

    .line 1791
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 1792
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 1793
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 1794
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 1795
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 1796
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 1797
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 1809
    :goto_184
    return-void

    .line 1788
    :cond_185
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    goto/16 :goto_e5

    .line 1798
    :cond_18e
    if-eqz v1, :cond_1f2

    .line 1799
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 1800
    .local v0, "config":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 1801
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 1802
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 1803
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 1804
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 1805
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 1806
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_184

    .line 1808
    .end local v0    # "config":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    :cond_1f2
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    goto :goto_184
.end method

.method private initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .registers 5
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 1813
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 1815
    return-void
.end method

.method private initializeManagers()V
    .registers 4

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 657
    new-instance v0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    .line 658
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    .line 660
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 662
    new-instance v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    .line 663
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 664
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 666
    new-instance v0, Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    .line 667
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 668
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 669
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 671
    new-instance v0, Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    .line 672
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    .line 674
    new-instance v0, Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/BannerManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 675
    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .registers 3
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1759
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 1760
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 1761
    return-void
.end method

.method private isBannerConfigurationsReady()Z
    .registers 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1567
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1568
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isInterstitialConfigurationsReady()Z
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1416
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1417
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isOfferwallConfigurationsReady()Z
    .registers 2

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1452
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1453
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isRewardedVideoConfigurationsReady()Z
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1122
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1123
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .registers 6
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "isInitFailed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 569
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 585
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 571
    :pswitch_d
    if-nez p2, :cond_1d

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 572
    :cond_1d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_c

    .line 578
    :pswitch_23
    if-nez p2, :cond_33

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 579
    :cond_33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(Z)V

    goto :goto_c

    .line 569
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_23
    .end packed-switch
.end method

.method private prepareEventManagers(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 590
    invoke-static {}, Lcom/ironsource/mediationsdk/events/SuperLooper;->getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 592
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 593
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 595
    :cond_38
    return-void
.end method

.method private sendIsCappedEvent(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "isCapped"    # Z

    .prologue
    .line 2140
    if-nez p2, :cond_3

    .line 2171
    :cond_2
    :goto_2
    return-void

    .line 2147
    :cond_3
    const/4 v3, 0x0

    .line 2149
    .local v3, "isDemandOnly":Z
    const-string v4, "Interstitial"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v4, :cond_35

    .line 2150
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-boolean v3, v4, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsInISDemandOnlyMode:Z

    .line 2154
    :cond_14
    :goto_14
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2156
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_18
    const-string v4, "reason"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1e} :catch_46

    .line 2161
    :goto_1e
    const-string v4, "Interstitial"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2162
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x22

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2163
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_2

    .line 2151
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_35
    const-string v4, "Rewarded Video"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v4, :cond_14

    .line 2152
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-boolean v3, v4, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    goto :goto_14

    .line 2157
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_46
    move-exception v1

    .line 2158
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e

    .line 2164
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4b
    const-string v4, "Rewarded Video"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2165
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x14

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2166
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_2

    .line 2167
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_62
    const-string v4, "Banner"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2168
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x19e

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2169
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_2
.end method

.method private startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 6
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 393
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 407
    :goto_b
    return-void

    .line 395
    :pswitch_c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startRewardedVideo()V

    goto :goto_b

    .line 398
    :pswitch_10
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startInterstitial()V

    goto :goto_b

    .line 401
    :pswitch_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/OfferwallManager;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 404
    :pswitch_24
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startBanner()V

    goto :goto_b

    .line 393
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_24
    .end packed-switch
.end method

.method private startBanner()V
    .registers 13

    .prologue
    .line 515
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v2

    .line 516
    .local v2, "bannerTimeout":J
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerRefreshInterval()I

    move-result v0

    .line 518
    .local v0, "bannerInterval":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_66

    .line 519
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "provider":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 522
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v5

    .line 524
    .local v5, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v5, :cond_63

    .line 525
    new-instance v7, Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {v7, v5, v2, v3, v0}, Lcom/ironsource/mediationsdk/BannerSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;JI)V

    .line 527
    .local v7, "smash":Lcom/ironsource/mediationsdk/BannerSmash;
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v7, v8}, Lcom/ironsource/mediationsdk/BannerSmash;->setBannerManagerListener(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V

    .line 528
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lcom/ironsource/mediationsdk/BannerSmash;->setProviderPriority(I)V

    .line 529
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v8, v7}, Lcom/ironsource/mediationsdk/BannerManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 518
    .end local v5    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v7    # "smash":Lcom/ironsource/mediationsdk/BannerSmash;
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 534
    .end local v4    # "provider":Ljava/lang/String;
    :cond_66
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v8, v8, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-lez v8, :cond_93

    .line 535
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadAmount()I

    move-result v6

    .line 536
    .local v6, "smartLoadAmount":I
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v8, v6}, Lcom/ironsource/mediationsdk/BannerManager;->setSmartLoadAmount(I)V

    .line 538
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/BannerManager;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .end local v6    # "smartLoadAmount":I
    :goto_92
    return-void

    .line 540
    :cond_93
    sget-object v8, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    goto :goto_92
.end method

.method private startInterstitial()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 479
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v8, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsInISDemandOnlyMode:Z

    .line 480
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-boolean v6, v6, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsInISDemandOnlyMode:Z

    if-eqz v6, :cond_1c

    .line 481
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Interstitial started in Demand Only mode"

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 483
    :cond_1c
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v1

    .line 485
    .local v1, "interstitialTimeout":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7a

    .line 486
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 488
    .local v2, "provider":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 489
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    .line 491
    .local v3, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v3, :cond_77

    .line 492
    new-instance v5, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {v5, v3, v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 494
    .local v5, "smash":Lcom/ironsource/mediationsdk/InterstitialSmash;
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 495
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 497
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setProviderPriority(I)V

    .line 498
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 485
    .end local v3    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v5    # "smash":Lcom/ironsource/mediationsdk/InterstitialSmash;
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 504
    .end local v2    # "provider":Ljava/lang/String;
    :cond_7a
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a7

    .line 505
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v4

    .line 506
    .local v4, "smartLoadAmount":I
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->setSmartLoadAmount(I)V

    .line 508
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v4    # "smartLoadAmount":I
    :goto_a6
    return-void

    .line 510
    :cond_a7
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v6, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    goto :goto_a6
.end method

.method private startRewardedVideo()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 410
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v12, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v11, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    .line 411
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-boolean v11, v11, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v11, :cond_1c

    .line 412
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v12, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v13, "Rewarded Video started in Demand Only mode"

    invoke-virtual {v11, v12, v13, v14}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 414
    :cond_1c
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v7

    .line 416
    .local v7, "rewardedVideoTimeout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_7a

    .line 417
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 419
    .local v5, "provider":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_77

    .line 420
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v6

    .line 422
    .local v6, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v6, :cond_77

    .line 423
    new-instance v9, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v9, v6, v7}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 425
    .local v9, "smash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    invoke-direct {p0, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 426
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v9, v11}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 427
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v9, v11}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setProviderPriority(I)V

    .line 428
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v11, v9}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 416
    .end local v6    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v9    # "smash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 435
    .end local v5    # "provider":Ljava/lang/String;
    :cond_7a
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v11, v11, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-lez v11, :cond_118

    .line 436
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v10

    .line 437
    .local v10, "ultraEventsEnabled":Z
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v11, v10}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setIsUltraEventsEnabled(Z)V

    .line 439
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v8

    .line 440
    .local v8, "smartLoadAmount":I
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v11, v8}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setSmartLoadAmount(I)V

    .line 442
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "backfillProvider":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_db

    .line 445
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v6

    .line 447
    .restart local v6    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v6, :cond_db

    .line 448
    new-instance v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v1, v6, v7}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 450
    .local v1, "backfillSmash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 451
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, v11}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 452
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v11, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setBackfillSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 457
    .end local v1    # "backfillSmash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    .end local v6    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_db
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "premiumProvider":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_108

    .line 460
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v6

    .line 462
    .restart local v6    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v6, :cond_108

    .line 463
    new-instance v4, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v4, v6, v7}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 465
    .local v4, "premiumSmash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v11

    if-eqz v11, :cond_108

    .line 466
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, v11}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 467
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v11, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setPremiumSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 472
    .end local v4    # "premiumSmash":Lcom/ironsource/mediationsdk/RewardedVideoSmash;
    .end local v6    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_108
    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v12, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v0    # "backfillProvider":Ljava/lang/String;
    .end local v3    # "premiumProvider":Ljava/lang/String;
    .end local v8    # "smartLoadAmount":I
    .end local v10    # "ultraEventsEnabled":Z
    :goto_117
    return-void

    .line 474
    :cond_118
    sget-object v11, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v11, v14}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    goto :goto_117
.end method

.method private validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7
    .param p1, "age"    # I
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1897
    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    const/16 v1, 0x78

    if-le p1, v1, :cond_14

    .line 1898
    :cond_7
    :try_start_7
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_14} :catch_15

    .line 1903
    :cond_14
    :goto_14
    return-void

    .line 1900
    :catch_15
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_14
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1926
    if-nez p1, :cond_4

    .line 1927
    const/4 v1, 0x0

    .line 1930
    :goto_3
    return v1

    .line 1929
    :cond_4
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 1930
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .registers 6
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1854
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1857
    .local v1, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_2e

    .line 1858
    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1859
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1860
    const-string v2, "appKey"

    const-string v3, "should contain only english characters and numbers"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 1862
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1874
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_21
    :goto_21
    return-object v1

    .line 1865
    :cond_22
    const-string v2, "appKey"

    const-string v3, "length should be between 5-10 characters"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 1867
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_21

    .line 1870
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_2e
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fa

    const-string v3, "Init Fail - appKey is missing"

    invoke-direct {v0, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1871
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_21
.end method

.method private validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 6
    .param p1, "dynamicUserId"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1917
    const/4 v0, 0x1

    const/16 v1, 0x80

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1918
    const-string v0, "dynamicUserId"

    const-string v1, "SupersonicAds"

    const-string v2, "dynamicUserId is invalid, should be between 1-128 chars in length."

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1919
    :cond_16
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1879
    if-eqz p1, :cond_2f

    .line 1880
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1882
    const-string v1, "male"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "female"

    .line 1883
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "unknown"

    .line 1884
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1885
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    .line 1890
    :cond_2f
    :goto_2f
    return-void

    .line 1887
    :catch_30
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2f
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 1922
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1907
    if-eqz p1, :cond_17

    .line 1908
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_17

    .line 1909
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 1914
    :cond_17
    :goto_17
    return-void

    .line 1911
    :catch_18
    move-exception v0

    .line 1912
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_17
.end method

.method private validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .registers 4
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    const/4 v0, 0x1

    .line 545
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerIteration()I

    move-result v1

    if-lt v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerSession()I

    move-result v1

    if-lt v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method declared-synchronized addOWAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 614
    monitor-exit p0

    return-void

    .line 613
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToBannerAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 608
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 609
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 610
    :cond_14
    monitor-exit p0

    return-void

    .line 608
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToISAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 604
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 605
    :cond_14
    monitor-exit p0

    return-void

    .line 603
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToRVAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 598
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 599
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 600
    :cond_14
    monitor-exit p0

    return-void

    .line 598
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearRewardedVideoServerParameters()V
    .registers 2

    .prologue
    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    .line 1009
    return-void
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 1573
    const-string v0, "createBanner()"

    .line 1574
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1575
    if-nez p1, :cond_18

    .line 1576
    const-string v0, "createBanner() : Activity cannot be null"

    .line 1577
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1578
    const/4 v1, 0x0

    .line 1580
    :goto_17
    return-object v1

    :cond_18
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    goto :goto_17
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 7
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 1619
    const-string v1, "destroyBanner()"

    .line 1620
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1623
    :try_start_a
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    .line 1627
    :goto_f
    return-void

    .line 1624
    :catch_10
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1960
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1961
    .local v0, "deviceInfo":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_14

    const/4 v2, 0x0

    aget-object v2, v0, v2

    if-eqz v2, :cond_14

    .line 1962
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1967
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    :goto_f
    return-object v2

    .line 1963
    :catch_10
    move-exception v1

    .line 1964
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_f

    .line 1967
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceInfo":[Ljava/lang/String;
    :cond_14
    const-string v2, ""

    goto :goto_f
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 842
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllSettingsForProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v0, :cond_a

    .line 2204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2206
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_9
.end method

.method getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 2111
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2112
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 2113
    :cond_18
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 2136
    :goto_1a
    return-object v3

    .line 2115
    :cond_1b
    const/4 v2, 0x0

    .line 2118
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    :try_start_1c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 2120
    if-nez v2, :cond_46

    .line 2122
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 2124
    if-nez v2, :cond_46

    .line 2125
    const-string v1, "Default placement was not found"

    .line 2126
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_4b

    .line 2133
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :cond_46
    :goto_46
    if-nez v2, :cond_50

    .line 2134
    sget-object v3, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_1a

    .line 2129
    :catch_4b
    move-exception v0

    .line 2130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    .line 2136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_50
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v3

    goto :goto_1a
.end method

.method getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;
    .registers 6
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "cappingStatus"    # Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .prologue
    const/4 v0, 0x0

    .line 2174
    if-nez p2, :cond_4

    .line 2186
    :goto_3
    return-object v0

    .line 2177
    :cond_4
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    goto :goto_3

    .line 2179
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is capped by disabled delivery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2181
    :pswitch_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached its capping limit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2183
    :pswitch_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached its limit as defined per pace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2177
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_2a
        :pswitch_44
    .end packed-switch
.end method

.method getConsent()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 2

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method declared-synchronized getDynamicUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 854
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    .line 619
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 620
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_78
    .catchall {:try_start_1 .. :try_end_1e} :catchall_96

    move-result v3

    if-eqz v3, :cond_b

    .line 647
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_21
    monitor-exit p0

    return-object v0

    .line 625
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_44

    .line 626
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 627
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_21

    .line 632
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_44
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_65

    .line 633
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 634
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_21

    .line 639
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_65
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_94

    .line 640
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 641
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_77} :catch_78
    .catchall {:try_start_23 .. :try_end_77} :catchall_96

    goto :goto_21

    .line 644
    :catch_78
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/Exception;
    :try_start_79
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExistingAdapter exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_96

    .line 647
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_94
    const/4 v0, 0x0

    goto :goto_21

    .line 618
    :catchall_96
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 846
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 7
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1935
    const/4 v0, 0x0

    .line 1937
    .local v0, "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 1938
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .line 1942
    :goto_34
    return-object v0

    .line 1939
    :catch_35
    move-exception v1

    goto :goto_34
.end method

.method public declared-synchronized getIronSourceAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1846
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIronSourceUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1850
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMediationSegment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 850
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 862
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOfferwallCredits()V
    .registers 6

    .prologue
    .line 1526
    const-string v1, "getOfferwallCredits()"

    .line 1527
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1530
    :try_start_a
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    .line 1534
    :goto_f
    return-void

    .line 1531
    :catch_10
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 7
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1947
    const/4 v0, 0x0

    .line 1949
    .local v0, "result":Lcom/ironsource/mediationsdk/model/Placement;
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 1950
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .line 1954
    :goto_34
    return-object v0

    .line 1951
    :catch_35
    move-exception v1

    goto :goto_34
.end method

.method declared-synchronized getRvServerParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    .prologue
    .line 1636
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 1638
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_10

    .line 1639
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v2

    .line 1668
    :goto_f
    return-object v0

    .line 1645
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 1648
    .local v0, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1651
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 1657
    :cond_20
    if-eqz v0, :cond_30

    .line 1658
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1659
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 1660
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 1664
    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 1665
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 1666
    monitor-exit v2

    goto :goto_f

    .end local v0    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "isDemandOnlyInit"    # Z
    .param p4, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v5, 0x0

    .line 138
    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_123

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 139
    if-eqz p4, :cond_15

    array-length v6, p4

    if-nez v6, :cond_59

    .line 141
    :cond_15
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_1b
    if-ge v6, v8, :cond_27

    aget-object v0, v7, v6

    .line 142
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 144
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_27
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 155
    :cond_2a
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 157
    if-nez p1, :cond_77

    .line 158
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Init Fail - provided activity is null"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_da

    .line 209
    :goto_57
    monitor-exit p0

    return-void

    .line 146
    :cond_59
    :try_start_59
    array-length v7, p4

    move v6, v5

    :goto_5b
    if-ge v6, v7, :cond_2a

    aget-object v0, p4, v6

    .line 147
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v8, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v8}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 150
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 146
    :cond_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    .line 162
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_77
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 163
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->prepareEventManagers(Landroid/app/Activity;)V

    .line 166
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v4

    .line 167
    .local v4, "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 168
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 180
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    if-eqz v6, :cond_f9

    .line 181
    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_8f
    .catchall {:try_start_59 .. :try_end_8f} :catchall_da

    move-result-object v1

    .line 183
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz p4, :cond_dd

    .line 184
    :try_start_92
    array-length v6, p4

    :goto_93
    if-ge v5, v6, :cond_dd

    aget-object v0, p4, v5

    .line 185
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9f} :catch_11e
    .catchall {:try_start_92 .. :try_end_9f} :catchall_da

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 170
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_a2
    :try_start_a2
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 171
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    .line 172
    :cond_b2
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 173
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 175
    :cond_c6
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_d8
    .catchall {:try_start_a2 .. :try_end_d8} :catchall_da

    goto/16 :goto_57

    .line 138
    .end local v4    # "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catchall_da
    move-exception v5

    monitor-exit p0

    throw v5

    .line 188
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_dd
    :try_start_dd
    const-string v5, "sessionDepth"

    iget v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e8} :catch_11e
    .catchall {:try_start_dd .. :try_end_e8} :catchall_da

    .line 192
    :goto_e8
    :try_start_e8
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0xe

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 193
    .local v3, "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 194
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 197
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_f9
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 198
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 201
    :cond_10c
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 202
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto/16 :goto_57

    .line 189
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_11e
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e8

    .line 204
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_123
    if-eqz p4, :cond_12a

    .line 205
    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto/16 :goto_57

    .line 207
    :cond_12a
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Multiple calls to init without ad units are not allowed"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_134
    .catchall {:try_start_e8 .. :try_end_134} :catchall_da

    goto/16 :goto_57
.end method

.method public varargs declared-synchronized initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "validAdUnitsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    if-eqz p3, :cond_7e

    .line 215
    array-length v4, p3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_68

    aget-object v0, p3, v3

    .line 216
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 217
    :cond_1e
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ad unit cannot be initialized in demand only mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 215
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 221
    :cond_3c
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 222
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 225
    :cond_47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 228
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 230
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsInISDemandOnlyMode:Z
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_65

    goto :goto_39

    .line 212
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .end local v2    # "validAdUnitsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    .line 235
    .restart local v2    # "validAdUnitsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    :cond_68
    :try_start_68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7e

    .line 236
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 237
    .local v1, "validAdUnitsArr":[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "validAdUnitsArr":[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    check-cast v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 239
    .restart local v1    # "validAdUnitsArr":[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_65

    .line 242
    .end local v1    # "validAdUnitsArr":[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_7e
    monitor-exit p0

    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 873
    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 878
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 868
    return-void
.end method

.method isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 2030
    const/4 v1, 0x0

    .line 2032
    .local v1, "isCapped":Z
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 2034
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_12

    .line 2035
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a

    .line 2047
    :cond_12
    :goto_12
    const-string v2, "Banner"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 2049
    return v1

    .line 2039
    :pswitch_18
    const/4 v1, 0x1

    .line 2040
    goto :goto_12

    .line 2035
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1371
    const/4 v3, 0x0

    .line 1374
    .local v3, "isAvailable":Z
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1375
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Interstitial was initialized in mediation mode. Use isInterstitialReady instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1376
    const/4 v4, 0x0

    .line 1399
    :goto_17
    return v4

    .line 1379
    :cond_18
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady(Ljava/lang/String;)Z

    move-result v3

    .line 1381
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_66

    move-result-object v0

    .line 1383
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_23
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_66

    .line 1388
    :goto_2c
    :try_start_2c
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1389
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1391
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isISDemandOnlyInterstitialReady(instanceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_5f
    move v4, v3

    .line 1399
    goto :goto_17

    .line 1384
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_61
    move-exception v1

    .line 1385
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_65} :catch_66

    goto :goto_2c

    .line 1392
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_66
    move-exception v1

    .line 1394
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isISDemandOnlyInterstitialReady(instanceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1395
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isISDemandOnlyInterstitialReady(instanceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1396
    const/4 v3, 0x0

    goto :goto_5f
.end method

.method public isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1077
    const/4 v3, 0x0

    .line 1080
    .local v3, "isAvailable":Z
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1081
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Rewarded Video was initialized in mediation mode. Use isRewardedVideoAvailable instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1082
    const/4 v4, 0x0

    .line 1105
    :goto_17
    return v4

    .line 1085
    :cond_18
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 1087
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_5c

    move-result-object v0

    .line 1089
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_23
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_5c

    .line 1094
    :goto_2c
    :try_start_2c
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x12

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1095
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1097
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isISDemandOnlyRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_55
    move v4, v3

    .line 1105
    goto :goto_17

    .line 1090
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_57
    move-exception v1

    .line 1091
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_5b} :catch_5c

    goto :goto_2c

    .line 1098
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5c
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isISDemandOnlyRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1101
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "isISDemandOnlyRewardedVideoAvailable()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1102
    const/4 v3, 0x0

    goto :goto_55
.end method

.method isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1984
    const/4 v1, 0x0

    .line 1986
    .local v1, "isCapped":Z
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1988
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_12

    .line 1989
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a

    .line 2001
    :cond_12
    :goto_12
    const-string v2, "Interstitial"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 2003
    return v1

    .line 1993
    :pswitch_18
    const/4 v1, 0x1

    .line 1994
    goto :goto_12

    .line 1989
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public isInterstitialReady()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1242
    const/4 v3, 0x0

    .line 1245
    .local v3, "isAvailable":Z
    :try_start_3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1246
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1270
    :goto_17
    return v4

    .line 1250
    :cond_18
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady()Z

    move-result v3

    .line 1252
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_5c

    move-result-object v0

    .line 1254
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_23
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_5c

    .line 1259
    :goto_2c
    :try_start_2c
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1260
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1262
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_55
    move v4, v3

    .line 1270
    goto :goto_17

    .line 1255
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_57
    move-exception v1

    .line 1256
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_5b} :catch_5c

    goto :goto_2c

    .line 1263
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5c
    move-exception v1

    .line 1265
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1266
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "isInterstitialReady()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1267
    const/4 v3, 0x0

    goto :goto_55
.end method

.method public isOfferwallAvailable()Z
    .registers 4

    .prologue
    .line 1512
    const/4 v1, 0x0

    .line 1515
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    if-eqz v2, :cond_b

    .line 1516
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 1521
    :cond_b
    :goto_b
    return v1

    .line 1517
    :catch_c
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isRewardedVideoAvailable()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 948
    const/4 v3, 0x0

    .line 951
    .local v3, "isAvailable":Z
    :try_start_3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 952
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 976
    :goto_17
    return v4

    .line 956
    :cond_18
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v3

    .line 958
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_5c

    move-result-object v0

    .line 960
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_23
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_5c

    .line 965
    :goto_2c
    :try_start_2c
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x12

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 966
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 968
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_55
    move v4, v3

    .line 976
    goto :goto_17

    .line 961
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_57
    move-exception v1

    .line 962
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_5b} :catch_5c

    goto :goto_2c

    .line 969
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5c
    move-exception v1

    .line 971
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 972
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "isRewardedVideoAvailable()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    const/4 v3, 0x0

    goto :goto_55
.end method

.method isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 2007
    const/4 v1, 0x0

    .line 2009
    .local v1, "isCapped":Z
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 2011
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_12

    .line 2012
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a

    .line 2024
    :cond_12
    :goto_12
    const-string v2, "Rewarded Video"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 2026
    return v1

    .line 2016
    :pswitch_18
    const/4 v1, 0x1

    .line 2017
    goto :goto_12

    .line 2012
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 8
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 1601
    const-string v1, "loadBanner()"

    .line 1604
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1606
    if-nez p1, :cond_17

    .line 1607
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "loadBanner can\'t be called with a null parameter"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1615
    :goto_16
    return-void

    .line 1611
    :cond_17
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_16

    .line 1612
    :catch_1e
    move-exception v0

    .line 1613
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 9
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBanner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1589
    if-nez p1, :cond_2e

    .line 1590
    :try_start_23
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "loadBanner can\'t be called with a null parameter"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1598
    :goto_2d
    return-void

    .line 1594
    :cond_2e
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_2d

    .line 1595
    :catch_34
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public loadISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyInterstitial("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1291
    :try_start_21
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1292
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1305
    :goto_35
    return-void

    .line 1296
    :cond_36
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-nez v2, :cond_4e

    .line 1297
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() must be called before loadInterstitial()"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_44} :catch_45

    goto :goto_35

    .line 1302
    :catch_45
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 1301
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_45

    goto :goto_35
.end method

.method public loadInterstitial()V
    .registers 7

    .prologue
    .line 1156
    const-string v1, "loadInterstitial()"

    .line 1157
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1160
    :try_start_a
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1161
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1174
    :goto_1e
    return-void

    .line 1165
    :cond_1f
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-nez v2, :cond_37

    .line 1166
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() must be called before loadInterstitial()"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 1171
    :catch_2e
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 1170
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_2e

    goto :goto_1e
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInitFailed(reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 553
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v2, :cond_40

    .line 554
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 555
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_2b

    .line 558
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :catch_3c
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_40
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .registers 12
    .param p2, "revived"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    const/4 v4, 0x0

    .line 354
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    .line 355
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 356
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "onInitSuccess()"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 359
    if-eqz p2, :cond_2b

    .line 360
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_5b

    move-result-object v1

    .line 362
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_17
    const-string v5, "revived"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1d} :catch_56
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_5b

    .line 366
    :goto_1d
    :try_start_1d
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x72

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 367
    .local v3, "revivedEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 371
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "revivedEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_2b
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->triggerEventsSend()V

    .line 372
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->triggerEventsSend()V

    .line 375
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    array-length v6, v5

    :goto_3e
    if-ge v4, v6, :cond_5f

    aget-object v0, v5, v4

    .line 377
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 380
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 375
    :cond_53
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 363
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_56
    move-exception v2

    .line 364
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5a} :catch_5b

    goto :goto_1d

    .line 387
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_5b
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5f
    return-void

    .line 383
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_60
    const/4 v7, 0x0

    :try_start_61
    invoke-direct {p0, v0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_5b

    goto :goto_53
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 703
    const-string v1, "onPause()"

    .line 706
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 708
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v2, :cond_13

    .line 709
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onPause(Landroid/app/Activity;)V

    .line 711
    :cond_13
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v2, :cond_1c

    .line 712
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->onPause(Landroid/app/Activity;)V

    .line 714
    :cond_1c
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v2, :cond_25

    .line 715
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerManager;->onPause(Landroid/app/Activity;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_26

    .line 720
    :cond_25
    :goto_25
    return-void

    .line 717
    :catch_26
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 681
    const-string v1, "onResume()"

    .line 684
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 685
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 687
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v2, :cond_15

    .line 688
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onResume(Landroid/app/Activity;)V

    .line 690
    :cond_15
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v2, :cond_1e

    .line 691
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->onResume(Landroid/app/Activity;)V

    .line 693
    :cond_1e
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v2, :cond_27

    .line 694
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerManager;->onResume(Landroid/app/Activity;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28

    .line 699
    :cond_27
    :goto_27
    return-void

    .line 696
    :catch_28
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public onStillInProgressAfter15Secs()V
    .registers 1

    .prologue
    .line 566
    return-void
.end method

.method public removeInterstitialListener()V
    .registers 5

    .prologue
    .line 1827
    const-string v0, "removeInterstitialListener()"

    .line 1828
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1830
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1831
    return-void
.end method

.method public removeOfferwallListener()V
    .registers 5

    .prologue
    .line 1835
    const-string v0, "removeOfferwallListener()"

    .line 1836
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1838
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 1839
    return-void
.end method

.method public removeRewardedVideoListener()V
    .registers 5

    .prologue
    .line 1819
    const-string v0, "removeRewardedVideoListener()"

    .line 1820
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1822
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1823
    return-void
.end method

.method public setAdaptersDebug(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 814
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setAdaptersDebug(Z)V

    .line 815
    return-void
.end method

.method public declared-synchronized setAge(I)V
    .registers 9
    .param p1, "age"    # I

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setAge(age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 728
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 730
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 732
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_51
    .catchall {:try_start_1 .. :try_end_3c} :catchall_79

    .line 739
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_3c
    monitor-exit p0

    return-void

    .line 735
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_50} :catch_51
    .catchall {:try_start_3e .. :try_end_50} :catchall_79

    goto :goto_3c

    .line 736
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_51
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    :try_start_52
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setAge(age:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_52 .. :try_end_78} :catchall_79

    goto :goto_3c

    .line 725
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_79
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setConsent(Z)V
    .registers 10
    .param p1, "consent"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2231
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 2232
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setConsent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2233
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v3, :cond_2c

    .line 2234
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setConsent(Z)V

    .line 2236
    :cond_2c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v3, :cond_35

    .line 2237
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setConsent(Z)V

    .line 2239
    :cond_35
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v3, :cond_3e

    .line 2240
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setConsent(Z)V

    .line 2243
    :cond_3e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v3, :cond_67

    .line 2244
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Offerwall | setConsent(consent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2245
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    .line 2248
    :cond_67
    const/16 v0, 0x28

    .line 2249
    .local v0, "code":I
    if-nez p1, :cond_6d

    .line 2250
    const/16 v0, 0x29

    .line 2253
    :cond_6d
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 2254
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2255
    .local v2, "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 2256
    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .registers 10
    .param p1, "dynamicUserId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 791
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 794
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 796
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 798
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 799
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 808
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_39
    return v3

    .line 802
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_3a
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4e

    move v3, v4

    .line 803
    goto :goto_39

    .line 806
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_4e
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 808
    goto :goto_39
.end method

.method public declared-synchronized setGender(Ljava/lang/String;)V
    .registers 9
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 744
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setGender(gender:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 747
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 749
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 751
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 752
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_4d
    .catchall {:try_start_1 .. :try_end_38} :catchall_75

    .line 758
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_38
    monitor-exit p0

    return-void

    .line 754
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_4d
    .catchall {:try_start_3a .. :try_end_4c} :catchall_75

    goto :goto_38

    .line 755
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_4d
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setGender(gender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_4e .. :try_end_74} :catchall_75

    goto :goto_38

    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    .prologue
    const/4 v3, 0x1

    .line 1403
    if-nez p1, :cond_12

    .line 1404
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1409
    :goto_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 1410
    return-void

    .line 1406
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    .prologue
    const/4 v3, 0x1

    .line 1109
    if-nez p1, :cond_12

    .line 1110
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1115
    :goto_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 1116
    return-void

    .line 1112
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    const/4 v3, 0x1

    .line 1275
    if-nez p1, :cond_12

    .line 1276
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1281
    :goto_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1282
    return-void

    .line 1278
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setInterstitialListener(ISListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method declared-synchronized setIronSourceUserId(Ljava/lang/String;)V
    .registers 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1842
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1843
    monitor-exit p0

    return-void

    .line 1842
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 7
    .param p1, "logListener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    const/4 v4, 0x1

    .line 1550
    if-nez p1, :cond_d

    .line 1551
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1558
    :goto_c
    return-void

    .line 1553
    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 1554
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogListener(LogListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 9
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 763
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setMediationSegment(segment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 766
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 768
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 770
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 771
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 777
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_37
    return-void

    .line 773
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_38
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_37

    .line 774
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_4b
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setMediationSegment(segment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public setMediationType(Ljava/lang/String;)V
    .registers 8
    .param p1, "mediationType"    # Ljava/lang/String;

    .prologue
    .line 821
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setMediationType(mediationType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 825
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 826
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    .line 837
    .end local v1    # "logMessage":Ljava/lang/String;
    :goto_38
    return-void

    .line 829
    .restart local v1    # "logMessage":Ljava/lang/String;
    :cond_39
    const-string v1, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 830
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_38

    .line 833
    .end local v1    # "logMessage":Ljava/lang/String;
    :catch_44
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":setMediationType(mediationType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 6
    .param p1, "offerwallListener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    const/4 v3, 0x1

    .line 1538
    if-nez p1, :cond_12

    .line 1539
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1544
    :goto_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 1545
    return-void

    .line 1541
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setOfferwallListener(OWListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 1563
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    const/4 v3, 0x1

    .line 981
    if-nez p1, :cond_12

    .line 982
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 988
    :goto_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 989
    return-void

    .line 984
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_c
.end method

.method public setRewardedVideoServerParameters(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 1004
    :cond_8
    :goto_8
    return-void

    .line 998
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1000
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    goto :goto_8

    .line 1001
    .end local v1    # "logMessage":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 6
    .param p1, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 780
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v0, v1, :cond_18

    .line 781
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_25

    .line 783
    :cond_18
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Segments must be set prior to Init. Setting a segment after the init will be ignored"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 786
    :goto_24
    return-void

    .line 785
    :cond_25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    goto :goto_24
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v0, :cond_12

    .line 2196
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 2197
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 2200
    :cond_12
    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v0, :cond_9

    .line 1973
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1975
    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v0, :cond_12

    .line 1976
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1978
    :cond_12
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v0, :cond_1b

    .line 1979
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1981
    :cond_1b
    return-void
.end method

.method public showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 10
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showISDemandOnlyInterstitial("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, "logMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1312
    :try_start_21
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1313
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1331
    :cond_35
    :goto_35
    return-void

    .line 1317
    :cond_36
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1318
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_49} :catch_4a

    goto :goto_35

    .line 1327
    :catch_4a
    move-exception v1

    .line 1328
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_35

    .line 1322
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_60
    :try_start_60
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 1323
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v0, :cond_35

    .line 1324
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_77} :catch_4a

    goto :goto_35
.end method

.method public showISDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showISDemandOnlyInterstitial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_38

    const-string v5, ")"

    :goto_14
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1335
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1338
    :try_start_23
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 1339
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_66

    .line 1368
    :cond_37
    :goto_37
    return-void

    .line 1334
    .end local v3    # "logMessage":Ljava/lang/String;
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " , "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    .line 1343
    .restart local v3    # "logMessage":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1344
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_66

    goto :goto_37

    .line 1364
    :catch_66
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1366
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_37

    .line 1348
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7c
    :try_start_7c
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v4

    .line 1350
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v4, :cond_37

    .line 1351
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_66

    move-result-object v0

    .line 1353
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_87
    const-string v5, "placement"

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_90} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_66

    .line 1358
    :goto_90
    :try_start_90
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x17

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1359
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1361
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1362
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 1354
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_ad
    move-exception v1

    .line 1355
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b1} :catch_66

    goto :goto_90
.end method

.method public showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 10
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showISDemandOnlyRewardedVideo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "logMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1018
    :try_start_21
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1019
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Rewarded Video was initialized in mediation mode. Use showRewardedVideo instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1037
    :cond_35
    :goto_35
    return-void

    .line 1023
    :cond_36
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1024
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showISDemandOnlyRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_49} :catch_4a

    goto :goto_35

    .line 1033
    :catch_4a
    move-exception v1

    .line 1034
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showISDemandOnlyRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_35

    .line 1028
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_60
    :try_start_60
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 1029
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v0, :cond_35

    .line 1030
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_77} :catch_4a

    goto :goto_35
.end method

.method public showISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showISDemandOnlyRewardedVideo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_38

    const-string v5, ")"

    :goto_14
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1044
    :try_start_23
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 1045
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Rewarded Video was initialized in mediation mode. Use showRewardedVideo instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_66

    .line 1074
    :cond_37
    :goto_37
    return-void

    .line 1040
    .end local v3    # "logMessage":Ljava/lang/String;
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " , "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    .line 1049
    .restart local v3    # "logMessage":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1050
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showISDemandOnlyRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v7, "Rewarded Video"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_66

    goto :goto_37

    .line 1070
    :catch_66
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1072
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showISDemandOnlyRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v7, "Rewarded Video"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_37

    .line 1054
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7c
    :try_start_7c
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v4

    .line 1056
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v4, :cond_37

    .line 1057
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_66

    move-result-object v0

    .line 1059
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_87
    const-string v5, "placement"

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_90} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_66

    .line 1064
    :goto_90
    :try_start_90
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1065
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1067
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 1068
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 1060
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_ac
    move-exception v1

    .line 1061
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b0} :catch_66

    goto :goto_90
.end method

.method public showInterstitial()V
    .registers 9

    .prologue
    .line 1177
    const-string v2, "showInterstitial()"

    .line 1178
    .local v2, "logMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1181
    :try_start_a
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1182
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1200
    :cond_1e
    :goto_1e
    return-void

    .line 1186
    :cond_1f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_49

    .line 1187
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_33

    goto :goto_1e

    .line 1196
    :catch_33
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1198
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1e

    .line 1191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_49
    :try_start_49
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 1192
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v0, :cond_1e

    .line 1193
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_60} :catch_33

    goto :goto_1e
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .registers 11
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showInterstitial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1208
    :try_start_21
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1209
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1238
    :cond_35
    :goto_35
    return-void

    .line 1213
    :cond_36
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_60

    .line 1214
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_49} :catch_4a

    goto :goto_35

    .line 1234
    :catch_4a
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1236
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_35

    .line 1218
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_60
    :try_start_60
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v4

    .line 1220
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v4, :cond_35

    .line 1221
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6a} :catch_4a

    move-result-object v0

    .line 1223
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_6b
    const-string v5, "placement"

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_74} :catch_91
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_4a

    .line 1228
    :goto_74
    :try_start_74
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x17

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1229
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1231
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1232
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    goto :goto_35

    .line 1224
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_91
    move-exception v1

    .line 1225
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_95} :catch_4a

    goto :goto_74
.end method

.method public showOfferwall()V
    .registers 8

    .prologue
    .line 1458
    const-string v2, "showOfferwall()"

    .line 1461
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1463
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1464
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v6, "Offerwall"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1477
    :cond_1d
    :goto_1d
    return-void

    .line 1468
    :cond_1e
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v0

    .line 1469
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz v0, :cond_1d

    .line 1470
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1471
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_1d

    .line 1473
    .end local v0    # "defaultPlacement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .end local v3    # "placementName":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 1474
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1475
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v6, "Offerwall"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1d
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .registers 10
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showOfferwall("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1484
    :try_start_21
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_35

    .line 1485
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v7, "Offerwall"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1508
    :goto_34
    return-void

    .line 1489
    :cond_35
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 1490
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-nez v4, :cond_80

    .line 1491
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1492
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v3, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1495
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 1496
    if-nez v4, :cond_80

    .line 1497
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 1498
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v2, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_69} :catch_6a

    goto :goto_34

    .line 1504
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    .end local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :catch_6a
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1506
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v7, "Offerwall"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_34

    .line 1503
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_80
    :try_start_80
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/OfferwallManager;->showOfferwall(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_6a

    goto :goto_34
.end method

.method public showRewardedVideo()V
    .registers 9

    .prologue
    .line 883
    const-string v2, "showRewardedVideo()"

    .line 884
    .local v2, "logMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 887
    :try_start_a
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 888
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 906
    :cond_1e
    :goto_1e
    return-void

    .line 892
    :cond_1f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_49

    .line 893
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_33

    goto :goto_1e

    .line 902
    :catch_33
    move-exception v1

    .line 903
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 904
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1e

    .line 897
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_49
    :try_start_49
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 898
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v0, :cond_1e

    .line 899
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_60} :catch_33

    goto :goto_1e
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .registers 11
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showRewardedVideo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 914
    :try_start_21
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyAdUnits:Ljava/util/ArrayList;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 915
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 944
    :cond_35
    :goto_35
    return-void

    .line 919
    :cond_36
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_60

    .line 920
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v7, "Rewarded Video"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_49} :catch_4a

    goto :goto_35

    .line 940
    :catch_4a
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 942
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v7, "Rewarded Video"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_35

    .line 924
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_60
    :try_start_60
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v4

    .line 926
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v4, :cond_35

    .line 927
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6a} :catch_4a

    move-result-object v0

    .line 929
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_6b
    const-string v5, "placement"

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_74} :catch_90
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_4a

    .line 934
    :goto_74
    :try_start_74
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 935
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 937
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 938
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_35

    .line 930
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_90
    move-exception v1

    .line 931
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_94} :catch_4a

    goto :goto_74
.end method

.method validateBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .registers 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 2210
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 2212
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-nez v2, :cond_35

    .line 2213
    const-string v1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 2215
    .local v1, "noPlacementMessage":Ljava/lang/String;
    if-eqz p1, :cond_1c

    .line 2216
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2219
    :cond_1c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 2221
    if-nez v2, :cond_35

    .line 2222
    const-string v0, "Default placement was not found, please make sure you are using the right placements."

    .line 2223
    .local v0, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2227
    .end local v0    # "noDefaultPlacement":Ljava/lang/String;
    .end local v1    # "noPlacementMessage":Ljava/lang/String;
    :cond_35
    return-object v2
.end method

###### Class com.ironsource.mediationsdk.IronSourceObject.AnonymousClass1 (com.ironsource.mediationsdk.IronSourceObject$1)
.class synthetic Lcom/ironsource/mediationsdk/IronSourceObject$1;
.super Ljava/lang/Object;
.source "IronSourceObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/IronSourceObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

.field static final synthetic $SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1989
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->values()[Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73

    .line 393
    :goto_35
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    :try_start_3e
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71

    :goto_49
    :try_start_49
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    :catch_71
    move-exception v0

    goto :goto_49

    .line 1989
    :catch_73
    move-exception v0

    goto :goto_35

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method

###### Class com.ironsource.mediationsdk.IronSourceObject.IResponseListener (com.ironsource.mediationsdk.IronSourceObject$IResponseListener)
.class public interface abstract Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
.super Ljava/lang/Object;
.source "IronSourceObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/IronSourceObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResponseListener"
.end annotation


# virtual methods
.method public abstract onUnrecoverableError(Ljava/lang/String;)V
.end method
