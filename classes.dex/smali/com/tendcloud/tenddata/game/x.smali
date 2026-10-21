###### Class com.tendcloud.tenddata.game.x (com.tendcloud.tenddata.game.x)
.class Lcom/tendcloud/tenddata/game/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/w;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/w;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/x;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/x;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/x;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/x;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/w;->b(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_8

    nop

    :pswitch_data_22
    .packed-switch 0xa
        :pswitch_9
    .end packed-switch
.end method
