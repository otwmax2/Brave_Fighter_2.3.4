###### Class com.tendcloud.tenddata.game.bn (com.tendcloud.tenddata.game.bn)
.class final Lcom/tendcloud/tenddata/game/bn;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send data handler message what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->f()[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->g()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    :cond_2e
    :goto_2e
    return-void

    :pswitch_2f
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6e

    const v0, 0x1d4c0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->a(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_2e

    const-string v0, "TDGA"

    const-string v1, "NORMAL_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    goto :goto_2e

    :catch_4b
    move-exception v0

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post handleMessage() error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_6e
    const v0, 0x1b7740

    :try_start_71
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->a(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_2e

    const-string v0, "TDGA"

    const-string v1, "SERVICE_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7f} :catch_4b

    goto :goto_2e

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch
.end method
