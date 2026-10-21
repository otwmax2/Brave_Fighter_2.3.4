###### Class com.ironsource.sdk.data.DemandSource (com.ironsource.sdk.data.DemandSource)
.class public Lcom/ironsource/sdk/data/DemandSource;
.super Ljava/lang/Object;
.source "DemandSource.java"


# static fields
.field public static final INIT_FAILED:I = 0x3

.field public static final INIT_NOT_STARTED:I = 0x0

.field public static final INIT_PENDING:I = 0x1

.field public static final INIT_SUCCEEDED:I = 0x2

.field public static final MEDIATION_STATE_NOT_SET:I = -0x1


# instance fields
.field private mAvailabilityState:Z

.field private mExtraParams:Ljava/util/Map;
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

.field private mInitState:I

.field private mListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

.field private mMediationState:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)V
    .registers 6
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/sdk/listeners/OnAdProductListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnAdProductListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mMediationState:I

    .line 32
    iput-object p1, p0, Lcom/ironsource/sdk/data/DemandSource;->mName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/ironsource/sdk/data/DemandSource;->mExtraParams:Ljava/util/Map;

    .line 34
    iput-object p3, p0, Lcom/ironsource/sdk/data/DemandSource;->mListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

    .line 35
    iput v1, p0, Lcom/ironsource/sdk/data/DemandSource;->mInitState:I

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/DemandSource;->mAvailabilityState:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getAvailabilityState()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mAvailabilityState:Z

    return v0
.end method

.method public getDemandSourceInitState()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mInitState:I

    return v0
.end method

.method public getDemandSourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParams()Ljava/util/Map;
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
    .line 56
    iget-object v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

    return-object v0
.end method

.method public getMediationState()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mMediationState:I

    return v0
.end method

.method public isMediationState(I)Z
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/ironsource/sdk/data/DemandSource;->mMediationState:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAvailabilityState(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/DemandSource;->mAvailabilityState:Z

    .line 53
    return-void
.end method

.method public declared-synchronized setDemandSourceInitState(I)V
    .registers 3
    .param p1, "initState"    # I

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/ironsource/sdk/data/DemandSource;->mInitState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediationState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/ironsource/sdk/data/DemandSource;->mMediationState:I

    return-void
.end method
