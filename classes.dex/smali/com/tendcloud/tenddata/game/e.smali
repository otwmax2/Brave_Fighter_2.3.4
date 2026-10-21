###### Class com.tendcloud.tenddata.game.e (com.tendcloud.tenddata.game.e)
.class final Lcom/tendcloud/tenddata/game/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 6

    invoke-static {}, Lcom/tendcloud/tenddata/game/d;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/tendcloud/tenddata/game/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/d;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/d;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_15
    return-void
.end method
