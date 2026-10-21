###### Class com.ironsource.mediationsdk.RewardedVideoManager (com.ironsource.mediationsdk.RewardedVideoManager)
.class Lcom/ironsource/mediationsdk/RewardedVideoManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;
.implements Lcom/ironsource/mediationsdk/utils/DailyCappingListener;


# instance fields
.field private final CAPPED_PER_DAY_REASON:I

.field private final CAPPED_PER_SESSION_REASON:I

.field private final TAG:Ljava/lang/String;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

.field private mIsUltraEventsEnabled:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mPauseSmartLoadDueToNetworkUnavailability:Z

.field private mStatesToIgnore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->CAPPED_PER_SESSION_REASON:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->CAPPED_PER_DAY_REASON:I

    .line 58
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 59
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    const-string v1, "rewarded_video"

    invoke-direct {v0, v1, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    .line 67
    return-void
.end method

.method private declared-synchronized completeAdapterCap()V
    .registers 5

    .prologue
    .line 839
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2b

    move-result-object v1

    if-eqz v1, :cond_9

    .line 852
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 843
    :cond_9
    const/4 v1, 0x3

    :try_start_a
    new-array v1, v1, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x0

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    .line 845
    .local v0, "cappedOrNotAvailable":I
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 846
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    goto :goto_7

    .line 839
    .end local v0    # "cappedOrNotAvailable":I
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 849
    .restart local v0    # "cappedOrNotAvailable":I
    :cond_2e
    const/4 v1, 0x0

    :try_start_2f
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 850
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2b

    goto :goto_7
.end method

.method private declared-synchronized completeIterationRound()V
    .registers 7

    .prologue
    .line 855
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 856
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Reset Iteration"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 858
    const/4 v0, 0x0

    .line 860
    .local v0, "isAvailable":Z
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 861
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_2f

    .line 862
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->completeIteration()V

    .line 864
    :cond_2f
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_18

    .line 865
    const/4 v0, 0x1

    goto :goto_18

    .line 868
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_39
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "End of Reset Iteration"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 870
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 871
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 874
    .end local v0    # "isAvailable":Z
    :cond_54
    monitor-exit p0

    return-void

    .line 855
    :catchall_56
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 808
    const/16 v1, 0x13

    new-array v2, v6, [[Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "placement"

    aput-object v3, v0, v4

    aput-object p2, v0, v5

    aput-object v0, v2, v4

    new-array v3, v6, [Ljava/lang/Object;

    const-string v0, "status"

    aput-object v0, v3, v4

    if-eqz p3, :cond_23

    const-string v0, "true"

    :goto_1b
    aput-object v0, v3, v5

    aput-object v3, v2, v5

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 809
    return-void

    .line 808
    :cond_23
    const-string v0, "false"

    goto :goto_1b
.end method

.method private declared-synchronized hasAvailableSmash()Z
    .registers 6

    .prologue
    .line 759
    monitor-enter p0

    const/4 v0, 0x0

    .line 761
    .local v0, "hasAvailableSmash":Z
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 762
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    if-ne v3, v4, :cond_8

    .line 763
    const/4 v0, 0x1

    .line 768
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_1d
    monitor-exit p0

    return v0

    .line 759
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized isAllLoaded()Z
    .registers 6

    .prologue
    .line 746
    monitor-enter p0

    const/4 v0, 0x1

    .line 748
    .local v0, "allLoaded":Z
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 749
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    if-ne v3, v4, :cond_8

    .line 750
    const/4 v0, 0x0

    .line 755
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_1d
    monitor-exit p0

    return v0

    .line 746
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized isBackFillAvailable()Z
    .registers 2

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 773
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    move-result v0

    .line 775
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 772
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isIterationRoundComplete()Z
    .registers 5

    .prologue
    .line 877
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 878
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 879
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 880
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_30

    if-ne v2, v3, :cond_7

    .line 881
    :cond_2b
    const/4 v1, 0x0

    .line 884
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :goto_2c
    monitor-exit p0

    return v1

    :cond_2e
    const/4 v1, 0x1

    goto :goto_2c

    .line 877
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    .prologue
    .line 640
    const/4 v2, 0x0

    .line 642
    .local v2, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    const/4 v0, 0x0

    .line 644
    .local v0, "activeAdapters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    if-nez v2, :cond_33

    .line 645
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_34

    .line 646
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    .line 648
    iget v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-lt v0, v3, :cond_5f

    .line 658
    :cond_33
    return-object v2

    .line 650
    :cond_34
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_5f

    .line 651
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 653
    if-nez v2, :cond_5f

    .line 654
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 644
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private logMediationEvent(I[[Ljava/lang/Object;)V
    .registers 11
    .param p1, "eventId"    # I
    .param p2, "keyVals"    # [[Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 889
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 892
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p2, :cond_3e

    .line 893
    :try_start_9
    array-length v5, p2

    :goto_a
    if-ge v4, v5, :cond_3e

    aget-object v3, p2, v4

    .line 894
    .local v3, "pair":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1e

    .line 893
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 897
    .end local v3    # "pair":[Ljava/lang/Object;
    :catch_1e
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RewardedVideoManager logMediationEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 901
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v2, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 902
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 903
    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    .registers 12
    .param p1, "eventId"    # I
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p3, "keyVals"    # [[Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 906
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p2, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 909
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p3, :cond_3e

    .line 910
    :try_start_9
    array-length v5, p3

    :goto_a
    if-ge v4, v5, :cond_3e

    aget-object v3, p3, v4

    .line 911
    .local v3, "pair":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1e

    .line 910
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 914
    .end local v3    # "pair":[Ljava/lang/Object;
    :catch_1e
    move-exception v1

    .line 915
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RewardedVideoManager logProviderEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 918
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v2, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 919
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 920
    return-void
.end method

.method private declared-synchronized notifyAvailabilityChange()V
    .registers 4

    .prologue
    .line 816
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    if-nez v1, :cond_27

    .line 818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    .line 819
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    .line 822
    .local v0, "backfillAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v0, :cond_25

    .line 823
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_40

    .line 834
    .end local v0    # "backfillAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    .line 825
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 827
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 828
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_40

    goto :goto_25

    .line 816
    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1

    .line 832
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_40

    goto :goto_25
.end method

.method private declared-synchronized notifyIsAdAvailableForStatistics()V
    .registers 10

    .prologue
    .line 687
    monitor-enter p0

    const/4 v0, 0x0

    .line 689
    .local v0, "mediationStatus":Z
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 690
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_8

    .line 691
    const/4 v0, 0x1

    .line 696
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_1d
    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 699
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 700
    .restart local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_6b

    .line 701
    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "true"

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_2 .. :try_end_67} :catchall_68

    goto :goto_3c

    .line 687
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2

    .line 703
    .restart local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_6b
    :try_start_6b
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_7b

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_3c

    .line 704
    :cond_7b
    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "false"

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    goto :goto_3c

    .line 708
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_93
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v2

    if-eqz v2, :cond_c4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 709
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [[Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v8, "status"

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string v2, "true"

    :goto_bd
    aput-object v2, v7, v8

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    :try_end_c4
    .catchall {:try_start_6b .. :try_end_c4} :catchall_68

    .line 711
    :cond_c4
    monitor-exit p0

    return-void

    .line 709
    :cond_c6
    :try_start_c6
    const-string v2, "false"
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_68

    goto :goto_bd
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "placementId"    # I

    .prologue
    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_32

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 550
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 551
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 549
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 553
    :cond_32
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "adapterUrl"    # Ljava/lang/String;
    .param p2, "hit"    # Z
    .param p3, "placementId"    # I

    .prologue
    .line 563
    monitor-enter p0

    :try_start_1
    const-string v1, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_66

    .line 566
    .local v1, "url":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sdkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-static {v1, p2, p3}, Lcom/ironsource/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_32} :catch_34
    .catchall {:try_start_3 .. :try_end_32} :catchall_66

    .line 577
    :goto_32
    monitor-exit p0

    return-void

    .line 572
    :catch_34
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_35
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportImpression:(providerURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_66

    goto :goto_32

    .line 563
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_66
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private sendShowChanceEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    const/16 v1, 0x77

    new-array v2, v6, [[Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "placement"

    aput-object v3, v0, v4

    aput-object p2, v0, v5

    aput-object v0, v2, v4

    new-array v3, v6, [Ljava/lang/Object;

    const-string v0, "status"

    aput-object v0, v3, v4

    if-eqz p3, :cond_23

    const-string v0, "true"

    :goto_1b
    aput-object v0, v3, v5

    aput-object v3, v2, v5

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 813
    return-void

    .line 812
    :cond_23
    const-string v0, "false"

    goto :goto_1b
.end method

.method private sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V
    .registers 8
    .param p1, "selectedSmash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p2, "priority"    # I
    .param p3, "placementName"    # Ljava/lang/String;

    .prologue
    .line 794
    const/4 v2, 0x1

    invoke-direct {p0, p1, p3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V

    .line 797
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-nez v2, :cond_2a

    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    if-ge v0, p2, :cond_2a

    .line 799
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 800
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v3, :cond_27

    .line 801
    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V

    .line 798
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 805
    .end local v0    # "i":I
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_2a
    return-void
.end method

.method private sendShowCheckAvailabilityEvents(Ljava/lang/String;)V
    .registers 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 780
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v1, v2, :cond_28

    .line 782
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V

    .line 779
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    :cond_28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v1, v2, :cond_25

    .line 785
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V

    goto :goto_25

    .line 789
    :cond_45
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 790
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractSmash;Ljava/lang/String;Z)V

    .line 791
    :cond_60
    return-void
.end method

.method private declared-synchronized shouldNotifyAvailabilityChanged(Z)Z
    .registers 4
    .param p1, "adapterAvailability"    # Z

    .prologue
    .line 714
    monitor-enter p0

    const/4 v0, 0x0

    .line 717
    .local v0, "shouldNotify":Z
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    if-nez v1, :cond_27

    .line 719
    if-eqz p1, :cond_12

    .line 720
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_59

    .line 721
    const/4 v0, 0x1

    .line 742
    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    .line 724
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAllLoaded()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 725
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    .line 726
    const/4 v0, 0x1

    goto :goto_10

    .line 731
    :cond_27
    if-eqz p1, :cond_3a

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 732
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    .line 733
    const/4 v0, 0x1

    goto :goto_10

    .line 737
    :cond_3a
    if-nez p1, :cond_10

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    .line 738
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_59

    .line 739
    const/4 v0, 0x1

    goto :goto_10

    .line 714
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .registers 5
    .param p1, "networkState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 521
    const/4 v0, 0x0

    .line 523
    .local v0, "shouldNotify":Z
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 534
    :goto_6
    return v1

    .line 526
    :cond_7
    if-eqz p1, :cond_21

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 527
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    .line 528
    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    move v1, v0

    .line 534
    goto :goto_6

    .line 529
    :cond_21
    if-nez p1, :cond_1f

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 530
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    .line 531
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private declared-synchronized showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V
    .registers 10
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p2, "index"    # I

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 663
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 666
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    if-eqz v1, :cond_2c

    .line 668
    move-object v0, p1

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 670
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 673
    :cond_2c
    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "placement"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 675
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V

    .line 677
    check-cast p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local p1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->showRewardedVideo()V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 678
    monitor-exit p0

    return-void

    .line 662
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private varargs smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I
    .registers 10
    .param p1, "states"    # [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .prologue
    .line 923
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v4

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "ret":I
    :try_start_4
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 926
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    array-length v6, p1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v6, :cond_a

    aget-object v2, p1, v3

    .line 927
    .local v2, "state":Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v7

    if-ne v7, v2, :cond_24

    .line 928
    add-int/lit8 v0, v0, 0x1

    .line 926
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 933
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    .end local v2    # "state":Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :cond_27
    monitor-exit v4

    return v0

    .line 934
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method private declared-synchronized startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 10
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    const/4 v3, 0x0

    .line 603
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startAdapter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_c5

    .line 606
    :try_start_2d
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getLoadedAdapterOrFetchByReflection(Lcom/ironsource/mediationsdk/AbstractSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_57
    .catchall {:try_start_2d .. :try_end_30} :catchall_c5

    move-result-object v2

    .line 608
    .local v2, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v2, :cond_36

    move-object v2, v3

    .line 636
    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_34
    monitor-exit p0

    return-object v2

    .line 611
    .restart local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_36
    :try_start_36
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToRVAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 614
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 616
    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 617
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 619
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 621
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_56} :catch_57
    .catchall {:try_start_36 .. :try_end_56} :catchall_c5

    goto :goto_34

    .line 622
    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :catch_57
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_58
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startAdapter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 627
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 628
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 630
    :cond_99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Rewarded Video"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    .line 631
    .local v1, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_c2
    .catchall {:try_start_58 .. :try_end_c2} :catchall_c5

    move-object v2, v3

    .line 633
    goto/16 :goto_34

    .line 603
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :catchall_c5
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method protected declared-synchronized disablePremiumForCurrentSession()V
    .registers 4

    .prologue
    .line 587
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->disablePremiumForCurrentSession()V

    .line 589
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 590
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 591
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 593
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 598
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_28
    monitor-exit p0

    return-void

    .line 587
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":initRewardedVideo(appKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 80
    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 85
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v4, :cond_69

    .line 86
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    .line 88
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4a
    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 89
    .local v3, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    move-object v0, v3

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 90
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_66

    goto :goto_4a

    .line 78
    .end local v3    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_66
    move-exception v4

    monitor-exit p0

    throw v4

    .line 94
    :cond_69
    :try_start_69
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->setContext(Landroid/content/Context;)V

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "dailyCappedCount":I
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 98
    .restart local v3    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 99
    const/16 v5, 0x96

    const/4 v6, 0x1

    new-array v6, v6, [[Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "status"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "false"

    aput-object v10, v8, v9

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v3, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 101
    :cond_a3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 102
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 107
    .end local v3    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_b3
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_c3

    .line 108
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_c1
    .catchall {:try_start_69 .. :try_end_c1} :catchall_66

    .line 118
    .end local v1    # "dailyCappedCount":I
    :cond_c1
    monitor-exit p0

    return-void

    .line 112
    .restart local v1    # "dailyCappedCount":I
    :cond_c3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c4
    :try_start_c4
    iget v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-ge v2, v4, :cond_c1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c1

    .line 113
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_66

    move-result-object v4

    if-eqz v4, :cond_c1

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":isRewardedVideoAvailable()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 187
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_48

    if-eqz v3, :cond_26

    .line 196
    :cond_24
    :goto_24
    monitor-exit p0

    return v1

    .line 190
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 191
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v4

    if-eqz v4, :cond_2c

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_48

    move-result v4

    if-eqz v4, :cond_2c

    move v1, v2

    .line 192
    goto :goto_24

    .line 185
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":isRewardedVideoAvailable(instanceId: "

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

    .line 265
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_52

    if-eqz v2, :cond_2f

    .line 274
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v1

    .line 268
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 269
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 270
    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_52

    move-result v1

    goto :goto_2d

    .line 263
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDailyCapReleased()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "atLeastOneSmashBecameAvailable":Z
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 942
    .local v1, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v4, :cond_9

    .line 943
    const/16 v2, 0x96

    new-array v4, v7, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "status"

    aput-object v6, v5, v8

    const-string v6, "false"

    aput-object v6, v5, v7

    aput-object v5, v4, v8

    invoke-direct {p0, v2, v1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 944
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    move-object v2, v1

    .line 945
    check-cast v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 946
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 947
    const/4 v0, 0x1

    goto :goto_9

    .line 952
    .end local v1    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_4c
    if-eqz v0, :cond_59

    .line 953
    invoke-direct {p0, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 954
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v2, v7}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 957
    :cond_59
    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .registers 7
    .param p1, "connected"    # Z

    .prologue
    const/4 v0, 0x0

    .line 495
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v1, :cond_2f

    .line 496
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Availability Changed To: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 498
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 499
    if-nez p1, :cond_28

    const/4 v0, 0x1

    :cond_28
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 500
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 503
    :cond_2f
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 471
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdClicked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 473
    const/16 v0, 0x80

    new-array v1, v4, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "placement"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v5

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 476
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v0, :cond_48

    .line 477
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdClicked(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 483
    :goto_47
    return-void

    .line 481
    :cond_48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_47
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 11
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    const/4 v8, 0x1

    .line 312
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onRewardedVideoAdClosed()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 314
    const/4 v4, 0x6

    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyIsAdAvailableForStatistics()V

    .line 319
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v3, :cond_37

    .line 320
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdClosed(Ljava/lang/String;)V

    .line 345
    :cond_36
    return-void

    .line 325
    :cond_37
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 328
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 329
    .local v1, "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v5, :cond_42

    .line 332
    :try_start_56
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 333
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":reload smash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 334
    move-object v0, v1

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_8a} :catch_8b

    goto :goto_42

    .line 337
    :catch_8b
    move-exception v2

    .line 339
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to call fetchVideo(), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_42
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdEnded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 419
    const/16 v1, 0x9

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdEnded()V

    .line 423
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 298
    const/4 v1, 0x5

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 301
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v0, :cond_34

    .line 302
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdOpened(Ljava/lang/String;)V

    .line 308
    :goto_33
    return-void

    .line 306
    :cond_34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdOpened()V

    goto :goto_33
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 13
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 427
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":onRewardedVideoAdRewarded()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 429
    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p1, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 431
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_25
    const-string v7, "placement"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v7, "rewardName"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v7, "rewardAmount"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_46} :catch_db

    .line 438
    :goto_46
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v7, 0xa

    invoke-direct {v2, v7, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 440
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e1

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "strToTransId":Ljava/lang/String;
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "transId":Ljava/lang/String;
    const-string v7, "transId"

    invoke-virtual {v2, v7, v6}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a2

    .line 447
    const-string v7, "dynamicUserId"

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :cond_a2
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v4

    .line 450
    .local v4, "rvServerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_e1

    .line 451
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 452
    .local v3, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b4

    .line 434
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "rvServerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "strToTransId":Ljava/lang/String;
    .end local v6    # "transId":Ljava/lang/String;
    :catch_db
    move-exception v1

    .line 435
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_46

    .line 457
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_e1
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 460
    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v7, :cond_f8

    .line 461
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v7, v8, v9}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdRewarded(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 467
    :goto_f7
    return-void

    .line 465
    :cond_f8
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v7, v8}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_f7
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 7
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 285
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v0, :cond_37

    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 292
    :goto_36
    return-void

    .line 290
    :cond_37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_36
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdStarted()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 409
    const/16 v1, 0x8

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    .line 413
    return-void
.end method

.method public onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 487
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdVisible()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 488
    const/16 v0, 0xb

    new-array v1, v4, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "placement"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v5

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public declared-synchronized onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 10
    .param p1, "available"    # Z
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c7

    if-nez v1, :cond_73

    .line 351
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 353
    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    invoke-direct {p0, v1, p2, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 356
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsInISDemandOnlyMode:Z

    if-eqz v1, :cond_75

    .line 357
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAvailabilityChanged(Ljava/lang/String;Z)V

    .line 360
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 361
    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_73} :catch_91
    .catchall {:try_start_5 .. :try_end_73} :catchall_c7

    .line 403
    :cond_73
    :goto_73
    monitor-exit p0

    return-void

    .line 366
    :cond_75
    :try_start_75
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 367
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 368
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_90} :catch_91
    .catchall {:try_start_75 .. :try_end_90} :catchall_c7

    goto :goto_73

    .line 399
    :catch_91
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_92
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c6
    .catchall {:try_start_92 .. :try_end_c6} :catchall_c7

    goto :goto_73

    .line 349
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_c7
    move-exception v1

    monitor-exit p0

    throw v1

    .line 373
    :cond_ca
    :try_start_ca
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 374
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a Premium adapter, canShowPremium: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v1

    if-nez v1, :cond_11a

    .line 377
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 379
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 380
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto/16 :goto_73

    .line 386
    :cond_11a
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isMediationAvailable()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 387
    if-eqz p1, :cond_13e

    .line 388
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 389
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto/16 :goto_73

    .line 391
    :cond_13e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 392
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 394
    :cond_148
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 395
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_14e} :catch_91
    .catchall {:try_start_ca .. :try_end_14e} :catchall_c7

    goto/16 :goto_73
.end method

.method setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 2
    .param p1, "currentPlacement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 583
    return-void
.end method

.method public setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    .line 203
    return-void
.end method

.method setIsUltraEventsEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    .line 541
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .line 74
    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 506
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 508
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    .line 510
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_3f

    .line 511
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez v0, :cond_32

    .line 512
    new-instance v0, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 513
    :cond_32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    :cond_3e
    :goto_3e
    return-void

    .line 515
    :cond_3f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz v0, :cond_3e

    .line 516
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_3e
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .registers 14
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":showRewardedVideo(placementName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 125
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 126
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    const-string v7, "Rewarded Video"

    invoke-static {v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_b2

    .line 181
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    .line 130
    :cond_3d
    :try_start_3d
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowCheckAvailabilityEvents(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "capped":I
    const/4 v4, 0x0

    .line 135
    .local v4, "notAvailable":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_166

    .line 136
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 137
    .local v5, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v6, v7, :cond_148

    .line 138
    move-object v0, v5

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v6

    if-eqz v6, :cond_117

    .line 139
    invoke-direct {p0, v5, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    .line 142
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCanShowPremium:Z

    if-eqz v6, :cond_79

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 143
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->disablePremiumForCurrentSession()V

    .line 146
    :cond_79
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 147
    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 148
    const/4 v6, 0x7

    const/4 v7, 0x2

    new-array v7, v7, [[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "status"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "false"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "reason"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v5, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V
    :try_end_b1
    .catchall {:try_start_3d .. :try_end_b1} :catchall_b2

    goto :goto_3b

    .line 122
    .end local v1    # "capped":I
    .end local v3    # "i":I
    .end local v4    # "notAvailable":I
    .end local v5    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_b2
    move-exception v6

    monitor-exit p0

    throw v6

    .line 150
    .restart local v1    # "capped":I
    .restart local v3    # "i":I
    .restart local v4    # "notAvailable":I
    .restart local v5    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_b5
    :try_start_b5
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 151
    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 152
    const/4 v6, 0x7

    const/4 v7, 0x2

    new-array v7, v7, [[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "status"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "false"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "reason"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v5, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 153
    const/16 v6, 0x96

    const/4 v7, 0x1

    new-array v7, v7, [[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "status"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "true"

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v5, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V

    goto/16 :goto_3b

    .line 155
    :cond_109
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 156
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 157
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V

    goto/16 :goto_3b

    .line 163
    :cond_117
    const/4 v7, 0x0

    move-object v0, v5

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v6, v0

    invoke-virtual {p0, v7, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 165
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "FailedToShowVideoException"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed to show video"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_144
    :goto_144
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_43

    .line 168
    :cond_148
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v6, v7, :cond_158

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v6, v7, :cond_15b

    .line 169
    :cond_158
    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    .line 170
    :cond_15b
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v6, v7, :cond_144

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_144

    .line 175
    .end local v5    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_166
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 176
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    goto/16 :goto_3b

    .line 178
    :cond_17b
    add-int v6, v1, v4

    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_3b

    .line 179
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    const-string v7, "Rewarded Video"

    invoke-static {v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_190
    .catchall {:try_start_b5 .. :try_end_190} :catchall_b2

    goto/16 :goto_3b
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":showRewardedVideo(instanceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", placementName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 208
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 209
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    const-string v6, "Rewarded Video"

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_e3

    .line 260
    :cond_45
    :goto_45
    monitor-exit p0

    return-void

    .line 213
    :cond_47
    :try_start_47
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowCheckAvailabilityEvents(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "existingInstanceId":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_15e

    .line 218
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 219
    .local v4, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 220
    const/4 v2, 0x1

    .line 221
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_142

    .line 222
    move-object v0, v4

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 223
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 225
    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [[Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "placement"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v4, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 227
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V

    .line 229
    move-object v0, v4

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->showRewardedVideo()V

    .line 231
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 232
    const/4 v5, 0x7

    const/4 v6, 0x2

    new-array v6, v6, [[Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "status"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "false"

    aput-object v10, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "reason"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v4, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 233
    const/4 v5, 0x0

    check-cast v4, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {p0, v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    :try_end_e1
    .catchall {:try_start_47 .. :try_end_e1} :catchall_e3

    goto/16 :goto_45

    .line 206
    .end local v2    # "existingInstanceId":Z
    .end local v3    # "i":I
    :catchall_e3
    move-exception v5

    monitor-exit p0

    throw v5

    .line 234
    .restart local v2    # "existingInstanceId":Z
    .restart local v3    # "i":I
    .restart local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_e6
    :try_start_e6
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 235
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 236
    const/16 v5, 0x96

    const/4 v6, 0x1

    new-array v6, v6, [[Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "status"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "true"

    aput-object v10, v8, v9

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v4, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 237
    const/4 v5, 0x0

    check-cast v4, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {p0, v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    goto/16 :goto_45

    .line 240
    .restart local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_113
    const/4 v6, 0x0

    move-object v0, v4

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    move-object v5, v0

    invoke-virtual {p0, v6, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 242
    new-instance v1, Ljava/lang/Exception;

    const-string v5, "FailedToShowVideoException"

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Failed to show video"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_142
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_15e

    .line 248
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x20e

    const-string v8, "Instance has reached its cap per session"

    invoke-direct {v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_45

    .line 217
    :cond_15a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4c

    .line 256
    .end local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_15e
    if-nez v2, :cond_16d

    .line 257
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    const-string v6, "Rewarded Video"

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_45

    .line 259
    :cond_16d
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mISDemandOnlyListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    const-string v6, "Rewarded Video"

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_178
    .catchall {:try_start_e6 .. :try_end_178} :catchall_e3

    goto/16 :goto_45
.end method
