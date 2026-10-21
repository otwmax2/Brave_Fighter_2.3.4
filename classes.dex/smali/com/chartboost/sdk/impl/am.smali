###### Class com.chartboost.sdk.impl.am (com.chartboost.sdk.impl.am)
.class public final Lcom/chartboost/sdk/impl/am;
.super Lcom/chartboost/sdk/impl/aj;
.source "SourceFile"


# instance fields
.field private final n:Lorg/json/JSONObject;

.field private final o:Lorg/json/JSONObject;

.field private final p:Lorg/json/JSONObject;

.field private final q:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V
    .registers 7

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6

    .prologue
    .line 145
    if-nez p3, :cond_e

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_e
    return-void
.end method

.method protected c()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "app"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->s:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "bundle"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->j:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "bundle_id"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->k:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "custom_id"

    sget-object v4, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "session_id"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "ui"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "test_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    const-string v3, "certification_providers"

    .line 61
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->f()Lorg/json/JSONArray;

    move-result-object v4

    .line 60
    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v2, "app"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->o:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "carrier_name"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    const-string v5, "carrier-name"

    .line 68
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "mobile_country_code"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    const-string v5, "mobile-country-code"

    .line 69
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "mobile_network_code"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    const-string v6, "mobile-network-code"

    .line 70
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "iso_country_code"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    const-string v6, "iso-country-code"

    .line 71
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "phone_type"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    const-string v6, "phone-type"

    .line 72
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    .line 67
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v4, "carrier"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "model"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "device_type"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->t:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "actual_device_type"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->u:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "os"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->g:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "country"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->h:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "language"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "reachability"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ai;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "scale"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->r:Ljava/lang/Float;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v4

    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "rooted_device"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-boolean v4, v4, Lcom/chartboost/sdk/impl/ap;->w:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "timezone"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->x:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "mobile_network"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->y:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "dw"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "dh"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->p:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "dpi"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->q:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "w"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "h"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "user_agent"

    sget-object v4, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "device_family"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "retina"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ap;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/d;->b()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v4, "identity"

    iget-object v5, v2, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget v3, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-eq v3, v7, :cond_1f6

    .line 101
    iget v2, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-ne v2, v0, :cond_2d9

    .line 102
    :goto_1eb
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v3, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_1f6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    const-string v2, "gdpr_dnt"

    sget-boolean v3, Lcom/chartboost/sdk/i;->x:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v0, "device"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->p:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "framework"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "sdk"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->l:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_234

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "framework_version"

    sget-object v3, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "wrapper_version"

    sget-object v3, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_234
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "mediation"

    sget-object v3, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v2, "commit_hash"

    const-string v3, "ecf99f36d9c9c31bcecd74aa3fd6d75f397249e4"

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ap;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_263

    .line 124
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    const-string v3, "config_variant"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_263
    const-string v0, "sdk"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->n:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ap;->d:Landroid/content/SharedPreferences;

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v3, "session"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_2a9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_2be
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    const-string v1, "location"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_2d1
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->q:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void

    :cond_2d9
    move v0, v1

    .line 101
    goto/16 :goto_1eb
.end method
