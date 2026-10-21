###### Class com.facebook.ads.internal.h.d (com.facebook.ads.internal.h.d)
.class public Lcom/facebook/ads/internal/h/d;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# instance fields
.field public a:I

.field public b:I

.field private final e:J

.field private f:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/d;->c:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sput-object v0, Lcom/facebook/ads/internal/h/d;->d:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/facebook/ads/internal/h/d;->a:I

    iput v3, p0, Lcom/facebook/ads/internal/h/d;->b:I

    sget-object v0, Lcom/facebook/ads/internal/h/d;->d:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->f:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput v4, p0, Lcom/facebook/ads/internal/h/d;->g:I

    iput v2, p0, Lcom/facebook/ads/internal/h/d;->h:I

    iput v2, p0, Lcom/facebook/ads/internal/h/d;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->j:I

    iput v2, p0, Lcom/facebook/ads/internal/h/d;->k:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->l:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->m:I

    iput-boolean v2, p0, Lcom/facebook/ads/internal/h/d;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->o:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/d;->e:J

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1fc

    :cond_4e
    move v1, v3

    :goto_4f
    packed-switch v1, :pswitch_data_22e

    goto :goto_35

    :pswitch_53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->f:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_35

    :sswitch_60
    const-string v6, "type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v2

    goto :goto_4f

    :sswitch_6a
    const-string v6, "min_viewability_percentage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v4

    goto :goto_4f

    :sswitch_74
    const-string v6, "viewability_check_ticker"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x2

    goto :goto_4f

    :sswitch_7e
    const-string v6, "refresh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x3

    goto :goto_4f

    :sswitch_88
    const-string v6, "refresh_threshold"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x4

    goto :goto_4f

    :sswitch_92
    const-string v6, "cacheable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x5

    goto :goto_4f

    :sswitch_9c
    const-string v6, "placement_width"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x6

    goto :goto_4f

    :sswitch_a6
    const-string v6, "placement_height"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x7

    goto :goto_4f

    :sswitch_b0
    const-string v6, "viewability_check_initial_delay"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v1, 0x8

    goto :goto_4f

    :sswitch_bb
    const-string v6, "viewability_check_interval"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v1, 0x9

    goto :goto_4f

    :sswitch_c6
    const-string v6, "request_timeout"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v1, 0xa

    goto/16 :goto_4f

    :sswitch_d2
    const-string v6, "conv_tracking_data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v1, 0xb

    goto/16 :goto_4f

    :pswitch_de
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->g:I

    goto/16 :goto_35

    :pswitch_ec
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->h:I

    goto/16 :goto_35

    :pswitch_fa
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->i:I

    goto/16 :goto_35

    :pswitch_108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->j:I

    goto/16 :goto_35

    :pswitch_116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/d;->n:Z

    goto/16 :goto_35

    :pswitch_128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->a:I

    goto/16 :goto_35

    :pswitch_136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->b:I

    goto/16 :goto_35

    :pswitch_144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->k:I

    goto/16 :goto_35

    :pswitch_152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->l:I

    goto/16 :goto_35

    :pswitch_160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/d;->m:I

    goto/16 :goto_35

    :pswitch_16e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->o:Ljava/util/List;

    :try_start_17a
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v6

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18c
    :goto_18c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/h/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/b;->b()Z

    move-result v8

    if-eqz v8, :cond_18c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/facebook/ads/internal/h/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/facebook/ads/internal/h/b;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Domain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/facebook/ads/internal/h/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Expires="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";path=/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/facebook/ads/internal/h/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1de} :catch_1df

    goto :goto_18c

    :catch_1df
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/h/d;->c:Ljava/lang/String;

    const-string v6, "Failed to set cookie."

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    :cond_1e9
    :try_start_1e9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v0, v7, :cond_1f6

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_1f6
    invoke-virtual {v1, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1f9} :catch_1df

    goto/16 :goto_35

    :cond_1fb
    return-void

    :sswitch_data_1fc
    .sparse-switch
        -0x71370599 -> :sswitch_d2
        -0x5d1423f9 -> :sswitch_88
        -0x3311a54a -> :sswitch_bb
        -0x2b4a184f -> :sswitch_c6
        -0x20f94c24 -> :sswitch_92
        0x368f3a -> :sswitch_60
        0x29c58cc1 -> :sswitch_6a
        0x332da93b -> :sswitch_74
        0x40b292db -> :sswitch_7e
        0x468b8977 -> :sswitch_b0
        0x599f5fc1 -> :sswitch_a6
        0x775623ec -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_53
        :pswitch_de
        :pswitch_ec
        :pswitch_fa
        :pswitch_108
        :pswitch_116
        :pswitch_128
        :pswitch_136
        :pswitch_144
        :pswitch_152
        :pswitch_160
        :pswitch_16e
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/h/d;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    new-instance v0, Lcom/facebook/ads/internal/h/d;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/h/d;-><init>(Ljava/util/Map;)V

    goto :goto_3
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/d;->e:J

    return-wide v0
.end method

.method public b()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->f:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public c()J
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/d;->n:Z

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->g:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->h:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->k:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->l:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/h/d;->m:I

    return v0
.end method
