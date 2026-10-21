###### Class com.ironsource.mediationsdk.AbstractAdUnitManager (com.ironsource.mediationsdk.AbstractAdUnitManager)
.class abstract Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.super Ljava/lang/Object;
.source "AbstractAdUnitManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BaseApi;


# instance fields
.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER_PRIORITY:Ljava/lang/String;

.field final KEY_REASON:Ljava/lang/String;

.field final KEY_REWARD_AMOUNT:Ljava/lang/String;

.field final KEY_REWARD_NAME:Ljava/lang/String;

.field final KEY_STATUS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppKey:Ljava/lang/String;

.field mBackFillInitStarted:Z

.field private mBackfillSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

.field mCanShowPremium:Z

.field mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

.field mIsInISDemandOnlyMode:Z

.field mLastMediationAvailabilityState:Ljava/lang/Boolean;

.field mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mPremiumSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

.field mShouldTrackNetworkState:Z

.field mSmartLoadAmount:I

.field final mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractSmash;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "reason"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REASON:Ljava/lang/String;

    .line 23
    const-string v0, "status"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_STATUS:Ljava/lang/String;

    .line 24
    const-string v0, "placement"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_PLACEMENT:Ljava/lang/String;

    .line 25
    const-string v0, "rewardName"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REWARD_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "rewardAmount"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REWARD_AMOUNT:Ljava/lang/String;

    .line 27
    const-string v0, "providerPriority"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_PROVIDER_PRIORITY:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mShouldTrackNetworkState:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z

    .line 49
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mIsInISDemandOnlyMode:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    .line 55
    return-void
.end method


# virtual methods
.method addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 3
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    if-eqz v0, :cond_e

    .line 103
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->addSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 105
    :cond_e
    return-void
.end method

.method declared-synchronized canShowPremium()Z
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disablePremiumForCurrentSession()V
    .registers 2

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mBackfillSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

    return-object v0
.end method

.method declared-synchronized getLoadedAdapterOrFetchByReflection(Lcom/ironsource/mediationsdk/AbstractSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 11
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    .line 173
    .local v3, "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 175
    .local v2, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v2, :cond_87

    .line 176
    iget-object v5, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with reflection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.ironsource.adapters."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Adapter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    .local v1, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "startAdapter"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 180
    .local v4, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    check-cast v2, Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_a7
    .catchall {:try_start_1 .. :try_end_85} :catchall_aa

    .line 188
    .end local v1    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v4    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :goto_85
    monitor-exit p0

    return-object v2

    .line 182
    .restart local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v3    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    :cond_87
    :try_start_87
    iget-object v5, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "using previously loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a6} :catch_a7
    .catchall {:try_start_87 .. :try_end_a6} :catchall_aa

    goto :goto_85

    .line 184
    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v3    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    :catch_a7
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_85

    .line 170
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_aa
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mPremiumSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_20

    .line 75
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 76
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->onPause(Landroid/app/Activity;)V

    goto :goto_d

    .line 78
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 79
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    if-eqz p1, :cond_4

    .line 60
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mActivity:Landroid/app/Activity;

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 63
    :try_start_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_24

    .line 64
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 65
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->onResume(Landroid/app/Activity;)V

    goto :goto_11

    .line 67
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 68
    return-void
.end method

.method public setAge(I)V
    .registers 2
    .param p1, "age"    # I

    .prologue
    .line 84
    return-void
.end method

.method setBackfillSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 6
    .param p1, "backfill"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is set as backfill"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 111
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mBackfillSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 112
    return-void
.end method

.method setConsent(Z)V
    .registers 5
    .param p1, "consent"    # Z

    .prologue
    .line 192
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 194
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    if-eqz v0, :cond_6

    .line 195
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setConsent(Z)V

    goto :goto_6

    .line 198
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_18
    return-void
.end method

.method setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 12
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    .line 133
    .local v0, "age":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setAge(I)V

    .line 136
    :cond_11
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "gender":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 138
    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->setGender(Ljava/lang/String;)V

    .line 140
    :cond_22
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "segment":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 142
    invoke-virtual {p1, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationSegment(Ljava/lang/String;)V

    .line 144
    :cond_33
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "pluginType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 146
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_4c
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getConsent()Ljava/lang/Boolean;

    move-result-object v1

    .line 149
    .local v1, "consent":Ljava/lang/Boolean;
    if-eqz v1, :cond_5d

    .line 150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setConsent(Z)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    .line 156
    .end local v0    # "age":Ljava/lang/Integer;
    .end local v1    # "consent":Ljava/lang/Boolean;
    .end local v3    # "gender":Ljava/lang/String;
    .end local v4    # "pluginType":Ljava/lang/String;
    .end local v5    # "segment":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 153
    :catch_5e
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":setCustomParams():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_5d
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 2
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method setPremiumSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 6
    .param p1, "premium"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is set as premium"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 116
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mPremiumSmash:Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 117
    return-void
.end method

.method setSmartLoadAmount(I)V
    .registers 2
    .param p1, "numberOfAdaptersToLoad"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mSmartLoadAmount:I

    .line 98
    return-void
.end method

.method abstract shouldTrackNetworkState(Landroid/content/Context;Z)V
.end method
