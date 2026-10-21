###### Class com.chartboost.sdk.Chartboost (com.chartboost.sdk.Chartboost)
.class public Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBMediation;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .registers 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 324
    const-string v0, "Chartboost.cacheInterstitial"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 326
    if-eqz v6, :cond_13

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 354
    :cond_13
    :goto_13
    return-void

    .line 328
    :cond_14
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 331
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 332
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 341
    :cond_3d
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 343
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v1, :cond_55

    :cond_4d
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_68

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_68

    .line 345
    :cond_55
    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 346
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 348
    :cond_68
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .registers 5
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_c

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_d

    .line 429
    :cond_c
    :goto_c
    return-void

    .line 423
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 426
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 427
    iput-object p0, v1, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    .line 428
    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    sget-wide v2, Lcom/chartboost/sdk/Libraries/b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .registers 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 240
    const-string v0, "Chartboost.cacheRewardedVideo"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 242
    if-eqz v6, :cond_13

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 268
    :cond_13
    :goto_13
    return-void

    .line 244
    :cond_14
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 246
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 247
    const-string v0, "Chartboost"

    const-string v1, "cacheRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 256
    :cond_3d
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 257
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v1, :cond_55

    :cond_4d
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_68

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_68

    .line 259
    :cond_55
    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 260
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 262
    :cond_68
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method public static closeImpression()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    return-void
.end method

.method private static forwardTouchEventsAIR(Z)V
    .registers 4
    .param p0, "forward"    # Z

    .prologue
    .line 733
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 734
    if-nez v0, :cond_7

    .line 740
    :goto_6
    return-void

    .line 737
    :cond_7
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 738
    iput-boolean p0, v1, Lcom/chartboost/sdk/c$c;->c:Z

    .line 739
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static getAutoCacheAds()Z
    .registers 1

    .prologue
    .line 583
    sget-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 525
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 526
    const-string v0, ""

    .line 527
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    goto :goto_8
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .registers 1

    .prologue
    .line 563
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .registers 1

    .prologue
    .line 557
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    .line 558
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 649
    const-string v0, "7.2.0"

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .registers 4
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 311
    const-string v1, "Chartboost.hasInterstitial"

    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_12

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_13

    .line 315
    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, v1, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .registers 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .registers 4
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 228
    const-string v1, "Chartboost.hasRewardedVideo"

    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_12

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_13

    .line 232
    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, v1, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isAnyViewVisible()Z
    .registers 1

    .prologue
    .line 448
    const-string v0, "Chartboost.isAnyViewVisible"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isWebViewEnabled()Z
    .registers 1

    .prologue
    .line 664
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static onBackPressed()Z
    .registers 1

    .prologue
    .line 201
    const-string v0, "Chartboost.onBackPressed"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 203
    if-nez v0, :cond_d

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_c
    return v0

    :cond_d
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->j()Z

    move-result v0

    goto :goto_c
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    const-string v0, "Chartboost.onCreate"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 134
    if-nez v0, :cond_c

    .line 139
    :cond_b
    :goto_b
    return-void

    .line 137
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 138
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 213
    const-string v0, "Chartboost.onDestroy"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 215
    if-nez v0, :cond_c

    .line 220
    :cond_b
    :goto_b
    return-void

    .line 218
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 219
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->j(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 174
    const-string v0, "Chartboost.onPause"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 176
    if-nez v0, :cond_c

    .line 181
    :cond_b
    :goto_b
    return-void

    .line 179
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 180
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->g(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    const-string v0, "Chartboost.onResume"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 162
    if-nez v0, :cond_c

    .line 167
    :cond_b
    :goto_b
    return-void

    .line 165
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 166
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->f(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static onStart(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    const-string v0, "Chartboost.onStart"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 148
    if-nez v0, :cond_c

    .line 153
    :cond_b
    :goto_b
    return-void

    .line 151
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 152
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->d(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static onStop(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    const-string v0, "Chartboost.onStop"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 190
    if-nez v0, :cond_c

    .line 195
    :cond_b
    :goto_b
    return-void

    .line 193
    :cond_c
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_b

    .line 194
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->h(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public static restrictDataCollection(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "restrict"    # Z

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Z)V

    .line 123
    return-void
.end method

.method public static setActivityCallbacks(Z)V
    .registers 4
    .param p0, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 670
    const-string v0, "Chartboost.setActivityCallbacks"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 671
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 672
    if-nez v0, :cond_c

    .line 689
    :cond_b
    :goto_b
    return-void

    .line 675
    :cond_c
    iget-object v1, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v1

    .line 676
    if-eqz v1, :cond_b

    .line 677
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 679
    if-eqz v0, :cond_b

    .line 680
    sget-boolean v2, Lcom/chartboost/sdk/i;->s:Z

    if-nez v2, :cond_2b

    if-eqz p0, :cond_2b

    .line 681
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 682
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    goto :goto_b

    .line 683
    :cond_2b
    sget-boolean v2, Lcom/chartboost/sdk/i;->s:Z

    if-eqz v2, :cond_b

    if-nez p0, :cond_b

    .line 684
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 685
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    goto :goto_b
.end method

.method public static setAutoCacheAds(Z)V
    .registers 4
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 593
    const-string v0, "Chartboost.setAutoCacheAds"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 594
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_19

    .line 596
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 597
    iput-boolean p0, v1, Lcom/chartboost/sdk/h$a;->c:Z

    .line 598
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 600
    :cond_19
    return-void
.end method

.method public static setChartboostWrapperVersion(Ljava/lang/String;)V
    .registers 3
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, "Chartboost.setChartboostWrapperVersion"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 513
    iput-object p0, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 514
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .registers 3
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string v0, "Chartboost.setCustomId"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 538
    iput-object p0, v0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    .line 539
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .registers 3
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 571
    const-string v0, "Chartboost.setDelegate"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    new-instance v0, Lcom/chartboost/sdk/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 573
    iput-object p0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 574
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .registers 4
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v0, "Chartboost.setFramework"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 481
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 482
    iput-object p0, v0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 483
    iput-object p1, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 484
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public static setFrameworkVersion(Ljava/lang/String;)V
    .registers 3
    .param p0, "version"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const-string v0, "Chartboost.setFrameworkVersion"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 499
    iput-object p0, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 500
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .registers 3
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 547
    const-string v0, "Chartboost.setLoggingLevel"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 549
    iput-object p0, v0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 550
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V
    .registers 4
    .param p0, "mediation"    # Lcom/chartboost/sdk/Chartboost$CBMediation;
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string v0, "Chartboost.setMediation"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 464
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 465
    iput-object p0, v0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 466
    iput-object p1, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 468
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .registers 1
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 627
    return-void
.end method

.method public static setShouldHideSystemUI(Ljava/lang/Boolean;)V
    .registers 2
    .param p0, "hide"    # Ljava/lang/Boolean;

    .prologue
    .line 659
    const-string v0, "Chartboost.setHideSystemUI"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    .line 661
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .registers 4
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 635
    const-string v0, "Chartboost.setShouldPrefetchVideoContent"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 636
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_11

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 643
    :cond_11
    :goto_11
    return-void

    .line 640
    :cond_12
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 641
    iput-boolean p0, v1, Lcom/chartboost/sdk/h$a;->d:Z

    .line 642
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .registers 3
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 610
    const-string v0, "Chartboost.setShouldRequestInterstitialsInFirstSession"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 611
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 612
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 613
    iput-boolean p0, v0, Lcom/chartboost/sdk/f;->a:Z

    .line 614
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 616
    :cond_16
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .registers 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 363
    const-string v0, "Chartboost.showInterstitial"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 365
    if-eqz v6, :cond_13

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 392
    :cond_13
    :goto_13
    return-void

    .line 367
    :cond_14
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 370
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 371
    const-string v0, "Chartboost"

    const-string v1, "showInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 380
    :cond_3d
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 381
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v1, :cond_55

    :cond_4d
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_67

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_67

    .line 383
    :cond_55
    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 384
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 386
    :cond_67
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method private static showInterstitialAIR(Ljava/lang/String;Z)V
    .registers 7
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 695
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 696
    if-eqz v1, :cond_c

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 708
    :cond_c
    :goto_c
    return-void

    .line 698
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 701
    iget-object v0, v1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 702
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v2, :cond_2b

    :cond_23
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v2, :cond_3e

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_3e

    .line 704
    :cond_2b
    iget-object v0, v1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v2, v1, v3, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 706
    :cond_3e
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_c
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .registers 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private static showMoreAppsAIR(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 712
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .registers 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 276
    const-string v0, "Chartboost.showRewardedVideo"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 278
    if-eqz v6, :cond_13

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 303
    :cond_13
    :goto_13
    return-void

    .line 280
    :cond_14
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 282
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 283
    const-string v0, "Chartboost"

    const-string v1, "showRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 291
    :cond_3d
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 292
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v1, :cond_55

    :cond_4d
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_67

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_67

    .line 294
    :cond_55
    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 295
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 297
    :cond_67
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, v6, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v3, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method private static showRewardedVideoAIR(Ljava/lang/String;Z)V
    .registers 7
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 717
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_c

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 729
    :cond_c
    :goto_c
    return-void

    .line 720
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 722
    iget-object v0, v1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 723
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v2, :cond_2b

    :cond_23
    iget-boolean v2, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v2, :cond_3e

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_3e

    .line 725
    :cond_2b
    iget-object v0, v1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v2, v1, v3, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 727
    :cond_3e
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_c
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "Chartboost.startWithAppId"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 110
    iput-object p0, v0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    .line 111
    iput-object p1, v0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    .line 112
    iput-object p2, v0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

###### Class com.chartboost.sdk.Chartboost.CBFramework (com.chartboost.sdk.Chartboost$CBFramework)
.class public final enum Lcom/chartboost/sdk/Chartboost$CBFramework;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Chartboost$CBFramework;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static final synthetic b:[Lcom/chartboost/sdk/Chartboost$CBFramework;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkUnity"

    const-string v2, "Unity"

    invoke-direct {v0, v1, v4, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 42
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCorona"

    const-string v2, "Corona"

    invoke-direct {v0, v1, v5, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 43
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkAir"

    const-string v2, "AIR"

    invoke-direct {v0, v1, v6, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 44
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkGameSalad"

    const-string v2, "GameSalad"

    invoke-direct {v0, v1, v7, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 45
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCordova"

    const-string v2, "Cordova"

    invoke-direct {v0, v1, v8, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 46
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCocoonJS"

    const/4 v2, 0x5

    const-string v3, "CocoonJS"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 47
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCocos2dx"

    const/4 v2, 0x6

    const-string v3, "Cocos2dx"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 48
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkPrime31Unreal"

    const/4 v2, 0x7

    const-string v3, "Prime31Unreal"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 49
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkWeeby"

    const/16 v2, 0x8

    const-string v3, "Weeby"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 50
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkOther"

    const/16 v2, 0x9

    const-string v3, "Other"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBFramework;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBFramework;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method


# virtual methods
.method public doesWrapperUseCustomBackgroundingBehavior()Z
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public doesWrapperUseCustomShouldDisplayBehavior()Z
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.chartboost.sdk.Chartboost.CBMediation (com.chartboost.sdk.Chartboost$CBMediation)
.class public final enum Lcom/chartboost/sdk/Chartboost$CBMediation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBMediation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Chartboost$CBMediation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBMediationAdMarvel:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationAdMob:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationAerServ:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationFuse:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationFyber:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationHeyZap:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationHyprMX:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationMoPub:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationOther:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static final enum CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field private static final synthetic b:[Lcom/chartboost/sdk/Chartboost$CBMediation;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationAdMarvel"

    const-string v2, "AdMarvel"

    invoke-direct {v0, v1, v4, v2}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAdMarvel:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 77
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationAdMob"

    const-string v2, "AdMob"

    invoke-direct {v0, v1, v5, v2}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAdMob:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 78
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationFuse"

    const-string v2, "Fuse"

    invoke-direct {v0, v1, v6, v2}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationFuse:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 79
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationFyber"

    const-string v2, "Fyber"

    invoke-direct {v0, v1, v7, v2}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationFyber:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 80
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationHeyZap"

    const-string v2, "HeyZap"

    invoke-direct {v0, v1, v8, v2}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationHeyZap:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 81
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationMoPub"

    const/4 v2, 0x5

    const-string v3, "MoPub"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationMoPub:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 82
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationironSource"

    const/4 v2, 0x6

    const-string v3, "ironSource"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 83
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationHyprMX"

    const/4 v2, 0x7

    const-string v3, "HyprMX"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationHyprMX:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 84
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationAerServ"

    const/16 v2, 0x8

    const-string v3, "AerServ"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAerServ:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 85
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "CBMediationOther"

    const/16 v2, 0x9

    const-string v3, "Other"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBMediation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationOther:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/chartboost/sdk/Chartboost$CBMediation;

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAdMarvel:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAdMob:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationFuse:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationFyber:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationHeyZap:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationMoPub:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationHyprMX:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAerServ:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationOther:Lcom/chartboost/sdk/Chartboost$CBMediation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->b:[Lcom/chartboost/sdk/Chartboost$CBMediation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$CBMediation;->a:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBMediation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Chartboost$CBMediation;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBMediation;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->b:[Lcom/chartboost/sdk/Chartboost$CBMediation;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBMediation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBMediation;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$CBMediation;->a:Ljava/lang/String;

    return-object v0
.end method
