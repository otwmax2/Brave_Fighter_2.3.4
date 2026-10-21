###### Class com.ironsource.mediationsdk.events.BaseEventsManager (com.ironsource.mediationsdk.events.BaseEventsManager)
.class public abstract Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    }
.end annotation


# static fields
.field private static final KEY_SESSION_DEPTH:Ljava/lang/String; = "sessionDepth"


# instance fields
.field final DATABASE_NAME:Ljava/lang/String;

.field final DATABASE_VERSION:I

.field final DEFAULT_BACKUP_THRESHOLD:I

.field final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER:Ljava/lang/String;

.field private final MEDIATION_ABT:Ljava/lang/String;

.field mAdUnitType:I

.field private mBackupThreshold:I

.field private mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

.field private mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

.field mEventType:Ljava/lang/String;

.field private mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

.field mFormatterType:Ljava/lang/String;

.field private mHadTopPriorityEvent:Z

.field private mHasServerResponse:Z

.field private mIsEventsEnabled:Z

.field private mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMaxEventsPerBatch:I

.field private mMaxNumberOfEvents:I

.field private mOptOutEvents:[I

.field private mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

.field private mTotalEvents:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x1388

    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_BACKUP_THRESHOLD:I

    .line 35
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    .line 36
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_VERSION:I

    .line 39
    const-string v0, "supersonic_sdk.db"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "provider"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PROVIDER:Ljava/lang/String;

    .line 43
    const-string v0, "placement"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PLACEMENT:Ljava/lang/String;

    .line 44
    const-string v0, "abt"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->MEDIATION_ABT:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 54
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 57
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 58
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 59
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;
    .param p1, "x1"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return p1
.end method

.method static synthetic access$408(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return v0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    return v0
.end method

.method static synthetic access$502(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private backupEventsToDb()V
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    return-void
.end method

.method private initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 9
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "localEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    .local p2, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "allEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    new-instance v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    invoke-direct {v3, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p3, :cond_1f

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :goto_1e
    return-object v2

    .line 236
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, p3, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "eventsToSave":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private sendEvents()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 160
    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 162
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 163
    .local v5, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    invoke-direct {p0, v6, v5, v7}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .local v1, "combinedEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->clearEvents(Ljava/lang/String;)V

    .line 167
    iput v8, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_65

    .line 170
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    .line 174
    .local v4, "generalProperties":Lorg/json/JSONObject;
    :try_start_2f
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->updateSegmentsData(Lorg/json/JSONObject;)V

    .line 177
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getAbt()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "abt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 179
    const-string v6, "abt"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_41} :catch_66

    .line 185
    .end local v0    # "abt":Ljava/lang/String;
    :cond_41
    :goto_41
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v6, v1, v4}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "dataToSend":Ljava/lang/String;
    new-instance v6, Lcom/ironsource/eventsmodule/EventsSender;

    new-instance v7, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    invoke-direct {v7, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-direct {v6, v7}, Lcom/ironsource/eventsmodule/EventsSender;-><init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 212
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsServerUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    .end local v2    # "dataToSend":Ljava/lang/String;
    .end local v4    # "generalProperties":Lorg/json/JSONObject;
    :cond_65
    return-void

    .line 181
    .restart local v4    # "generalProperties":Lorg/json/JSONObject;
    :catch_66
    move-exception v3

    .line 182
    .local v3, "ex":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_41
.end method

.method private shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "shouldBackup":Z
    if-eqz p1, :cond_c

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    if-lt v1, v2, :cond_d

    const/4 v0, 0x1

    .line 325
    :cond_c
    :goto_c
    return v0

    .line 323
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 6
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 329
    const/4 v2, 0x1

    .line 331
    .local v2, "logEvent":Z
    if-eqz p1, :cond_1d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-lez v3, :cond_1d

    .line 332
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    .line 333
    .local v0, "eventId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1d

    .line 334
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_1e

    .line 335
    const/4 v2, 0x0

    .line 341
    .end local v0    # "eventId":I
    .end local v1    # "i":I
    :cond_1d
    return v2

    .line 333
    .restart local v0    # "eventId":I
    .restart local v1    # "i":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method private shouldSendEvents()Z
    .registers 4

    .prologue
    .line 309
    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    iget v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    if-ge v1, v2, :cond_a

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-eqz v1, :cond_10

    :cond_a
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 310
    .local v0, "shouldSendEvents":Z
    :goto_f
    return v0

    .line 309
    .end local v0    # "shouldSendEvents":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updateSegmentsData(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 380
    :try_start_0
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v5, :cond_86

    .line 381
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v5

    if-lez v5, :cond_17

    .line 382
    const-string v5, "age"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    :cond_17
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 384
    const-string v5, "gen"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    :cond_2e
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v5

    if-lez v5, :cond_41

    .line 386
    const-string v5, "lvl"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    :cond_41
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 388
    const-string v5, "pay"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 389
    :cond_58
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_6f

    .line 390
    const-string v5, "iapt"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 391
    :cond_6f
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_86

    .line 392
    const-string v5, "ucd"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 395
    :cond_86
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    if-eqz v5, :cond_bd

    .line 396
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 398
    const-string v5, "segmentId"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    :cond_9b
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object v0

    .line 401
    .local v0, "customs":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 402
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 403
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 404
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b8} :catch_b9

    goto :goto_a5

    .line 408
    .end local v0    # "customs":Lorg/json/JSONObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :catch_b9
    move-exception v1

    .line 409
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 412
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_bd
    return-void
.end method

.method private verifyCurrentFormatter(Ljava/lang/String;)V
    .registers 3
    .param p1, "formatterType"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getFormatterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 246
    :cond_10
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 248
    :cond_18
    return-void
.end method


# virtual methods
.method protected abstract getCurrentPlacement(I)Ljava/lang/String;
.end method

.method getProviderNameForEvent(Lcom/ironsource/eventsmodule/EventData;)Ljava/lang/String;
    .registers 7
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 352
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v3, "provider"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    .line 358
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_11
    return-object v2

    .line 354
    :catch_12
    move-exception v0

    .line 355
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_11
.end method

.method protected abstract getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
.end method

.method protected abstract increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method initState()V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 74
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->start()V

    .line 76
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->prepareHandler()V

    .line 77
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 78
    return-void
.end method

.method protected abstract isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized log(Lcom/ironsource/eventsmodule/EventData;)V
    .registers 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 156
    monitor-exit p0

    return-void

    .line 96
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .registers 9
    .param p1, "eventData"    # Lcom/ironsource/eventsmodule/EventData;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 367
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "singleEventArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "dataToSend":Ljava/lang/String;
    new-instance v2, Lcom/ironsource/eventsmodule/EventsSender;

    invoke-direct {v2}, Lcom/ironsource/eventsmodule/EventsSender;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 376
    .end local v0    # "dataToSend":Ljava/lang/String;
    .end local v1    # "singleEventArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :goto_2b
    return-void

    .line 373
    :catch_2c
    move-exception v2

    goto :goto_2b
.end method

.method public setBackupThreshold(I)V
    .registers 2
    .param p1, "backupThreshold"    # I

    .prologue
    .line 252
    if-lez p1, :cond_4

    .line 253
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 254
    :cond_4
    return-void
.end method

.method protected abstract setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .param p1, "eventsUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 277
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_f

    .line 278
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 280
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_14
    return-void
.end method

.method public setFormatterType(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .param p1, "formatterType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 287
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 291
    :cond_10
    return-void
.end method

.method public setHasServerResponse(Z)V
    .registers 2
    .param p1, "hasResponse"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    .line 346
    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 296
    return-void
.end method

.method public setMaxEventsPerBatch(I)V
    .registers 2
    .param p1, "maxEventsPerBatch"    # I

    .prologue
    .line 264
    if-lez p1, :cond_4

    .line 265
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 266
    :cond_4
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .registers 2
    .param p1, "maxNumberOfEvents"    # I

    .prologue
    .line 258
    if-lez p1, :cond_4

    .line 259
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 260
    :cond_4
    return-void
.end method

.method public setOptOutEvents([ILandroid/content/Context;)V
    .registers 4
    .param p1, "optOutEvents"    # [I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 271
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    .line 272
    return-void
.end method

.method public declared-synchronized setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V
    .registers 3
    .param p1, "serverSegment"    # Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected abstract shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 84
    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 85
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 87
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 88
    monitor-exit p0

    return-void

    .line 81
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public triggerEventsSend()V
    .registers 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    .line 363
    return-void
.end method

###### Class com.ironsource.mediationsdk.events.BaseEventsManager.AnonymousClass1 (com.ironsource.mediationsdk.events.BaseEventsManager$1)
.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field final synthetic val$event:Lcom/ironsource/eventsmodule/EventData;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 99
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 153
    :cond_d
    :goto_d
    return-void

    .line 105
    :cond_e
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"eventId\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v6}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"timestamp\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v6}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v6}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "ret":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, ","

    const-string v8, "\n"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_60} :catch_fc

    .line 112
    .end local v2    # "ret":Ljava/lang/String;
    :goto_60
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 114
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_ad

    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    .line 115
    invoke-virtual {v5}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_ad

    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    .line 116
    invoke-virtual {v5}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_ad

    .line 118
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v3

    .line 120
    .local v3, "sessionDepth":I
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v4

    .line 121
    .local v4, "shouldUseNewDepth":Z
    if-eqz v4, :cond_a2

    .line 122
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v3

    .line 123
    :cond_a2
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v6, "sessionDepth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .end local v3    # "sessionDepth":I
    .end local v4    # "shouldUseNewDepth":Z
    :cond_ad
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 127
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V

    .line 134
    :cond_be
    :goto_be
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$408(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I

    .line 138
    :cond_ce
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    .line 140
    .local v1, "isTopPriority":Z
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v5

    if-nez v5, :cond_e5

    if-eqz v1, :cond_e5

    .line 141
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5, v9}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$502(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z

    .line 143
    :cond_e5
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 145
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v5

    if-eqz v5, :cond_132

    .line 146
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto/16 :goto_d

    .line 107
    .end local v1    # "isTopPriority":Z
    :catch_fc
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_60

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_102
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v6}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_be

    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 130
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v6, "placement"

    iget-object v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v8}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_be

    .line 147
    .restart local v1    # "isTopPriority":Z
    :cond_132
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_142

    if-eqz v1, :cond_d

    .line 148
    :cond_142
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto/16 :goto_d
.end method

###### Class com.ironsource.mediationsdk.events.BaseEventsManager.AnonymousClass2 (com.ironsource.mediationsdk.events.BaseEventsManager$2)
.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsSenderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEventsSenderResult(Ljava/util/ArrayList;Z)V
    .registers 5
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "extraData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 211
    monitor-exit p0

    return-void

    .line 189
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.ironsource.mediationsdk.events.BaseEventsManager.AnonymousClass2.AnonymousClass1 (com.ironsource.mediationsdk.events.BaseEventsManager$2$1)
.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->onEventsSenderResult(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

.field final synthetic val$extraData:Ljava/util/ArrayList;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;ZLjava/util/ArrayList;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$success:Z

    iput-object p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 192
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$success:Z

    if-eqz v2, :cond_2f

    .line 194
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$402(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I

    .line 207
    .end local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :cond_2e
    :goto_2e
    return-void

    .line 198
    :cond_2f
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    .line 200
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$402(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I

    goto :goto_2e
.end method

###### Class com.ironsource.mediationsdk.events.BaseEventsManager.AnonymousClass3 (com.ironsource.mediationsdk.events.BaseEventsManager$3)
.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ironsource/eventsmodule/EventData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ironsource/eventsmodule/EventData;Lcom/ironsource/eventsmodule/EventData;)I
    .registers 7
    .param p1, "event1"    # Lcom/ironsource/eventsmodule/EventData;
    .param p2, "event2"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 221
    check-cast p1, Lcom/ironsource/eventsmodule/EventData;

    check-cast p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->compare(Lcom/ironsource/eventsmodule/EventData;Lcom/ironsource/eventsmodule/EventData;)I

    move-result v0

    return v0
.end method

###### Class com.ironsource.mediationsdk.events.BaseEventsManager.EventThread (com.ironsource.mediationsdk.events.BaseEventsManager$EventThread)
.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
.super Landroid/os/HandlerThread;
.source "BaseEventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .line 438
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 439
    return-void
.end method


# virtual methods
.method postTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method prepareHandler()V
    .registers 3

    .prologue
    .line 446
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->mHandler:Landroid/os/Handler;

    .line 447
    return-void
.end method
