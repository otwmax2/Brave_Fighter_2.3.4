###### Class com.ironsource.mediationsdk.events.EventsFormatterFactory (com.ironsource.mediationsdk.events.EventsFormatterFactory)
.class Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;
.super Ljava/lang/Object;
.source "EventsFormatterFactory.java"


# static fields
.field static final AD_UNIT_INTERSTITIAL:I = 0x2

.field static final AD_UNIT_REWARDED_VIDEO:I = 0x3

.field static final TYPE_IRONBEAST:Ljava/lang/String; = "ironbeast"

.field static final TYPE_OUTCOME:Ljava/lang/String; = "outcome"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "adUnit"    # I

    .prologue
    const/4 v4, 0x2

    .line 17
    const-string v0, "ironbeast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18
    new-instance v0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;-><init>(I)V

    .line 33
    :goto_e
    return-object v0

    .line 19
    :cond_f
    const-string v0, "outcome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 20
    new-instance v0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;-><init>(I)V

    goto :goto_e

    .line 22
    :cond_1d
    if-ne p1, v4, :cond_25

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;-><init>(I)V

    goto :goto_e

    .line 24
    :cond_25
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2e

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;-><init>(I)V

    goto :goto_e

    .line 29
    :cond_2e
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventsFormatterFactory failed to instantiate a formatter (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adUnit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 33
    const/4 v0, 0x0

    goto :goto_e
.end method
