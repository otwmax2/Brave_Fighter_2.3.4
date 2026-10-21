###### Class com.chartboost.sdk.InPlay.CBInPlay (com.chartboost.sdk.InPlay.CBInPlay)
.class public final Lcom/chartboost/sdk/InPlay/CBInPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/e;

.field public final appName:Ljava/lang/String;

.field private final b:Lcom/chartboost/sdk/impl/ah;

.field private final c:Lcom/chartboost/sdk/impl/ap;

.field private final d:Lcom/chartboost/sdk/Tracking/a;

.field private final e:Lcom/chartboost/sdk/impl/ak;

.field private final f:Lcom/chartboost/sdk/Model/a;

.field private g:Landroid/graphics/Bitmap;

.field public final largeAppIconFile:Ljava/io/File;

.field public final largeAppIconUrl:Ljava/lang/String;

.field public final location:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 11
    .param p1, "adUnitManager"    # Lcom/chartboost/sdk/impl/e;
    .param p2, "networkService"    # Lcom/chartboost/sdk/impl/ah;
    .param p3, "requestBodyFields"    # Lcom/chartboost/sdk/impl/ap;
    .param p4, "track"    # Lcom/chartboost/sdk/Tracking/a;
    .param p5, "urlOpener"    # Lcom/chartboost/sdk/impl/ak;
    .param p6, "adUnit"    # Lcom/chartboost/sdk/Model/a;
    .param p7, "largeAppIconUrl"    # Ljava/lang/String;
    .param p8, "largeAppIconFile"    # Ljava/io/File;
    .param p9, "location"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/impl/e;

    .line 70
    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Lcom/chartboost/sdk/impl/ah;

    .line 71
    iput-object p3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/impl/ap;

    .line 72
    iput-object p4, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    .line 73
    iput-object p5, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/impl/ak;

    .line 75
    iput-object p6, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    .line 76
    iget-object v0, p6, Lcom/chartboost/sdk/Model/a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->appName:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconUrl:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    .line 80
    iput-object p9, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static cacheInPlay(Ljava/lang/String;)V
    .registers 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 170
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v6

    .line 171
    if-eqz v6, :cond_e

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 195
    :cond_e
    :goto_e
    return-void

    .line 174
    :cond_f
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 175
    const-string v0, "CBInPlay"

    const-string v1, "cacheInPlay location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 184
    :cond_32
    iget-object v0, v6, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 185
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_42

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->z:Z

    if-nez v1, :cond_4a

    :cond_42
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_5d

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->f:Z

    if-eqz v0, :cond_5d

    .line 186
    :cond_4a
    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v6, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 187
    iget-object v1, v6, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 189
    :cond_5d
    iget-object v0, v6, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v6, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v5, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method public static getInPlay(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .registers 15
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    const/4 v11, 0x0

    .line 226
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v12

    .line 227
    if-eqz v12, :cond_e

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 283
    :cond_e
    :goto_e
    return-object v11

    .line 230
    :cond_f
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 231
    const-string v0, "CBInPlay"

    const-string v1, "Inplay location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, v12, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v12, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v13, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 241
    :cond_32
    iget-object v0, v12, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 242
    sget-object v10, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 243
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_44

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->z:Z

    if-nez v1, :cond_4c

    :cond_44
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_a5

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->f:Z

    if-eqz v0, :cond_a5

    .line 244
    :cond_4c
    iget-object v0, v12, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v6

    .line 245
    if-eqz v6, :cond_d0

    .line 246
    iget-object v0, v6, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    const-string v1, "lg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/chartboost/sdk/Model/b;

    .line 247
    if-eqz v7, :cond_cd

    .line 249
    iget-object v0, v12, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 250
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 252
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 253
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-object v6, v0

    move-object v7, v11

    .line 268
    :goto_79
    iget-object v8, v12, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v12, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    move-object v3, p0

    move-object v4, v11

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v10, v6

    move-object v6, v7

    .line 270
    :goto_8f
    if-nez v6, :cond_a4

    .line 271
    iget-object v7, v12, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, v12, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v4, v11

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a4
    move-object v11, v6

    .line 275
    :cond_a5
    if-nez v11, :cond_e

    .line 276
    iget-object v0, v12, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, v12, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v13, p0, v10}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_e

    .line 255
    :cond_b8
    new-instance v0, Lcom/chartboost/sdk/InPlay/CBInPlay;

    iget-object v1, v12, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    iget-object v2, v12, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    iget-object v3, v12, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v4, v12, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    iget-object v5, v12, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ak;

    iget-object v7, v7, Lcom/chartboost/sdk/Model/b;->c:Ljava/lang/String;

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/chartboost/sdk/InPlay/CBInPlay;-><init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v10

    move-object v7, v0

    goto :goto_79

    :cond_cd
    move-object v6, v10

    move-object v7, v11

    goto :goto_79

    :cond_d0
    move-object v6, v11

    goto :goto_8f
.end method

.method public static hasInPlay(Ljava/lang/String;)Z
    .registers 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_d

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_e

    .line 217
    :cond_d
    :goto_d
    return v0

    .line 207
    :cond_e
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 208
    const-string v2, "CBInPlay"

    const-string v3, "hasInPlay location cannot be empty"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, v1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v1, v4, p0, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .line 217
    :cond_32
    iget-object v1, v1, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public click()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v7, v1, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 102
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 103
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1, v7}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 107
    :goto_17
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/click"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 112
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v1, "to"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v1, "creative"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v1, "type"

    const-string v2, "native"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    if-eqz v7, :cond_63

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    .line 120
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1, v5, v7, v0}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V

    .line 124
    :goto_62
    return-void

    .line 122
    :cond_63
    iget-object v4, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/impl/ak;

    const/4 v6, 0x0

    sget-object v8, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_62

    :cond_6d
    move-object v7, v0

    goto :goto_17
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8b

    .line 138
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 139
    if-eqz v0, :cond_16

    .line 140
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Landroid/graphics/Bitmap;

    .line 142
    :cond_16
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8b

    .line 143
    const-string v0, "CBInPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decoding inplay bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 145
    const-string v0, "CBInPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete corrupt inplay bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5e
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "decodeByteArrayToBitmap returned null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_66} :catch_66

    .line 149
    :catch_66
    move-exception v0

    .line 150
    const-string v1, "CBInPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory decoding inplay bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->largeAppIconFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :cond_8b
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .registers 7

    .prologue
    .line 84
    new-instance v5, Lcom/chartboost/sdk/impl/g;

    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/e;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/inplay/show"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 91
    const/4 v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/aj;->j:I

    .line 93
    const-string v1, "inplay-dictionary"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 96
    return-void
.end method
