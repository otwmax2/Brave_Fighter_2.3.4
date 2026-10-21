###### Class com.tendcloud.tenddata.game.y (com.tendcloud.tenddata.game.y)
.class Lcom/tendcloud/tenddata/game/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/w;

.field private b:I


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/w;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/y;->b:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    const/4 v9, 0x1

    const/high16 v8, 0x41900000    # 18.0f

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/w;->c(Lcom/tendcloud/tenddata/game/w;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xfa

    cmp-long v3, v4, v6

    if-lez v3, :cond_1d

    if-eq v2, v9, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v2, v0, v1}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w;J)J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "values[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-gtz v1, :cond_61

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-gtz v1, :cond_61

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_67

    :cond_61
    iget v0, p0, Lcom/tendcloud/tenddata/game/y;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/y;->b:I

    :cond_67
    iget v0, p0, Lcom/tendcloud/tenddata/game/y;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->d(Lcom/tendcloud/tenddata/game/w;)Lcom/tendcloud/tenddata/game/w$a;

    move-result-object v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->e(Lcom/tendcloud/tenddata/game/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->e(Lcom/tendcloud/tenddata/game/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_95
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->d(Lcom/tendcloud/tenddata/game/w;)Lcom/tendcloud/tenddata/game/w$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/w$a;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/w;->a(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/y;->a:Lcom/tendcloud/tenddata/game/w;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/w;->b(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_b5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/y;->b:I
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b8} :catch_ba

    goto/16 :goto_1d

    :catch_ba
    move-exception v0

    goto/16 :goto_1d
.end method
