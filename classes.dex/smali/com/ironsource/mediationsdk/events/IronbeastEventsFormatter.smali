###### Class com.ironsource.mediationsdk.events.IronbeastEventsFormatter (com.ironsource.mediationsdk.events.IronbeastEventsFormatter)
.class Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;
.super Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
.source "IronbeastEventsFormatter.java"


# instance fields
.field private final DEFAULT_IB_EVENTS_URL:Ljava/lang/String;

.field private final IB_KEY_DATA:Ljava/lang/String;

.field private final IB_KEY_TABLE:Ljava/lang/String;

.field private final IB_TABLE_NAME:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "adUnit"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;-><init>()V

    .line 27
    const-string v0, "https://track.atom-data.io"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->DEFAULT_IB_EVENTS_URL:Ljava/lang/String;

    .line 29
    const-string v0, "super.dwh.mediation_events"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->IB_TABLE_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "table"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->IB_KEY_TABLE:Ljava/lang/String;

    .line 31
    const-string v0, "data"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->IB_KEY_DATA:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->mAdUnit:I

    .line 35
    return-void
.end method


# virtual methods
.method public format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10
    .param p2, "generalProperties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v3, "jsonBody":Lorg/json/JSONObject;
    if-nez p2, :cond_3e

    .line 52
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    .line 57
    :goto_e
    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v2, "eventsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/eventsmodule/EventData;

    .line 60
    .local v1, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->createJSONForEvent(Lcom/ironsource/eventsmodule/EventData;)Lorg/json/JSONObject;

    move-result-object v4

    .line 62
    .local v4, "jsonEvent":Lorg/json/JSONObject;
    if-eqz v4, :cond_1f

    .line 63
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_34} :catch_35

    goto :goto_1f

    .line 70
    .end local v1    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v2    # "eventsArray":Lorg/json/JSONArray;
    .end local v4    # "jsonEvent":Lorg/json/JSONObject;
    :catch_35
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_39
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 54
    :cond_3e
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_e

    .line 67
    .restart local v2    # "eventsArray":Lorg/json/JSONArray;
    :cond_41
    :try_start_41
    const-string v5, "table"

    const-string v6, "super.dwh.mediation_events"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v5, "data"

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_51} :catch_35

    goto :goto_39
.end method

.method public getDefaultEventsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, "https://track.atom-data.io"

    return-object v0
.end method

.method public getFormatterType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "ironbeast"

    return-object v0
.end method
