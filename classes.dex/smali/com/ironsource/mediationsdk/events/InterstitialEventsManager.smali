###### Class com.ironsource.mediationsdk.events.InterstitialEventsManager (com.ironsource.mediationsdk.events.InterstitialEventsManager)
.class public Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "InterstitialEventsManager.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;


# instance fields
.field private mCurrentBNPlacement:Ljava/lang/String;

.field private mCurrentISPlacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    .line 18
    const-string v0, "ironbeast"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mFormatterType:Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mAdUnitType:I

    .line 20
    const-string v0, "IS"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mEventType:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentBNPlacement:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    if-nez v0, :cond_13

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    .line 28
    sget-object v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->initState()V

    .line 31
    :cond_13
    sget-object v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getCurrentPlacement(I)Ljava/lang/String;
    .registers 3
    .param p1, "eventId"    # I

    .prologue
    .line 93
    const/16 v0, 0x190

    if-lt p1, v0, :cond_b

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentBNPlacement:Ljava/lang/String;

    .line 96
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    goto :goto_a
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .registers 5
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 58
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 59
    .local v0, "sessionDepth":I
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_22

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_22

    .line 60
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 62
    :cond_22
    return v0
.end method

.method protected increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 5
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_12

    .line 68
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 75
    :cond_11
    :goto_11
    return v0

    .line 70
    :cond_12
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x192

    if-ne v1, v2, :cond_11

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getProviderNameForEvent(Lcom/ironsource/eventsmodule/EventData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mediation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 71
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 72
    const/4 v0, 0x1

    goto :goto_11
.end method

.method protected isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4
    .param p1, "currentEvent"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_18

    .line 52
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_18

    .line 53
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .registers 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1d

    .line 83
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentBNPlacement:Ljava/lang/String;

    .line 87
    :goto_1c
    return-void

    .line 85
    :cond_1d
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    goto :goto_1c
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x192

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_48

    .line 42
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_48

    .line 43
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x195

    if-eq v0, v1, :cond_48

    .line 44
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x197

    if-eq v0, v1, :cond_48

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_48

    .line 45
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x19e

    if-ne v0, v1, :cond_4a

    :cond_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method
