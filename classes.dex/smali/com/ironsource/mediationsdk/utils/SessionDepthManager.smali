###### Class com.ironsource.mediationsdk.utils.SessionDepthManager (com.ironsource.mediationsdk.utils.SessionDepthManager)
.class public Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
.super Ljava/lang/Object;
.source "SessionDepthManager.java"


# static fields
.field public static final BANNER:I = 0x3

.field public static final INTERSTITIAL:I = 0x2

.field public static final NONE:I = -0x1

.field public static final OFFERWALL:I = 0x0

.field public static final REWARDEDVIDEO:I = 0x1

.field private static mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;


# instance fields
.field private mBannerDepth:I

.field private mInterstitialDepth:I

.field private mOfferwallDepth:I

.field private mRewardedVideoDepth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    .line 9
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    .line 10
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    .registers 2

    .prologue
    .line 23
    const-class v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    .line 26
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getSessionDepth(I)I
    .registers 3
    .param p1, "adUnit"    # I

    .prologue
    .line 54
    monitor-enter p0

    packed-switch p1, :pswitch_data_16

    .line 68
    const/4 v0, -0x1

    :goto_5
    monitor-exit p0

    return v0

    .line 56
    :pswitch_7
    :try_start_7
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    goto :goto_5

    .line 59
    :pswitch_a
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    goto :goto_5

    .line 62
    :pswitch_d
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    goto :goto_5

    .line 65
    :pswitch_10
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 54
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized increaseSessionDepth(I)V
    .registers 3
    .param p1, "adUnit"    # I

    .prologue
    .line 30
    monitor-enter p0

    packed-switch p1, :pswitch_data_26

    .line 51
    :goto_4
    monitor-exit p0

    return-void

    .line 32
    :pswitch_6
    :try_start_6
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    goto :goto_4

    .line 30
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :pswitch_10
    :try_start_10
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    goto :goto_4

    .line 40
    :pswitch_17
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    goto :goto_4

    .line 44
    :pswitch_1e
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    goto :goto_4

    .line 30
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method
