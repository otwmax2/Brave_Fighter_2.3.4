###### Class com.chartboost.sdk.impl.m (com.chartboost.sdk.impl.m)
.class public Lcom/chartboost/sdk/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/l;

.field private final b:Lcom/chartboost/sdk/Libraries/f;

.field private final c:Lcom/chartboost/sdk/impl/ah;

.field private final d:Lcom/chartboost/sdk/impl/ap;

.field private final e:Lcom/chartboost/sdk/Tracking/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:Lcom/chartboost/sdk/impl/aj;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/l;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ap;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->h:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/m;->i:J

    .line 82
    iput-object v2, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 83
    iput-object v2, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m;->a:Lcom/chartboost/sdk/impl/l;

    .line 99
    iput-object p2, p0, Lcom/chartboost/sdk/impl/m;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 100
    iput-object p3, p0, Lcom/chartboost/sdk/impl/m;->c:Lcom/chartboost/sdk/impl/ah;

    .line 101
    iput-object p4, p0, Lcom/chartboost/sdk/impl/m;->d:Lcom/chartboost/sdk/impl/ap;

    .line 102
    iput-object p5, p0, Lcom/chartboost/sdk/impl/m;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 103
    iput-object p6, p0, Lcom/chartboost/sdk/impl/m;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    return-void
.end method

.method private a(Lcom/chartboost/sdk/Model/e;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    iget-boolean v3, p1, Lcom/chartboost/sdk/Model/e;->y:Z

    .line 223
    if-nez v3, :cond_39

    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v0, :cond_39

    move v0, v1

    .line 225
    :goto_c
    iget v4, p0, Lcom/chartboost/sdk/impl/m;->h:I

    if-ne v4, v1, :cond_12

    if-eqz v0, :cond_19

    :cond_12
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->h:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3b

    if-nez v3, :cond_3b

    :cond_19
    move v0, v1

    .line 229
    :goto_1a
    if-eqz v0, :cond_38

    .line 230
    const-string v0, "Prefetcher"

    const-string v3, "Change state to IDLE"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput v1, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 232
    iput v2, p0, Lcom/chartboost/sdk/impl/m;->h:I

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/m;->i:J

    .line 234
    iput-object v5, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 236
    iput-object v5, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    if-eqz v0, :cond_38

    .line 238
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 240
    :cond_38
    return-void

    :cond_39
    move v0, v2

    .line 223
    goto :goto_c

    :cond_3b
    move v0, v2

    .line 225
    goto :goto_1a
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 117
    monitor-enter p0

    :try_start_4
    const-string v2, "Chartboost SDK"

    const-string v3, "Sdk Version = 7.2.0, Commit: ecf99f36d9c9c31bcecd74aa3fd6d75f397249e4"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    move-object v8, v0

    .line 123
    invoke-direct {p0, v8}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/Model/e;)V

    .line 125
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->c:Z

    if-nez v2, :cond_24

    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->b:Z

    if-nez v2, :cond_24

    sget-boolean v2, Lcom/chartboost/sdk/i;->v:Z

    if-nez v2, :cond_29

    .line 128
    :cond_24
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m;->b()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_5c
    .catchall {:try_start_4 .. :try_end_27} :catchall_78

    .line 208
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 136
    :cond_29
    :try_start_29
    iget v2, p0, Lcom/chartboost/sdk/impl/m;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_43

    .line 137
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_27

    .line 140
    const-string v2, "Prefetcher"

    const-string v3, "Change state to COOLDOWN"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x4

    iput v2, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    :cond_43
    iget v2, p0, Lcom/chartboost/sdk/impl/m;->g:I

    if-ne v2, v4, :cond_8c

    .line 146
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/m;->i:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 147
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7b

    .line 148
    const-string v2, "Prefetcher"

    const-string v3, "Prefetch session is still active. Won\'t be making any new prefetch until the prefetch session expires"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5b} :catch_5c
    .catchall {:try_start_29 .. :try_end_5b} :catchall_78

    goto :goto_27

    .line 197
    :catch_5c
    move-exception v2

    .line 201
    :try_start_5d
    iget v3, p0, Lcom/chartboost/sdk/impl/m;->g:I

    if-ne v3, v9, :cond_6e

    .line 202
    const-string v3, "Prefetcher"

    const-string v4, "Change state to COOLDOWN"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x4

    iput v3, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 206
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "prefetch"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_78

    goto :goto_27

    .line 117
    :catchall_78
    move-exception v2

    monitor-exit p0

    throw v2

    .line 151
    :cond_7b
    :try_start_7b
    const-string v2, "Prefetcher"

    const-string v3, "Change state to IDLE"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Lcom/chartboost/sdk/impl/m;->h:I

    .line 154
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/m;->i:J

    .line 157
    :cond_8c
    iget v2, p0, Lcom/chartboost/sdk/impl/m;->g:I

    if-ne v2, v6, :cond_27

    .line 160
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v2, :cond_d8

    .line 161
    new-instance v2, Lcom/chartboost/sdk/impl/am;

    iget-object v3, v8, Lcom/chartboost/sdk/Model/e;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/m;->d:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/m;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v6, 0x2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/am;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 167
    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONObject;

    move-result-object v3

    .line 168
    const-string v4, "cache_assets"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 169
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/impl/am;->l:Z

    .line 171
    const-string v3, "Prefetcher"

    const-string v4, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 173
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/m;->h:I

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v6, v8, Lcom/chartboost/sdk/Model/e;->D:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chartboost/sdk/impl/m;->i:J

    .line 175
    iput-object v2, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 196
    :goto_cf
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m;->c:Lcom/chartboost/sdk/impl/ah;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    goto/16 :goto_27

    .line 176
    :cond_d8
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v2, :cond_117

    .line 178
    new-instance v2, Lcom/chartboost/sdk/impl/aj;

    const-string v3, "/api/video-prefetch"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/m;->d:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/m;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v6, 0x2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 183
    const-string v3, "local-videos"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/m;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->b()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 186
    const-string v3, "Prefetcher"

    const-string v4, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 188
    const/4 v3, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/m;->h:I

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v6, v8, Lcom/chartboost/sdk/Model/e;->i:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chartboost/sdk/impl/m;->i:J

    .line 190
    iput-object v2, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    goto :goto_cf

    .line 192
    :cond_117
    const-string v2, "Prefetcher"

    const-string v3, "Did not prefetch because neither native nor webview are enabled."

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_11e} :catch_5c
    .catchall {:try_start_7b .. :try_end_11e} :catchall_78

    goto/16 :goto_27
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 5

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 317
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 310
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    if-ne p1, v0, :cond_6

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 315
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->g:I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_6

    .line 306
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v3, 0x2

    .line 270
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->g:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_4d
    .catchall {:try_start_2 .. :try_end_4} :catchall_58

    if-eq v0, v3, :cond_8

    .line 300
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 274
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    if-ne p1, v0, :cond_6

    .line 278
    const-string v0, "Prefetcher"

    const-string v1, "Change state to DOWNLOAD_ASSETS"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 283
    if-eqz p2, :cond_6

    .line 284
    const-string v0, "Prefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Asset list for Prefetch from server :)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    .line 286
    invoke-static {p2}, Lcom/chartboost/sdk/Model/b;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->a:Lcom/chartboost/sdk/impl/l;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/chartboost/sdk/impl/l;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/h;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4c} :catch_4d
    .catchall {:try_start_8 .. :try_end_4c} :catchall_58

    goto :goto_6

    .line 294
    :catch_4d
    move-exception v0

    .line 298
    :try_start_4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_58

    goto :goto_6

    .line 270
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :cond_5b
    :try_start_5b
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->h:I

    if-ne v0, v3, :cond_6

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget v0, v0, Lcom/chartboost/sdk/Model/e;->v:I

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Model/b;->a(Lorg/json/JSONObject;I)Ljava/util/Map;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->a:Lcom/chartboost/sdk/impl/l;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/chartboost/sdk/impl/l;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/h;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_76} :catch_4d
    .catchall {:try_start_5b .. :try_end_76} :catchall_58

    goto :goto_6
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 249
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m;->j:Lcom/chartboost/sdk/impl/aj;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_31

    .line 260
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 252
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 253
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/m;->g:I

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 257
    if-eqz v0, :cond_13

    .line 258
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/l;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_31

    goto :goto_13

    .line 248
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method
