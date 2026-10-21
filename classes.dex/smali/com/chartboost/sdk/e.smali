###### Class com.chartboost.sdk.e (com.chartboost.sdk.e)
.class public abstract Lcom/chartboost/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/chartboost/sdk/c;

.field public c:Z

.field protected d:Lorg/json/JSONObject;

.field public final e:Lcom/chartboost/sdk/Model/c;

.field protected f:I

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Z

.field private j:Z

.field private k:Lcom/chartboost/sdk/e$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/chartboost/sdk/e;->c:Z

    .line 201
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    .line 203
    iput-boolean v2, p0, Lcom/chartboost/sdk/e;->h:Z

    iput-boolean v2, p0, Lcom/chartboost/sdk/e;->i:Z

    .line 206
    iput-object p2, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    .line 207
    iput-object p3, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/c;

    .line 208
    iput-object p1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 210
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/e;->f:I

    .line 211
    iput-boolean v1, p0, Lcom/chartboost/sdk/e;->j:Z

    .line 212
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 381
    if-eqz p0, :cond_f

    .line 382
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 384
    :try_start_b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_10

    move-result v1

    .line 407
    :cond_f
    :goto_f
    return v1

    .line 386
    :catch_10
    move-exception v0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_66

    .line 393
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 394
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 395
    :goto_45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_62

    .line 396
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 399
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    :cond_66
    :try_start_66
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_69} :catch_6b

    move-result v1

    goto :goto_f

    .line 403
    :catch_6b
    move-exception v0

    .line 404
    const-string v2, "CBViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/chartboost/sdk/e;->f:I

    return v0
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    .line 370
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 371
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 372
    if-eqz v0, :cond_12

    .line 373
    iget-object v2, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    return-void

    .line 375
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 302
    return-void
.end method

.method public a(ZLandroid/view/View;)V
    .registers 4

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/e;->a(ZLandroid/view/View;Z)V

    .line 327
    return-void
.end method

.method public a(ZLandroid/view/View;Z)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v0, 0x8

    .line 331
    if-eqz p1, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_14

    :cond_c
    if-nez p1, :cond_22

    .line 332
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_22

    .line 333
    :cond_14
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 334
    :try_start_17
    iget-object v2, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 335
    monitor-exit v1

    .line 362
    :goto_20
    return-void

    .line 336
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2e

    .line 339
    :cond_22
    if-nez p3, :cond_31

    .line 340
    if-eqz p1, :cond_27

    const/4 v0, 0x0

    :cond_27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_20

    .line 336
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 344
    :cond_31
    new-instance v0, Lcom/chartboost/sdk/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/e$1;-><init>(Lcom/chartboost/sdk/e;ZLandroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 359
    :cond_3f
    iget-object v1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    iget-object v1, v1, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/chartboost/sdk/impl/av;->a(ZLandroid/view/View;J)V

    .line 361
    invoke-virtual {p0, p2, v0, v4, v5}, Lcom/chartboost/sdk/e;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_20
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "assets"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    .line 221
    iget-object v2, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    if-nez v2, :cond_26

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    .line 223
    const-string v1, "CBViewProtocol"

    const-string v2, "Media got from the response is null or empty"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 227
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
.end method

.method public b()V
    .registers 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->i()V

    .line 234
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v1

    .line 242
    if-nez v1, :cond_e

    .line 243
    iput-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 245
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 262
    :cond_d
    :goto_d
    return-object v0

    .line 248
    :cond_e
    iget-boolean v2, p0, Lcom/chartboost/sdk/e;->i:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/chartboost/sdk/e;->h:Z

    if-nez v2, :cond_19

    .line 249
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_d

    .line 252
    :cond_19
    iget-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    if-nez v2, :cond_23

    .line 253
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/e;->b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 254
    :cond_23
    iget-object v2, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v2, :cond_d

    .line 255
    iget-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/e$a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 258
    iput-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 259
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_d
.end method

.method public d()V
    .registers 5

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->f()V

    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 274
    :try_start_6
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 275
    iget-object v3, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 278
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v0

    .line 277
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 278
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 279
    return-void
.end method

.method public e()Lcom/chartboost/sdk/e$a;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->b()V

    .line 291
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 292
    return-void
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/chartboost/sdk/e;->j:Z

    if-eqz v0, :cond_5

    .line 311
    :goto_4
    return-void

    .line 309
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->j:Z

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->c()V

    goto :goto_4
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->d()V

    .line 316
    return-void
.end method

.method public j()F
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public k()F
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 427
    iget-boolean v0, p0, Lcom/chartboost/sdk/e;->c:Z

    if-eqz v0, :cond_7

    .line 428
    iput-boolean v3, p0, Lcom/chartboost/sdk/e;->c:Z

    .line 429
    :cond_7
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v1

    iget-object v2, v0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_20

    .line 431
    :cond_1d
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/e$a;->a(Z)V

    .line 432
    :cond_20
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->c:Z

    .line 437
    return-void
.end method

###### Class com.chartboost.sdk.e.AnonymousClass1 (com.chartboost.sdk.e$1)
.class Lcom/chartboost/sdk/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e;->a(ZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/chartboost/sdk/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e;ZLandroid/view/View;)V
    .registers 4

    .prologue
    .line 344
    iput-object p1, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iput-boolean p2, p0, Lcom/chartboost/sdk/e$1;->a:Z

    iput-object p3, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/chartboost/sdk/e$1;->a:Z

    if-nez v0, :cond_11

    .line 347
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 350
    :cond_11
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iget-object v1, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 351
    :try_start_16
    iget-object v0, p0, Lcom/chartboost/sdk/e$1;->c:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/e$1;->b:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

###### Class com.chartboost.sdk.e.a (com.chartboost.sdk.e$a)
.class public abstract Lcom/chartboost/sdk/e$a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field final synthetic b:Lcom/chartboost/sdk/e;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 45
    iput-object p1, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    .line 46
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/e$a;->c:Z

    .line 41
    iput v1, p0, Lcom/chartboost/sdk/e$a;->d:I

    iput v1, p0, Lcom/chartboost/sdk/e$a;->e:I

    .line 42
    iput v1, p0, Lcom/chartboost/sdk/e$a;->f:I

    iput v1, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->setFocusableInTouchMode(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->requestFocus()Z

    .line 50
    return-void
.end method

.method private b(II)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    iget-object v2, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v2, v2, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v2, v2, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v2, v0, :cond_13

    .line 97
    :cond_12
    :goto_12
    return v0

    .line 67
    :cond_13
    iget-boolean v2, p0, Lcom/chartboost/sdk/e$a;->c:Z

    if-eqz v2, :cond_19

    move v0, v1

    .line 68
    goto :goto_12

    .line 70
    :cond_19
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    .line 71
    iget v3, p0, Lcom/chartboost/sdk/e$a;->d:I

    if-ne v3, p1, :cond_31

    iget v3, p0, Lcom/chartboost/sdk/e$a;->e:I

    if-ne v3, p2, :cond_31

    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_12

    .line 74
    :cond_31
    iput-boolean v0, p0, Lcom/chartboost/sdk/e$a;->c:Z

    .line 77
    :try_start_33
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-boolean v3, v3, Lcom/chartboost/sdk/e;->h:Z

    if-eqz v3, :cond_5b

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 78
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iput v2, v3, Lcom/chartboost/sdk/e;->f:I

    .line 81
    :cond_43
    :goto_43
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/e$a;->a(II)V

    .line 82
    new-instance v3, Lcom/chartboost/sdk/e$a$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/e$a$1;-><init>(Lcom/chartboost/sdk/e$a;)V

    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/e$a;->post(Ljava/lang/Runnable;)Z

    .line 88
    iput p1, p0, Lcom/chartboost/sdk/e$a;->d:I

    .line 89
    iput p2, p0, Lcom/chartboost/sdk/e$a;->e:I

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_6c

    .line 96
    :goto_58
    iput-boolean v1, p0, Lcom/chartboost/sdk/e$a;->c:Z

    goto :goto_12

    .line 79
    :cond_5b
    :try_start_5b
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-boolean v3, v3, Lcom/chartboost/sdk/e;->i:Z

    if-eqz v3, :cond_43

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 80
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iput v2, v3, Lcom/chartboost/sdk/e;->f:I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6b} :catch_6c

    goto :goto_43

    .line 92
    :catch_6c
    move-exception v0

    .line 93
    const-string v2, "CBViewProtocol"

    const-string v3, "Exception raised while layouting Subviews"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "tryLayout"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_58
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->a(Z)V

    .line 105
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 167
    const/16 v0, 0xc8

    .line 168
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 169
    const/16 v0, 0xc9

    .line 170
    :cond_a
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    .line 171
    :goto_11
    if-eqz v0, :cond_1a

    .line 172
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/e$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 174
    :cond_1a
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 176
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 109
    if-eqz p1, :cond_5

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->a(Landroid/app/Activity;)Z

    .line 112
    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 124
    iget v0, p0, Lcom/chartboost/sdk/e$a;->f:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/chartboost/sdk/e$a;->g:I

    if-ne v0, v1, :cond_4e

    .line 127
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getWidth()I

    move-result v1

    .line 128
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getHeight()I

    move-result v0

    .line 129
    if-eqz v1, :cond_15

    if-nez v0, :cond_32

    .line 130
    :cond_15
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    if-nez v0, :cond_2a

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 133
    :cond_2a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_57

    move-result v0

    .line 139
    :cond_32
    :goto_32
    if-eqz v1, :cond_36

    if-nez v0, :cond_4a

    .line 140
    :cond_36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    :cond_4a
    iput v1, p0, Lcom/chartboost/sdk/e$a;->f:I

    .line 147
    iput v0, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 150
    :cond_4e
    iget v0, p0, Lcom/chartboost/sdk/e$a;->f:I

    iget v1, p0, Lcom/chartboost/sdk/e$a;->g:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/e$a;->b(II)Z

    move-result v0

    return v0

    .line 136
    :catch_57
    move-exception v0

    .line 137
    const/4 v0, 0x0

    move v1, v0

    goto :goto_32
.end method

.method public b()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v1, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 157
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 158
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v3, v3, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 161
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v0

    .line 160
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 161
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    .line 162
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 55
    iput p1, p0, Lcom/chartboost/sdk/e$a;->f:I

    .line 56
    iput p2, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 58
    iget v0, p0, Lcom/chartboost/sdk/e$a;->d:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Lcom/chartboost/sdk/e$a;->e:I

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_23

    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->a()V

    .line 61
    :cond_23
    return-void
.end method

###### Class com.chartboost.sdk.e.a.AnonymousClass1 (com.chartboost.sdk.e$a$1)
.class Lcom/chartboost/sdk/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e$a;->b(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/e$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e$a;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/e$a$1;->a:Lcom/chartboost/sdk/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/e$a$1;->a:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->requestLayout()V

    .line 85
    return-void
.end method
