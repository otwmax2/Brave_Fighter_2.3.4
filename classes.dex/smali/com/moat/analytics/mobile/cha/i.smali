###### Class com.moat.analytics.mobile.cha.i (com.moat.analytics.mobile.cha.i)
.class abstract Lcom/moat/analytics/mobile/cha/i;
.super Lcom/moat/analytics/mobile/cha/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/i$c;
    }
.end annotation


# instance fields
.field private ˋॱ:I

.field private ˏॱ:I

.field private ͺ:I

.field private ॱˊ:D

.field private ॱˋ:I

.field private ॱˎ:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/high16 v0, -0x80000000

    .line 44
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/b;-><init>(Ljava/lang/String;)V

    .line 45
    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    .line 46
    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    .line 47
    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    .line 49
    sget v0, Lcom/moat/analytics/mobile/cha/i$c;->ˏ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    .line 50
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    .line 51
    return-void
.end method


# virtual methods
.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 4

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->setPlayerVolume(Ljava/lang/Double;)V

    .line 89
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˊॱ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    .line 90
    return-void
.end method

.method public stopTracking()V
    .registers 3

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/cha/i;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    .line 78
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/b;->stopTracking()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 82
    :goto_d
    return-void

    .line 80
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method final ʻॱ()Z
    .registers 13
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ͺ()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˋॱ()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v2

    .line 248
    :goto_f
    return v0

    .line 176
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˋ()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 178
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    if-ltz v0, :cond_20

    if-gez v4, :cond_20

    move v0, v2

    .line 179
    goto :goto_f

    .line 182
    :cond_20
    iput v4, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    .line 185
    if-nez v4, :cond_26

    move v0, v3

    .line 186
    goto :goto_f

    .line 189
    :cond_26
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱᐝ()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˎ()Z

    move-result v5

    .line 191
    int-to-double v6, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    .line 193
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˊॱ()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 195
    const/4 v1, 0x0

    .line 197
    iget v10, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    if-le v4, v10, :cond_45

    .line 198
    iput v4, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    .line 201
    :cond_45
    iget v10, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4d

    .line 202
    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    .line 205
    :cond_4d
    if-eqz v5, :cond_d5

    .line 206
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v5, Lcom/moat/analytics/mobile/cha/i$c;->ˏ:I

    if-ne v0, v5, :cond_95

    .line 207
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 208
    sget v1, Lcom/moat/analytics/mobile/cha/i$c;->ˎ:I

    iput v1, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    .line 229
    :goto_5b
    if-eqz v0, :cond_e3

    move v1, v3

    .line 231
    :goto_5e
    if-nez v1, :cond_7b

    iget-wide v6, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-wide v6, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v10

    if-lez v5, :cond_7b

    .line 232
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    move v1, v3

    .line 236
    :cond_7b
    if-eqz v1, :cond_8d

    .line 237
    new-instance v1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˊ()Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v1}, Lcom/moat/analytics/mobile/cha/i;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    .line 240
    :cond_8d
    iput-wide v8, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    move v0, v3

    .line 243
    goto/16 :goto_f

    .line 209
    :cond_95
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v5, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    if-ne v0, v5, :cond_af

    .line 210
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 211
    sget v1, Lcom/moat/analytics/mobile/cha/i$c;->ˎ:I

    iput v1, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a1} :catch_a2

    goto :goto_5b

    .line 248
    :catch_a2
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e6

    move v0, v3

    goto/16 :goto_f

    .line 213
    :cond_af
    int-to-double v10, v4

    div-double v6, v10, v6

    :try_start_b2
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 214
    if-ltz v0, :cond_e9

    const/4 v5, 0x3

    if-ge v0, v5, :cond_e9

    .line 215
    sget-object v5, Lcom/moat/analytics/mobile/cha/i;->ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    aget-object v0, v5, v0

    .line 216
    iget-object v5, p0, Lcom/moat/analytics/mobile/cha/i;->ʼ:Ljava/util/HashMap;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 218
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/i;->ʼ:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 223
    :cond_d5
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v5, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    if-eq v0, v5, :cond_e9

    .line 224
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 225
    sget v1, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    iput v1, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_e1} :catch_a2

    goto/16 :goto_5b

    :cond_e3
    move v1, v2

    .line 229
    goto/16 :goto_5e

    :cond_e6
    move v0, v2

    .line 248
    goto/16 :goto_f

    :cond_e9
    move-object v0, v1

    goto/16 :goto_5b
.end method

.method final ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 95
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˋ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 96
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 106
    :goto_e
    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_28

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v1, v2, :cond_30

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    if-lez v1, :cond_30

    .line 110
    :cond_28
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 114
    :cond_30
    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v1, v2, :cond_54

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_4c

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    if-eq v1, v3, :cond_4c

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/i;->ˋ(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 121
    :cond_4c
    sget v0, Lcom/moat/analytics/mobile/cha/i$c;->ˋ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    .line 122
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 128
    :cond_54
    :goto_54
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 99
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˋ()Ljava/lang/Integer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_60

    move-result-object v0

    .line 103
    :goto_5d
    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    goto :goto_e

    .line 101
    :catch_60
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5d

    .line 124
    :cond_68
    sget v0, Lcom/moat/analytics/mobile/cha/i$c;->ॱ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    goto :goto_54
.end method

.method abstract ͺ()Z
.end method

.method public final ॱ(Ljava/util/Map;Landroid/view/View;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/moat/analytics/mobile/cha/b;->ॱ(Ljava/util/Map;Landroid/view/View;)Z

    move-result v0

    .line 61
    if-eqz v0, :cond_12

    .line 1147
    new-instance v1, Lcom/moat/analytics/mobile/cha/i$5;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/cha/i$5;-><init>(Lcom/moat/analytics/mobile/cha/i;)V

    .line 1166
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/i;->ᐝ:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 71
    :cond_12
    :goto_12
    return v0

    .line 66
    :catch_13
    move-exception v0

    .line 67
    const/4 v1, 0x3

    const-string v2, "IntervalVideoTracker"

    const-string v3, "Problem with video loop"

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v1, "trackVideoAd"

    invoke-virtual {p0, v1, v0}, Lcom/moat/analytics/mobile/cha/i;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_12
.end method

.method abstract ॱˋ()Ljava/lang/Integer;
.end method

.method abstract ॱˎ()Z
.end method

.method abstract ॱᐝ()Ljava/lang/Integer;
.end method

###### Class com.moat.analytics.mobile.cha.i.AnonymousClass5 (com.moat.analytics.mobile.cha.i$5)
.class final Lcom/moat/analytics/mobile/cha/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˎ:Lcom/moat/analytics/mobile/cha/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/i;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/i;->ͺ()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/i;->ˋॱ()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 151
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/i;->ʻॱ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 153
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/i;->ᐝ:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :goto_29
    return-void

    .line 155
    :cond_2a
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/i;->ˏॱ()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_29

    .line 160
    :catch_30
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/i;->ˏॱ()V

    .line 162
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_29

    .line 158
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i$5;->ˎ:Lcom/moat/analytics/mobile/cha/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/i;->ˏॱ()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_30

    goto :goto_29
.end method

###### Class com.moat.analytics.mobile.cha.i.c (com.moat.analytics.mobile.cha.i$c)
.class final Lcom/moat/analytics/mobile/cha/i$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/cha/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final ˊ:I

.field public static final ˋ:I

.field public static final ˎ:I

.field public static final ˏ:I

.field public static final ॱ:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24
    sput v2, Lcom/moat/analytics/mobile/cha/i$c;->ˏ:I

    sput v3, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    sput v4, Lcom/moat/analytics/mobile/cha/i$c;->ˎ:I

    sput v5, Lcom/moat/analytics/mobile/cha/i$c;->ˋ:I

    sput v6, Lcom/moat/analytics/mobile/cha/i$c;->ॱ:I

    .line 23
    new-array v0, v6, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    return-void
.end method
