###### Class com.tendcloud.tenddata.game.bd (com.tendcloud.tenddata.game.bd)
.class final Lcom/tendcloud/tenddata/game/bd;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/az;->a()Lcom/tendcloud/tenddata/game/az;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->b()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_9

    :catch_e
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :pswitch_17
    :try_start_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bb;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/az;->b(Lcom/tendcloud/tenddata/game/bb;)V

    goto :goto_9

    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bb;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/az;->a(Lcom/tendcloud/tenddata/game/bb;)V

    goto :goto_9

    :pswitch_27
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->c()V

    goto :goto_9

    :pswitch_2b
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->d()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2e} :catch_e

    goto :goto_9

    nop

    :pswitch_data_30
    .packed-switch 0x65
        :pswitch_a
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method
