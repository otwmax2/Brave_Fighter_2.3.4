###### Class com.tendcloud.tenddata.game.r (com.tendcloud.tenddata.game.r)
.class Lcom/tendcloud/tenddata/game/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tendcloud/tenddata/game/q;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/q;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/q;->a(Lcom/tendcloud/tenddata/game/q;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/s;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-boolean v1, v1, Lcom/tendcloud/tenddata/game/q;->g:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_37

    :try_start_15
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_34

    :cond_1b
    const-wide/16 v0, 0xbb8

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/s;->c()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/q;->a(Lcom/tendcloud/tenddata/game/q;Lcom/tendcloud/tenddata/game/s;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_33} :catch_37

    :cond_33
    :goto_33
    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v0
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    goto :goto_33
.end method
