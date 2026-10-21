###### Class com.vungle.publisher.c (com.vungle.publisher.c)
.class public Lcom/vungle/publisher/c;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/c$b;,
        Lcom/vungle/publisher/c$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/env/r;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/env/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/sz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/c$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/c$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/vc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/env/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/u;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/env/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/eb$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/xg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/log/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vungle/publisher/c;->h:Lcom/vungle/publisher/bw;

    invoke-static {p0}, Lcom/vungle/publisher/f;->a(Lcom/vungle/publisher/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    .line 207
    iget-object v1, p0, Lcom/vungle/publisher/c;->c:Lcom/vungle/publisher/env/i;

    invoke-interface {v1}, Lcom/vungle/publisher/env/i;->l()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 208
    if-eqz p2, :cond_28

    iget-object v1, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/eb$b;->a(Ljava/lang/String;)Lcom/vungle/publisher/dr;

    move-result-object v1

    .line 210
    :goto_11
    if-nez v1, :cond_2f

    .line 211
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v2, "no local ad available"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 212
    if-eqz p2, :cond_27

    .line 213
    iget-object v0, p0, Lcom/vungle/publisher/c;->q:Lcom/vungle/publisher/xg;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/xg;->a(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vungle/publisher/c;->a(Lrx/Observable;Ljava/lang/String;)V

    .line 233
    :cond_27
    :goto_27
    return-object v1

    .line 208
    :cond_28
    iget-object v1, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    .line 209
    invoke-virtual {v1, p1}, Lcom/vungle/publisher/eb$b;->b(Ljava/lang/String;)Lcom/vungle/publisher/dr;

    move-result-object v1

    goto :goto_11

    .line 216
    :cond_2f
    invoke-interface {v1}, Lcom/vungle/publisher/dr;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v2

    .line 217
    sget-object v3, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    if-ne v2, v3, :cond_81

    .line 218
    if-eqz p2, :cond_62

    .line 219
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local ad partially prepared, restarting preparation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/vungle/publisher/c;->q:Lcom/vungle/publisher/xg;

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/xg;->a(Lcom/vungle/publisher/dr;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/vungle/publisher/c;->a(Lrx/Observable;Ljava/lang/String;)V

    :goto_60
    move-object v1, v0

    .line 228
    goto :goto_27

    .line 222
    :cond_62
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local ad partially prepared, but not restarting preparation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_60

    .line 225
    :cond_81
    sget-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-ne v2, v0, :cond_a3

    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local ad already available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_a3
    move-object v0, v1

    goto :goto_60

    .line 230
    :cond_a5
    iget-object v1, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v1, v1, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v2, "unable to fetch local ad -  no external storage available"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_27
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/hr;
    .registers 14

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/o;->b()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 290
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v2, "requesting streaming ad"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/vungle/publisher/c;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/c$b;

    .line 292
    invoke-virtual {v0}, Lcom/vungle/publisher/c$b;->register()V

    .line 293
    iget-object v2, p0, Lcom/vungle/publisher/c;->l:Lcom/vungle/publisher/vc;

    invoke-virtual {v2, p1, p2}, Lcom/vungle/publisher/vc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-wide v2, v0, Lcom/vungle/publisher/c$b;->c:J

    .line 295
    iget-object v4, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v4}, Lcom/vungle/publisher/env/o;->c()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 296
    monitor-enter v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_cf

    .line 298
    :goto_2d
    :try_start_2d
    iget-boolean v6, v0, Lcom/vungle/publisher/c$b;->a:Z

    if-nez v6, :cond_43

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_a0

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_43

    .line 302
    :try_start_3d
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_a0

    goto :goto_2d

    .line 303
    :catch_41
    move-exception v6

    goto :goto_2d

    .line 306
    :cond_43
    :try_start_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 307
    iget-boolean v2, v0, Lcom/vungle/publisher/c$b;->a:Z

    if-eqz v2, :cond_7c

    .line 308
    iget-object v2, v0, Lcom/vungle/publisher/c$b;->b:Lcom/vungle/publisher/hr;
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_a0

    .line 309
    if-eqz v2, :cond_db

    .line 310
    :try_start_50
    iget-object v1, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v1, v1, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request streaming ad success after "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vungle/publisher/hr;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_50 .. :try_end_78} :catchall_d4

    move-object v1, v2

    .line 317
    :goto_79
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_d6

    move-object v0, v1

    .line 324
    :goto_7b
    return-object v0

    .line 314
    :cond_7c
    :try_start_7c
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request streaming ad timeout after "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/vungle/publisher/c$b;->a()V
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_a0

    goto :goto_79

    .line 317
    :catchall_a0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_a4
    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_d4

    :try_start_a5
    throw v1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a6} :catch_a6

    .line 320
    :catch_a6
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 321
    :goto_a9
    const-string v2, "VungleEvent"

    const-string v3, "error getting streaming ad"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error getting streaming ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_7b

    .line 320
    :catch_cf
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_a9

    .line 317
    :catchall_d4
    move-exception v1

    goto :goto_a4

    :catchall_d6
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_a4

    :cond_db
    move-object v1, v2

    goto :goto_79

    :cond_dd
    move-object v0, v1

    goto :goto_7b
.end method

.method public a()V
    .registers 7

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/vungle/publisher/c;->register()V

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    iget-object v1, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->a(Ljava/util/List;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    iget-object v1, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/c;->b(Ljava/lang/String;Z)V

    .line 133
    :goto_2a
    return-void

    .line 125
    :cond_2b
    iget-object v0, p0, Lcom/vungle/publisher/c;->h:Lcom/vungle/publisher/bw;

    invoke-static {p0}, Lcom/vungle/publisher/d;->a(Lcom/vungle/publisher/c;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/bw$b;->s:Lcom/vungle/publisher/bw$b;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    goto :goto_2a
.end method

.method public a(Ljava/lang/String;Lcom/vungle/publisher/t;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v2, p1}, Lcom/vungle/publisher/env/o;->b(Ljava/lang/String;)Lcom/vungle/publisher/s;

    move-result-object v2

    if-nez v2, :cond_15

    .line 243
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/bm;

    invoke-direct {v2, v1, p1}, Lcom/vungle/publisher/bm;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 284
    :cond_14
    :goto_14
    return-void

    .line 244
    :cond_15
    iget-object v2, p0, Lcom/vungle/publisher/c;->o:Lcom/vungle/publisher/env/k;

    invoke-virtual {v2, p1}, Lcom/vungle/publisher/env/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 245
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v3, "AdManager.playAd()"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 249
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/c;->c(Ljava/lang/String;)Lcom/vungle/publisher/cn;

    move-result-object v1

    .line 250
    if-nez v1, :cond_48

    .line 251
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v3, "no ad to play"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v3, Lcom/vungle/publisher/bq;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/vungle/publisher/bq;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_ae
    .catchall {:try_start_26 .. :try_end_40} :catchall_df

    .line 277
    :goto_40
    if-nez v0, :cond_14

    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/c;->l:Lcom/vungle/publisher/vc;

    invoke-virtual {v0}, Lcom/vungle/publisher/vc;->c()V

    goto :goto_14

    .line 254
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/vungle/publisher/c;->j:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/c$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/c$a;->register()V

    .line 256
    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    if-eq v0, v2, :cond_63

    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    if-ne v0, v2, :cond_96

    .line 257
    :cond_63
    iget-object v0, p0, Lcom/vungle/publisher/c;->e:Ljava/lang/Class;

    .line 264
    :goto_65
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vungle/publisher/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const/high16 v0, 0x30000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/vungle/publisher/c;->n:Lcom/vungle/publisher/u;

    invoke-virtual {v0, v2, p2}, Lcom/vungle/publisher/u;->a(Landroid/content/Intent;Lcom/vungle/publisher/t;)V

    .line 267
    const-string v3, "adId"

    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v0, "adType"

    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 269
    const-string v0, "placementReferenceId"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/vungle/publisher/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    const/4 v0, 0x1

    goto :goto_40

    .line 258
    :cond_96
    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    if-ne v0, v2, :cond_ab

    sget-object v0, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/x;

    iget-object v2, v1, Lcom/vungle/publisher/cn;->s:Ljava/lang/String;

    .line 259
    invoke-static {v2}, Lcom/vungle/publisher/x;->a(Ljava/lang/String;)Lcom/vungle/publisher/x;

    move-result-object v2

    if-ne v0, v2, :cond_ab

    .line 260
    iget-object v0, p0, Lcom/vungle/publisher/c;->g:Ljava/lang/Class;

    goto :goto_65

    .line 262
    :cond_ab
    iget-object v0, p0, Lcom/vungle/publisher/c;->f:Ljava/lang/Class;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_ad} :catch_ae
    .catchall {:try_start_48 .. :try_end_ad} :catchall_df

    goto :goto_65

    .line 273
    :catch_ae
    move-exception v0

    .line 274
    :try_start_af
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error launching ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/bu;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/vungle/publisher/bu;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V
    :try_end_d8
    .catchall {:try_start_af .. :try_end_d8} :catchall_df

    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/c;->l:Lcom/vungle/publisher/vc;

    invoke-virtual {v0}, Lcom/vungle/publisher/vc;->c()V

    goto/16 :goto_14

    .line 277
    :catchall_df
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/vungle/publisher/c;->l:Lcom/vungle/publisher/vc;

    invoke-virtual {v1}, Lcom/vungle/publisher/vc;->c()V

    throw v0
.end method

.method a(Lrx/Observable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Lcom/vungle/publisher/dr",
            "<*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocalAd processing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/env/r;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 164
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/env/r;->b(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/vungle/publisher/c$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/publisher/c$1;-><init>(Lcom/vungle/publisher/c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 202
    :goto_31
    return-void

    .line 199
    :cond_32
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "queuing this for now, will get back to this Ad Prepare"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/env/r;->a(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_4

    .line 139
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/eb$b;->b(Ljava/lang/String;)Lcom/vungle/publisher/dr;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method b()V
    .registers 7

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vungle/publisher/c;->h:Lcom/vungle/publisher/bw;

    sget-object v1, Lcom/vungle/publisher/bw$b;->l:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw;->a(Lcom/vungle/publisher/bw$b;)V

    .line 329
    iget-object v0, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b;->c()Ljava/lang/Long;

    move-result-object v0

    .line 330
    if-nez v0, :cond_10

    .line 337
    :goto_f
    return-void

    .line 333
    :cond_10
    iget-object v1, p0, Lcom/vungle/publisher/c;->h:Lcom/vungle/publisher/bw;

    invoke-static {p0}, Lcom/vungle/publisher/e;->a(Lcom/vungle/publisher/c;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/bw$b;->l:Lcom/vungle/publisher/bw$b;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 333
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    goto :goto_f
.end method

.method b(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;

    .line 341
    invoke-virtual {p0}, Lcom/vungle/publisher/c;->b()V

    .line 342
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdPlayable called for placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/c;->o:Lcom/vungle/publisher/env/k;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/k;->a()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/vungle/publisher/c;->o:Lcom/vungle/publisher/env/k;

    .line 145
    invoke-virtual {v0}, Lcom/vungle/publisher/env/k;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 146
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 144
    :goto_31
    return v0

    .line 146
    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public c(Ljava/lang/String;)Lcom/vungle/publisher/cn;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/c;->d(Ljava/lang/String;)Lcom/vungle/publisher/dr;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_3c

    .line 153
    invoke-interface {v0}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v2

    .line 155
    :goto_b
    if-nez v2, :cond_32

    move-object v0, v1

    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/hr;

    move-result-object v0

    .line 156
    if-nez v0, :cond_15

    move-object v0, v2

    .line 157
    :cond_15
    iget-object v2, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next ad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_37

    :goto_26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 158
    return-object v0

    .line 155
    :cond_32
    invoke-virtual {v2}, Lcom/vungle/publisher/cn;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 157
    :cond_37
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->B()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_3c
    move-object v2, v1

    goto :goto_b
.end method

.method synthetic c()V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "cleanUpInactivePlacements"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    iget-object v1, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/eb$b;->a(Ljava/util/List;)I

    .line 363
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/vungle/publisher/dr;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;

    move-result-object v0

    return-object v0
.end method

.method synthetic d()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b;->a()I

    return-void
.end method

.method synthetic e()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/bl;

    iget-object v2, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v2}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/bl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/env/o;->b(Ljava/lang/String;)Lcom/vungle/publisher/s;

    move-result-object v0

    if-nez v0, :cond_13

    .line 376
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/bl;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/bl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 389
    :cond_12
    :goto_12
    return-void

    .line 377
    :cond_13
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 379
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/as;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/as;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_12

    .line 380
    :cond_24
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/env/r;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3b

    .line 382
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/bl;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/bl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_12

    .line 383
    :cond_3b
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/r;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;

    goto :goto_12
.end method

.method public f(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 392
    iget-object v0, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/env/o;->b(Ljava/lang/String;)Lcom/vungle/publisher/s;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 393
    iget-object v0, p0, Lcom/vungle/publisher/c;->p:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eb$b;->c(Ljava/lang/String;)Lcom/vungle/publisher/dr;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_32

    .line 396
    invoke-interface {v0}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    if-ne v1, v2, :cond_32

    sget-object v1, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/x;

    iget-object v0, v0, Lcom/vungle/publisher/cn;->s:Ljava/lang/String;

    .line 398
    invoke-static {v0}, Lcom/vungle/publisher/x;->a(Ljava/lang/String;)Lcom/vungle/publisher/x;

    move-result-object v0

    if-ne v1, v0, :cond_32

    .line 399
    iget-object v0, p0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sf;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/sf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 400
    const/4 v0, 0x1

    .line 404
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public onEvent(Lcom/vungle/publisher/ag;)V
    .registers 5
    .param p1, "decreasedAdAvailabilityEvent"    # Lcom/vungle/publisher/ag;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreasedAdAvailabilityEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/vungle/publisher/ag;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 369
    iget-object v0, p0, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/c;->b(Ljava/lang/String;Z)V

    .line 371
    :cond_38
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/al;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/al;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "HandleQueuedAdAvailabilityEvent"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/r;->n()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 351
    iget-object v0, p0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/r;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/c;->b(Ljava/lang/String;Z)V

    .line 356
    :goto_1b
    return-void

    .line 354
    :cond_1c
    invoke-direct {p0}, Lcom/vungle/publisher/c;->f()V

    goto :goto_1b
.end method

.method public onEvent(Lcom/vungle/publisher/ql;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/ql;

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/vungle/publisher/ql;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/c;->b(Ljava/lang/String;Z)V

    .line 346
    return-void
.end method

###### Class com.vungle.publisher.c.AnonymousClass1 (com.vungle.publisher.c$1)
.class Lcom/vungle/publisher/c$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/c;->a(Lrx/Observable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Lcom/vungle/publisher/dr",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/c;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iput-object p2, p0, Lcom/vungle/publisher/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/dr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "ad observable onNext"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->a(Z)V

    .line 193
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->b(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/al;

    invoke-direct {v1}, Lcom/vungle/publisher/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/am;

    iget-object v2, p0, Lcom/vungle/publisher/c$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/am;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "ad observable onComplete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->a(Z)V

    .line 171
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "ad observable onError"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->a(Z)V

    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->b(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v1, v1, Lcom/vungle/publisher/c;->m:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 180
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "ad observable onError , queuing it for retry at end of the queue !"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->a:Lcom/vungle/publisher/env/r;

    iget-object v1, p0, Lcom/vungle/publisher/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/r;->a(Ljava/lang/String;)V

    .line 186
    :goto_3f
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->d:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/al;

    invoke-direct {v1}, Lcom/vungle/publisher/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 187
    return-void

    .line 184
    :cond_4c
    iget-object v0, p0, Lcom/vungle/publisher/c$1;->b:Lcom/vungle/publisher/c;

    iget-object v0, v0, Lcom/vungle/publisher/c;->r:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "ad observable onError , ignoring this No retries !"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 166
    check-cast p1, Lcom/vungle/publisher/dr;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/c$1;->a(Lcom/vungle/publisher/dr;)V

    return-void
.end method

###### Class com.vungle.publisher.c.AnonymousClass2 (com.vungle.publisher.c$2)
.class synthetic Lcom/vungle/publisher/c$2;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 491
    invoke-static {}, Lcom/vungle/publisher/cn$c;->values()[Lcom/vungle/publisher/cn$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/c$2;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/c$2;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/c$2;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/c$2;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method

###### Class com.vungle.publisher.c.a (com.vungle.publisher.c$a)
.class Lcom/vungle/publisher/c$a;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/log/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    .line 410
    const-string v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/c$a;->a:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/aj;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/aj;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vungle/publisher/c$a;->b:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "sent ad report - un-registering play ad listener"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/vungle/publisher/c$a;->unregister()V

    .line 430
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/av;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/av",
            "<",
            "Lcom/vungle/publisher/cn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/av;, "Lcom/vungle/publisher/av<Lcom/vungle/publisher/cn;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/av;->b()Lcom/vungle/publisher/cn;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cn;->b(Lcom/vungle/publisher/cn$c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 425
    :goto_9
    return-void

    .line 421
    :catch_a
    move-exception v0

    .line 422
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start Ad play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/vungle/publisher/c$a;->b:Lcom/vungle/publisher/log/g;

    iget-object v1, v1, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error processing start play ad event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onEvent(Lcom/vungle/publisher/bk;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/bk;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/vungle/publisher/c$a;->b:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "play ad failure - un-registering play ad listener"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/vungle/publisher/c$a;->unregister()V

    .line 435
    return-void
.end method

###### Class com.vungle.publisher.c.b (com.vungle.publisher.c$b)
.class Lcom/vungle/publisher/c$b;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Lcom/vungle/publisher/hr;

.field final c:J

.field d:Lcom/vungle/publisher/hr$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/log/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/c$b;->c:J

    .line 449
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/c$b;->a:Z

    .line 453
    monitor-enter p0

    .line 454
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 455
    monitor-exit p0

    .line 456
    return-void

    .line 455
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onEvent(Lcom/vungle/publisher/ak;)V
    .registers 8
    .param p1, "prepareStreamingAdFailureEvent"    # Lcom/vungle/publisher/ak;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/vungle/publisher/c$b;->unregister()V

    .line 460
    iget-object v0, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request streaming ad failure after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/ak;->e()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vungle/publisher/c$b;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/vungle/publisher/c$b;->a()V

    .line 462
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/au;)V
    .registers 9
    .param p1, "prepareStreamingAdSuccessEvent"    # Lcom/vungle/publisher/au;

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/vungle/publisher/c$b;->unregister()V

    .line 466
    invoke-virtual {p1}, Lcom/vungle/publisher/au;->e()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vungle/publisher/c$b;->c:J

    sub-long v2, v0, v2

    .line 467
    invoke-virtual {p1}, Lcom/vungle/publisher/au;->a()Lcom/vungle/publisher/wc;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wm;

    .line 468
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/vungle/publisher/wm;->n()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 469
    invoke-virtual {v0}, Lcom/vungle/publisher/wm;->g()Ljava/lang/String;

    move-result-object v4

    .line 470
    iget-object v1, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v1, v1, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received streaming ad: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/vungle/publisher/c$b;->d:Lcom/vungle/publisher/hr$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/vungle/publisher/hr$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/hr;

    .line 472
    if-nez v1, :cond_8e

    .line 473
    iget-object v1, p0, Lcom/vungle/publisher/c$b;->d:Lcom/vungle/publisher/hr$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hr$a;->a(Lcom/vungle/publisher/wm;)Lcom/vungle/publisher/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/c$b;->b:Lcom/vungle/publisher/hr;

    .line 474
    iget-object v1, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v1, v1, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserting new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/publisher/hr;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 476
    :try_start_7c
    invoke-virtual {v0}, Lcom/vungle/publisher/hr;->w()Ljava/lang/String;
    :try_end_7f
    .catch Landroid/database/SQLException; {:try_start_7c .. :try_end_7f} :catch_83

    .line 510
    :goto_7f
    invoke-virtual {p0}, Lcom/vungle/publisher/c$b;->a()V

    .line 511
    return-void

    .line 477
    :catch_83
    move-exception v0

    .line 478
    iget-object v0, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    const-string v1, "did not insert streaming ad - possible duplicate"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_7f

    .line 484
    :cond_8e
    :try_start_8e
    iget-object v2, p0, Lcom/vungle/publisher/c$b;->d:Lcom/vungle/publisher/hr$a;

    invoke-virtual {v2, v1, v0}, Lcom/vungle/publisher/hr$a;->a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_93} :catch_dd

    .line 490
    :goto_93
    invoke-virtual {v1}, Lcom/vungle/publisher/hr;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v0

    .line 491
    sget-object v2, Lcom/vungle/publisher/c$2;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_192

    .line 504
    iget-object v2, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "existing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/publisher/hr;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_7f

    .line 486
    :catch_dd
    move-exception v0

    .line 488
    iget-object v2, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating ad "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_93

    .line 493
    :pswitch_107
    iget-object v2, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected ad status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/publisher/hr;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 497
    :pswitch_12f
    iget-object v2, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v2, v2, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "existing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/publisher/hr;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 498
    sget-object v2, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-eq v0, v2, :cond_16c

    .line 499
    sget-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hr;->b(Lcom/vungle/publisher/cn$c;)V

    .line 501
    :cond_16c
    iput-object v1, p0, Lcom/vungle/publisher/c$b;->b:Lcom/vungle/publisher/hr;

    goto/16 :goto_7f

    .line 508
    :cond_170
    iget-object v0, p0, Lcom/vungle/publisher/c$b;->e:Lcom/vungle/publisher/log/g;

    iget-object v0, v0, Lcom/vungle/publisher/log/g;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no streaming ad to play after "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 491
    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_107
        :pswitch_12f
        :pswitch_12f
    .end packed-switch
.end method
