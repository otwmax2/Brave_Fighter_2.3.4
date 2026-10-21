###### Class com.ironsource.mediationsdk.events.AbstractEventsFormatter (com.ironsource.mediationsdk.events.AbstractEventsFormatter)
.class abstract Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
.super Ljava/lang/Object;
.source "AbstractEventsFormatter.java"


# instance fields
.field private final EVENTS_KEY_DEFAULT:Ljava/lang/String;

.field private final EVENTS_KEY_IS:Ljava/lang/String;

.field private final EVENTS_KEY_RV:Ljava/lang/String;

.field private final KEY_AD_UNIT:Ljava/lang/String;

.field private final KEY_EVENT_ID:Ljava/lang/String;

.field private final KEY_TIMESTAMP:Ljava/lang/String;

.field mAdUnit:I

.field mGeneralProperties:Lorg/json/JSONObject;

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "eventId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_EVENT_ID:Ljava/lang/String;

    .line 19
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_TIMESTAMP:Ljava/lang/String;

    .line 20
    const-string v0, "adUnit"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_AD_UNIT:Ljava/lang/String;

    .line 22
    const-string v0, "InterstitialEvents"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_IS:Ljava/lang/String;

    .line 23
    const-string v0, "events"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_RV:Ljava/lang/String;

    .line 24
    const-string v0, "events"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method private getEventsKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "adUnit"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_c

    .line 38
    const-string v0, "events"

    :goto_5
    return-object v0

    .line 34
    :pswitch_6
    const-string v0, "InterstitialEvents"

    goto :goto_5

    .line 36
    :pswitch_9
    const-string v0, "events"

    goto :goto_5

    .line 32
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 8
    .param p1, "eventsArray"    # Lorg/json/JSONArray;

    .prologue
    .line 65
    const-string v1, ""

    .line 68
    .local v1, "result":Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    if-eqz v4, :cond_2e

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTimeStamp()J

    move-result-wide v2

    .line 73
    .local v2, "timeStamp":J
    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    const-string v4, "adUnit"

    iget v5, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mAdUnit:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    iget v4, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mAdUnit:I

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 82
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "timeStamp":J
    :cond_2e
    :goto_2e
    return-object v1

    .line 79
    :catch_2f
    move-exception v4

    goto :goto_2e
.end method

.method createJSONForEvent(Lcom/ironsource/eventsmodule/EventData;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "jsonEvent":Lorg/json/JSONObject;
    const-string v2, "eventId"

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 54
    :goto_1b
    return-object v1

    .line 49
    .end local v1    # "jsonEvent":Lorg/json/JSONObject;
    :catch_1c
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    const/4 v1, 0x0

    .restart local v1    # "jsonEvent":Lorg/json/JSONObject;
    goto :goto_1b
.end method

.method public abstract format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
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
.end method

.method protected abstract getDefaultEventsUrl()Ljava/lang/String;
.end method

.method getEventsServerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getDefaultEventsUrl()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    goto :goto_c
.end method

.method public abstract getFormatterType()Ljava/lang/String;
.end method

.method setEventsServerUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    .line 91
    return-void
.end method
