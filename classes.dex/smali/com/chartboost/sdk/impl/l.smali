###### Class com.chartboost.sdk.impl.l (com.chartboost.sdk.impl.l)
.class public Lcom/chartboost/sdk/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/chartboost/sdk/impl/ah;

.field private final d:Lcom/chartboost/sdk/impl/ai;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/chartboost/sdk/Libraries/i;

.field private final g:Lcom/chartboost/sdk/Tracking/a;

.field private final h:Lcom/chartboost/sdk/Libraries/f;

.field private i:Lcom/chartboost/sdk/impl/k;

.field private final j:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/chartboost/sdk/impl/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 115
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p2, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    .line 117
    iput-object p3, p0, Lcom/chartboost/sdk/impl/l;->c:Lcom/chartboost/sdk/impl/ah;

    .line 118
    iput-object p4, p0, Lcom/chartboost/sdk/impl/l;->d:Lcom/chartboost/sdk/impl/ai;

    .line 119
    iput-object p5, p0, Lcom/chartboost/sdk/impl/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 120
    iput-object p6, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    .line 121
    iput-object p7, p0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    .line 123
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    .line 124
    return-void
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 359
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    if-eqz v0, :cond_2e

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/j;

    .line 361
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    iget v1, v1, Lcom/chartboost/sdk/impl/j;->a:I

    iget v0, v0, Lcom/chartboost/sdk/impl/j;->a:I

    if-le v1, v0, :cond_2e

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 371
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_bb

    .line 373
    iget-object v1, v0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_2e

    .line 377
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/j;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_88

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_88

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_88

    .line 381
    const-string v2, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_2e

    .line 386
    :cond_88
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 388
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/f;->d(Ljava/io/File;)V

    .line 389
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_2e

    .line 393
    :cond_a0
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->d:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/j;Ljava/io/File;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 394
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->c:Lcom/chartboost/sdk/impl/ah;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 395
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 398
    :cond_bb
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    if-eqz v0, :cond_cd

    .line 399
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    if-eq v0, v6, :cond_cc

    .line 400
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput v6, p0, Lcom/chartboost/sdk/impl/l;->a:I

    .line 407
    :cond_cc
    :goto_cc
    return-void

    .line 403
    :cond_cd
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    if-eq v0, v5, :cond_cc

    .line 404
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iput v5, p0, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_cc
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    packed-switch v0, :pswitch_data_40

    .line 236
    :goto_6
    :pswitch_6
    monitor-exit p0

    return-void

    .line 214
    :pswitch_8
    :try_start_8
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_6

    .line 212
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :pswitch_16
    :try_start_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 222
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSED"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_6

    .line 225
    :cond_35
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_13

    goto :goto_6

    .line 212
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_8
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/h;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/b;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/chartboost/sdk/impl/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v10

    .line 141
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 142
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    move-object v4, v0

    .line 144
    new-instance v2, Lcom/chartboost/sdk/impl/j;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    iget-object v5, v4, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/chartboost/sdk/Model/b;->c:Ljava/lang/String;

    iget-object v7, v4, Lcom/chartboost/sdk/Model/b;->a:Ljava/lang/String;

    move v4, p1

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v12}, Lcom/chartboost/sdk/impl/j;-><init>(Lcom/chartboost/sdk/Libraries/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;)V

    .line 152
    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    goto :goto_1b

    .line 140
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 154
    :cond_42
    :try_start_42
    iget v2, p0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4c

    iget v2, p0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    .line 155
    :cond_4c
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_3f

    .line 157
    :cond_4f
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/ag;)V
    .registers 24

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_82

    packed-switch v2, :pswitch_data_f6

    .line 335
    :cond_8
    :goto_8
    :pswitch_8
    monitor-exit p0

    return-void

    .line 286
    :pswitch_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 289
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 293
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/chartboost/sdk/impl/k;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 295
    iget-object v2, v10, Lcom/chartboost/sdk/impl/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    if-nez p2, :cond_85

    const/4 v2, 0x1

    :goto_32
    invoke-virtual {v10, v3, v2}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    .line 299
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/chartboost/sdk/impl/k;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 300
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/chartboost/sdk/impl/k;->i:J

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 302
    if-nez p2, :cond_87

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v3, v10, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;JJJ)V

    .line 309
    const-string v2, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_6e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f0

    .line 325
    const-string v2, "Downloader"

    const-string v3, "Change state to PAUSED"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_81
    .catchall {:try_start_a .. :try_end_81} :catchall_82

    goto :goto_8

    .line 280
    :catchall_82
    move-exception v2

    monitor-exit p0

    throw v2

    .line 297
    :cond_85
    const/4 v2, 0x0

    goto :goto_32

    .line 311
    :cond_87
    :try_start_87
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v13

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v12, v10, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-virtual/range {v11 .. v19}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 319
    const-string v3, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_ea

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Status code="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget v5, v0, Lcom/chartboost/sdk/impl/ag;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v13, :cond_ed

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error message="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_de
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :cond_ea
    const-string v2, ""

    goto :goto_c5

    :cond_ed
    const-string v2, ""

    goto :goto_de

    .line 328
    :cond_f0
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_f3
    .catchall {:try_start_87 .. :try_end_f3} :catchall_82

    goto/16 :goto_8

    .line 280
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    .prologue
    .line 167
    monitor-enter p0

    const/16 v0, -0x2710

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 169
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    packed-switch v0, :pswitch_data_2c

    .line 199
    :cond_b
    :goto_b
    :pswitch_b
    monitor-exit p0

    return-void

    .line 177
    :pswitch_d
    :try_start_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p1, :cond_2a

    const/4 v0, 0x1

    .line 179
    :goto_16
    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 182
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_27

    goto :goto_b

    .line 167
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_2a
    const/4 v0, 0x0

    goto :goto_16

    .line 169
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    packed-switch v0, :pswitch_data_24

    .line 265
    :goto_6
    :pswitch_6
    monitor-exit p0

    return-void

    .line 255
    :pswitch_8
    :try_start_8
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_6

    .line 247
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :pswitch_16
    :try_start_16
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    .line 262
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_13

    goto :goto_6

    .line 247
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_16
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .registers 25

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_73

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    .line 489
    :goto_8
    monitor-exit p0

    return-void

    .line 419
    :cond_a
    :try_start_a
    const-string v2, "Downloader"

    const-string v3, "########### Trimming the disk cache"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v2

    iget-object v3, v2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 423
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 425
    if-eqz v5, :cond_76

    array-length v2, v5

    if-lez v2, :cond_76

    .line 426
    array-length v6, v5

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v6, :cond_76

    aget-object v7, v5, v2

    .line 427
    const-string v8, "requests"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "track"

    .line 428
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "session"

    .line 429
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "videoCompletionEvents"

    .line 430
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "."

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 426
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 435
    :cond_5a
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v8, v7}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_68
    .catchall {:try_start_a .. :try_end_67} :catchall_73

    goto :goto_57

    .line 486
    :catch_68
    move-exception v2

    .line 487
    :try_start_69
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "reduceCacheSize"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_8

    .line 414
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 439
    :cond_76
    :try_start_76
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Ljava/io/File;

    .line 440
    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 443
    array-length v2, v8

    const/4 v3, 0x1

    if-le v2, v3, :cond_8d

    .line 444
    new-instance v2, Lcom/chartboost/sdk/impl/l$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/l$1;-><init>(Lcom/chartboost/sdk/impl/l;)V

    invoke-static {v8, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 450
    :cond_8d
    array-length v2, v8

    if-lez v2, :cond_1bb

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    .line 453
    iget v3, v2, Lcom/chartboost/sdk/Model/e;->u:I

    int-to-long v10, v3

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v4

    iget-object v4, v4, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)J

    move-result-wide v4

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v12

    .line 456
    iget-object v9, v2, Lcom/chartboost/sdk/Model/e;->d:Ljava/util/List;

    .line 457
    const-string v3, "Downloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total local file count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "Downloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Video Folder Size in bytes :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "Downloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max Bytes allowed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    array-length v14, v8

    const/4 v3, 0x0

    move v7, v3

    :goto_105
    if-ge v7, v14, :cond_1bb

    aget-object v15, v8, v7

    .line 461
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sub-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v16

    .line 462
    iget v3, v2, Lcom/chartboost/sdk/Model/e;->w:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    cmp-long v3, v16, v18

    if-ltz v3, :cond_1b3

    const/4 v3, 0x1

    move v6, v3

    .line 463
    :goto_122
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v16, ".tmp"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    .line 464
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    .line 465
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v18, "/videos"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 466
    cmp-long v3, v4, v10

    if-lez v3, :cond_1b7

    if-eqz v18, :cond_1b7

    const/4 v3, 0x1

    .line 468
    :goto_145
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_15f

    if-nez v16, :cond_15f

    if-nez v6, :cond_15f

    .line 471
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15f

    if-eqz v3, :cond_1b9

    :cond_15f
    const/4 v3, 0x1

    .line 473
    :goto_160
    if-eqz v3, :cond_1ae

    .line 474
    if-eqz v18, :cond_16a

    .line 475
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    sub-long v4, v4, v16

    .line 476
    :cond_16a
    const-string v3, "Downloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Deleting file at path:"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1ae

    .line 478
    const-string v3, "Downloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to delete "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1ae
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_105

    .line 462
    :cond_1b3
    const/4 v3, 0x0

    move v6, v3

    goto/16 :goto_122

    .line 466
    :cond_1b7
    const/4 v3, 0x0

    goto :goto_145

    .line 471
    :cond_1b9
    const/4 v3, 0x0

    goto :goto_160

    .line 484
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Lorg/json/JSONObject;)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_1ca} :catch_68
    .catchall {:try_start_76 .. :try_end_1ca} :catchall_73

    goto/16 :goto_8
.end method

###### Class com.chartboost.sdk.impl.l.AnonymousClass1 (com.chartboost.sdk.impl.l$1)
.class Lcom/chartboost/sdk/impl/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/l;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 7

    .prologue
    .line 446
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 444
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/l$1;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
