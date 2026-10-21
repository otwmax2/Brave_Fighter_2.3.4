###### Class com.moat.analytics.mobile.iro.MoatAdEvent (com.moat.analytics.mobile.iro.MoatAdEvent)
.class public Lcom/moat/analytics/mobile/iro/MoatAdEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final VOLUME_MUTED:Ljava/lang/Double;

.field public static final VOLUME_UNMUTED:Ljava/lang/Double;

.field private static final ˋ:Ljava/lang/Double;

.field static final ˏ:Ljava/lang/Integer;


# instance fields
.field private final ʼ:Ljava/lang/Long;

.field private final ʽ:Ljava/lang/Double;

.field ˊ:Ljava/lang/Integer;

.field ˎ:Ljava/lang/Double;

.field ॱ:Lcom/moat/analytics/mobile/iro/MoatAdEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 21
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˋ:Ljava/lang/Double;

    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->VOLUME_MUTED:Ljava/lang/Double;

    .line 24
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->VOLUME_UNMUTED:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;)V
    .registers 4

    .prologue
    .line 48
    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˋ:Ljava/lang/Double;

    invoke-direct {p0, p1, v0, v1}, Lcom/moat/analytics/mobile/iro/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 44
    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˋ:Ljava/lang/Double;

    invoke-direct {p0, p1, p2, v0}, Lcom/moat/analytics/mobile/iro/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V
    .registers 6

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ʼ:Ljava/lang/Long;

    .line 37
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 38
    iput-object p3, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˎ:Ljava/lang/Double;

    .line 39
    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˊ:Ljava/lang/Integer;

    .line 40
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ॱ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ʽ:Ljava/lang/Double;

    .line 41
    return-void
.end method


# virtual methods
.method final ॱ()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v1, "adVolume"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˎ:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "playhead"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ˊ:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "aTimeStamp"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ʼ:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "type"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "deviceVolume"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->ʽ:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method
