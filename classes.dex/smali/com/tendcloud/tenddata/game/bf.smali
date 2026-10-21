###### Class com.tendcloud.tenddata.game.bf (com.tendcloud.tenddata.game.bf)
.class final Lcom/tendcloud/tenddata/game/bf;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6

    :pswitch_5
    return-void

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
