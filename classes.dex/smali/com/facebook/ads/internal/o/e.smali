###### Class com.facebook.ads.internal.o.e (com.facebook.ads.internal.o.e)
.class public Lcom/facebook/ads/internal/o/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/o/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/ads/internal/o/e;

    invoke-direct {v0}, Lcom/facebook/ads/internal/o/e;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/o/e;->a:Lcom/facebook/ads/internal/o/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/ads/internal/o/e;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/o/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/facebook/ads/internal/o/e;->a:Lcom/facebook/ads/internal/o/e;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/g;
    .registers 9

    const/4 v0, 0x0

    const-string v1, "placements"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "definition"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/h/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/h/d;

    move-result-object v2

    const-string v3, "feature_config"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/ads/internal/h/c;

    invoke-direct {v4, v2, v3}, Lcom/facebook/ads/internal/h/c;-><init>(Lcom/facebook/ads/internal/h/d;Ljava/lang/String;)V

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_2e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_55

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "trackers"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v6, Lcom/facebook/ads/internal/h/a;

    invoke-direct {v6, v3, v5, v2}, Lcom/facebook/ads/internal/h/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v4, v6}, Lcom/facebook/ads/internal/h/c;->a(Lcom/facebook/ads/internal/h/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_55
    const-string v0, "server_request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "an_validation_uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/ads/internal/o/g;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/facebook/ads/internal/o/g;-><init>(Lcom/facebook/ads/internal/h/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/h;
    .registers 8

    :try_start_0
    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "definition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/h/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/h/d;

    move-result-object v1

    const-string v2, "feature_config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/internal/o/h;

    const-string v3, "message"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "code"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lcom/facebook/ads/internal/h/c;

    invoke-direct {v5, v1, v2}, Lcom/facebook/ads/internal/h/c;-><init>(Lcom/facebook/ads/internal/h/d;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/ads/internal/o/h;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/h/c;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/o/e;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/h;

    move-result-object v0

    goto :goto_34
.end method

.method private c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/h;
    .registers 6

    new-instance v0, Lcom/facebook/ads/internal/o/h;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/o/h;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/h/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/o/f;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_50

    :cond_19
    :goto_19
    packed-switch v0, :pswitch_data_5a

    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/o/e;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/h;

    move-result-object v0

    :goto_28
    return-object v0

    :sswitch_29
    const-string v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :sswitch_33
    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :pswitch_3d
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/o/e;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/g;

    move-result-object v0

    goto :goto_28

    :pswitch_42
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/o/e;->b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/o/h;

    move-result-object v0

    goto :goto_28

    :cond_47
    new-instance v0, Lcom/facebook/ads/internal/o/f;

    sget-object v1, Lcom/facebook/ads/internal/o/f$a;->a:Lcom/facebook/ads/internal/o/f$a;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/o/f;-><init>(Lcom/facebook/ads/internal/o/f$a;)V

    goto :goto_28

    nop

    :sswitch_data_50
    .sparse-switch
        0x178b0 -> :sswitch_29
        0x5c4d208 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_42
    .end packed-switch
.end method
