###### Class com.tendcloud.tenddata.game.l (com.tendcloud.tenddata.game.l)
.class public Lcom/tendcloud/tenddata/game/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/game/k;


# static fields
.field private static final b:Ljava/lang/String; = "dyn_update_check_ts"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/l;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/l;->a:Landroid/content/Context;

    const-string v1, "actionstablepref"

    const-string v2, "dyn_update_check_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "1"

    return-object v0
.end method

.method public c()Z
    .registers 7

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/l;->a:Landroid/content/Context;

    const-string v1, "actionstablepref"

    const-string v2, "dyn_update_check_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    long-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "https://u.talkingdata.net/ota/common/android/dynamic/ver"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "https://u.talkingdata.net/ota/common/android/dynamic/sdk.zip"

    return-object v0
.end method

.method public f()V
    .registers 1

    return-void
.end method
