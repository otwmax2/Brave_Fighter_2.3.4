###### Class com.tendcloud.tenddata.game.br (com.tendcloud.tenddata.game.br)
.class public final Lcom/tendcloud/tenddata/game/br;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = null

.field private static final b:J = 0x7530L


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()V
    .registers 14

    const-wide/16 v12, 0x7530

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/tendcloud/tenddata/game/br;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->d()J

    move-result-wide v4

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->g()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x364

    cmp-long v10, v4, v10

    if-nez v10, :cond_26

    :goto_1d
    if-eqz v0, :cond_24

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-static {v8, v9, v1, v0}, Lcom/tendcloud/tenddata/game/br;->a(JILcom/tendcloud/tenddata/TDGAAccount;)V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_40

    :cond_24
    monitor-exit v2

    return-void

    :cond_26
    sub-long v10, v8, v6

    cmp-long v10, v10, v12

    if-lez v10, :cond_32

    sub-long v10, v8, v4

    cmp-long v10, v10, v12

    if-gtz v10, :cond_36

    :cond_32
    cmp-long v10, v8, v4

    if-gez v10, :cond_4c

    :cond_36
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_43

    :try_start_3c
    invoke-static {v3, v4, v5, v4, v5}, Lcom/tendcloud/tenddata/game/br;->a(Ljava/lang/String;JJ)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_1d

    :catchall_40
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_43
    :try_start_43
    invoke-static {v3, v4, v5, v6, v7}, Lcom/tendcloud/tenddata/game/br;->a(Ljava/lang/String;JJ)V

    sub-long v4, v8, v6

    long-to-int v1, v4

    div-int/lit16 v1, v1, 0x3e8
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    goto :goto_1d

    :cond_4c
    move v0, v1

    goto :goto_1d
.end method

.method private static a(JILcom/tendcloud/tenddata/TDGAAccount;)V
    .registers 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->d(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/bq;->b(J)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/bq;->c(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->f()V

    new-instance v0, Lcom/tendcloud/tenddata/game/cf;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p3, p2}, Lcom/tendcloud/tenddata/game/cf;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;I)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    return-void
.end method

.method static declared-synchronized a(Lcom/tendcloud/tenddata/TDGAAccount$a;)V
    .registers 4

    const-class v1, Lcom/tendcloud/tenddata/game/br;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/br;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAAccount;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAAccount;)V
    .registers 14

    const-class v8, Lcom/tendcloud/tenddata/game/br;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->d()J

    move-result-wide v4

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v1, Lcom/tendcloud/tenddata/game/cg;

    sub-long v6, v10, v4

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/cg;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;JJ)V

    invoke-virtual {v1, v10, v11}, Lcom/tendcloud/tenddata/game/cg;->a(J)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    const/4 v0, 0x0

    invoke-static {v10, v11, v0, p1}, Lcom/tendcloud/tenddata/game/br;->a(JILcom/tendcloud/tenddata/TDGAAccount;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v8

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static a(Ljava/lang/String;JJ)V
    .registers 14

    invoke-static {p3, p4}, Lcom/tendcloud/tenddata/game/bq;->c(J)V

    new-instance v1, Lcom/tendcloud/tenddata/game/cg;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sub-long v6, p3, p1

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/cg;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;JJ)V

    invoke-virtual {v1, p3, p4}, Lcom/tendcloud/tenddata/game/cg;->a(J)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    return-void
.end method

.method public static declared-synchronized b()V
    .registers 4

    const-class v1, Lcom/tendcloud/tenddata/game/br;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/bq;->c(J)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
