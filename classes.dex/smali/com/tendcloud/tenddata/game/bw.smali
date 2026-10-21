###### Class com.tendcloud.tenddata.game.bw (com.tendcloud.tenddata.game.bw)
.class final Lcom/tendcloud/tenddata/game/bw;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bv;->a(Landroid/os/Message;)V

    return-void
.end method
