###### Class com.tendcloud.tenddata.TDGAItem (com.tendcloud.tenddata.TDGAItem)
.class public final Lcom/tendcloud/tenddata/TDGAItem;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPurchase(Ljava/lang/String;ID)V
    .registers 14

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_12

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "TDGAItem.onPurchase()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAItem.onPurchase()# item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " priceInVirtualCurrency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/tendcloud/tenddata/game/ci;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/ci;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;DLjava/lang/String;I)V

    const/16 v1, 0xa

    invoke-static {v8, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method public static onUse(Ljava/lang/String;I)V
    .registers 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_12

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "TDGAItem.onUse()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAItem.onUse()# item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/tendcloud/tenddata/game/co;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/co;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xb

    invoke-static {v6, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method
