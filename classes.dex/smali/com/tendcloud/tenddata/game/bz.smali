###### Class com.tendcloud.tenddata.game.bz (com.tendcloud.tenddata.game.bz)
.class public abstract Lcom/tendcloud/tenddata/game/bz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "eventData"

.field public static final b:Ljava/lang/String; = "locations"

.field public static final c:Ljava/lang/String; = "networks"

.field static e:J = 0x0L

.field static f:Lorg/json/JSONArray; = null

.field private static final g:Ljava/lang/String; = "eventID"

.field private static final h:Ljava/lang/String; = "eventOccurTime"


# instance fields
.field protected d:J

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tendcloud/tenddata/game/bz;->e:J

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/z;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->f:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bz;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bz;->d:J

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract a()V
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bz;->a()V

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bz;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventOccurTime"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/bz;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "eventData"

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bz;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tendcloud/tenddata/game/bz;->e:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x4e20

    cmp-long v1, v4, v6

    if-ltz v1, :cond_51

    sget-wide v4, Lcom/tendcloud/tenddata/game/bz;->e:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4f

    const-string v1, "locations"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/z;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "networks"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/o;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4f
    sput-wide v2, Lcom/tendcloud/tenddata/game/bz;->e:J

    :cond_51
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_54} :catch_56

    move-result-object v0

    :goto_55
    return-object v0

    :catch_56
    move-exception v0

    const/4 v0, 0x0

    goto :goto_55
.end method

.method protected d()Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bz;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bz;->j:Ljava/util/Map;

    return-object v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
