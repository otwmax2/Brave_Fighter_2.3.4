###### Class com.tendcloud.tenddata.game.p (com.tendcloud.tenddata.game.p)
.class final Lcom/tendcloud/tenddata/game/p;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/p;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/p;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_19

    :try_start_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/p;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_f
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    :try_start_8
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_d
    monitor-exit v1

    :goto_e
    return-void

    :catch_f
    move-exception v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_d

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    goto :goto_e

    :catchall_1b
    move-exception v0

    :try_start_1c
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_16
.end method
