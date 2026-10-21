###### Class com.tendcloud.tenddata.TDGAVirtualCurrency (com.tendcloud.tenddata.TDGAVirtualCurrency)
.class public final Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .registers 24

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TDGAVirtualCurrency.onChargeRequest()#SDK not initialized. "

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TDGAVirtualCurrency.onChargeRequest()#orderid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iapid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currencyAmount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currencyType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " virtualCurrencyAmount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paymentType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    sget-object v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v15

    new-instance v2, Lcom/tendcloud/tenddata/game/ca;

    sget-object v3, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v4, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v5, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v14, Lcom/tendcloud/tenddata/game/ca$a;->a:Lcom/tendcloud/tenddata/game/ca$a;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object/from16 v13, p7

    invoke-direct/range {v2 .. v14}, Lcom/tendcloud/tenddata/game/ca;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/game/ca$a;)V

    const/4 v3, 0x6

    invoke-static {v15, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-class v3, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v3

    :try_start_9e
    sget-object v4, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto/16 :goto_11

    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_9e .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method public static onChargeSuccess(Ljava/lang/String;)V
    .registers 14

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_15

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "TDGAVirtualCurrency.onChargeSuccess()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAVirtualCurrency.onChargeSuccess()#orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    const-class v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v1

    :try_start_32
    sget-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ca;

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_5b

    if-nez v0, :cond_4e

    new-instance v0, Lcom/tendcloud/tenddata/game/ca;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v12, Lcom/tendcloud/tenddata/game/ca$a;->b:Lcom/tendcloud/tenddata/game/ca$a;

    move-object v4, p0

    move-object v8, v5

    move-wide v9, v6

    move-object v11, v5

    invoke-direct/range {v0 .. v12}, Lcom/tendcloud/tenddata/game/ca;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/game/ca$a;)V

    :cond_4e
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public static onReward(DLjava/lang/String;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_12

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "TDGAVirtualCurrency.onReward()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAVirtualCurrency.onReward()#currencyAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/cl;

    sget-object v1, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    move-wide v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/cl;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;DLjava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method
