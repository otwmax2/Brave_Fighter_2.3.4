###### Class com.ironsource.mediationsdk.model.ApplicationEvents (com.ironsource.mediationsdk.model.ApplicationEvents)
.class public Lcom/ironsource/mediationsdk/model/ApplicationEvents;
.super Ljava/lang/Object;
.source "ApplicationEvents.java"


# instance fields
.field private mBackupThreshold:I

.field private mEventsType:Ljava/lang/String;

.field private mMaxEventsPerBatch:I

.field private mMaxNumberOfEvents:I

.field private mOptOutEvents:[I

.field private mSendEventsToggle:Z

.field private mSendUltraEvents:Z

.field private mServerEventsURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V
    .registers 9
    .param p1, "sendUltraEvents"    # Z
    .param p2, "sendEventsToggle"    # Z
    .param p3, "serverEventsURL"    # Ljava/lang/String;
    .param p4, "serverEventsType"    # Ljava/lang/String;
    .param p5, "backupThreshold"    # I
    .param p6, "maxNumberOfEvents"    # I
    .param p7, "maxEventsPerBatch"    # I
    .param p8, "optOutEvents"    # [I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mSendUltraEvents:Z

    .line 25
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mSendEventsToggle:Z

    .line 26
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mServerEventsURL:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mEventsType:Ljava/lang/String;

    .line 28
    iput p5, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mBackupThreshold:I

    .line 29
    iput p6, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mMaxNumberOfEvents:I

    .line 30
    iput p7, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mMaxEventsPerBatch:I

    .line 31
    iput-object p8, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mOptOutEvents:[I

    .line 32
    return-void
.end method


# virtual methods
.method public getEventsBackupThreshold()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mBackupThreshold:I

    return v0
.end method

.method public getEventsType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mEventsType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventsURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mServerEventsURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxEventsPerBatch()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mMaxEventsPerBatch:I

    return v0
.end method

.method public getMaxNumberOfEvents()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mMaxNumberOfEvents:I

    return v0
.end method

.method public getOptOutEvents()[I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mOptOutEvents:[I

    return-object v0
.end method

.method public isEventsEnabled()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mSendEventsToggle:Z

    return v0
.end method

.method public isUltraEventsEnabled()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->mSendUltraEvents:Z

    return v0
.end method
