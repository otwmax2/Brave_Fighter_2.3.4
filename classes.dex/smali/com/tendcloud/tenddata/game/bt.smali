###### Class com.tendcloud.tenddata.game.bt (com.tendcloud.tenddata.game.bt)
.class public final Lcom/tendcloud/tenddata/game/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/game/w$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Lcom/tendcloud/tenddata/game/cm;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cm;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
