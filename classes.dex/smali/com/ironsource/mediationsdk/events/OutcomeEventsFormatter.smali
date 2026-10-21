###### Class com.ironsource.mediationsdk.events.OutcomeEventsFormatter (com.ironsource.mediationsdk.events.OutcomeEventsFormatter)
.class Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;
.super Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
.source "OutcomeEventsFormatter.java"


# instance fields
.field private final DEFAULT_OC_EVENTS_URL:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "adUnit"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;-><init>()V

    .line 14
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->DEFAULT_OC_EVENTS_URL:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->mAdUnit:I

    .line 18
    return-void
.end method


# virtual methods
.method public format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8
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
    .line 32
    .local p1, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    if-nez p2, :cond_30

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    .line 37
    :goto_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .local v1, "eventsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/eventsmodule/EventData;

    .line 40
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->createJSONForEvent(Lcom/ironsource/eventsmodule/EventData;)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, "jsonEvent":Lorg/json/JSONObject;
    if-eqz v2, :cond_1a

    .line 43
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a

    .line 35
    .end local v0    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v1    # "eventsArray":Lorg/json/JSONArray;
    .end local v2    # "jsonEvent":Lorg/json/JSONObject;
    :cond_30
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_9

    .line 47
    .restart local v1    # "eventsArray":Lorg/json/JSONArray;
    :cond_33
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDefaultEventsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    return-object v0
.end method

.method public getFormatterType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "outcome"

    return-object v0
.end method
