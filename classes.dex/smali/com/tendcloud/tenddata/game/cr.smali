###### Class com.tendcloud.tenddata.game.cr (com.tendcloud.tenddata.game.cr)
.class public Lcom/tendcloud/tenddata/game/cr;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "tdudid"

.field private static final B:Ljava/lang/String; = "locs"

.field private static final C:Ljava/lang/String; = "networks"

.field private static final D:Ljava/lang/String; = "accounts"

.field private static final E:Ljava/lang/String; = "imeis"

.field private static final F:Ljava/lang/String; = "serialNO"

.field private static final m:Ljava/lang/String; = "deviceId"

.field private static final n:Ljava/lang/String; = "mobileModel"

.field private static final o:Ljava/lang/String; = "osSdkVersion"

.field private static final p:Ljava/lang/String; = "pixel"

.field private static final q:Ljava/lang/String; = "country"

.field private static final r:Ljava/lang/String; = "language"

.field private static final s:Ljava/lang/String; = "timezone"

.field private static final t:Ljava/lang/String; = "osVersion"

.field private static final u:Ljava/lang/String; = "simOperator"

.field private static final v:Ljava/lang/String; = "networkOperator"

.field private static final w:Ljava/lang/String; = "manufacture"

.field private static final x:Ljava/lang/String; = "networkType"

.field private static final y:Ljava/lang/String; = "carrier"

.field private static final z:Ljava/lang/String; = "apnProxy"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->h:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/tendcloud/tenddata/game/cr;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->g()I

    move-result v1

    iput v1, p0, Lcom/tendcloud/tenddata/game/cr;->c:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->h:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->e()I

    move-result v1

    iput v1, p0, Lcom/tendcloud/tenddata/game/cr;->i:I

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->j:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->k:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->e:Ljava/lang/String;

    :try_start_6d
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->d:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_80

    :goto_77
    :try_start_77
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->l:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7d} :catch_7e

    :goto_7d
    return-void

    :catch_7e
    move-exception v0

    goto :goto_7d

    :catch_80
    move-exception v1

    goto :goto_77
.end method

.method private a(Ljava/util/Map;)V
    .registers 5

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "networkOperator"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "simOperator"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "networkType"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apnProxy"

    invoke-static {}, Lcom/tendcloud/tenddata/game/o;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accounts"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/z;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "locs"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/z;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networks"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/o;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mobileModel"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osSdkVersion"

    iget v2, p0, Lcom/tendcloud/tenddata/game/cr;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pixel"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "language"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timezone"

    iget v2, p0, Lcom/tendcloud/tenddata/game/cr;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osVersion"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manufacture"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tdudid"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imeis"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialNO"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/util/Map;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
