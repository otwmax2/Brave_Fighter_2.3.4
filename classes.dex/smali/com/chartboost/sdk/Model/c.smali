###### Class com.chartboost.sdk.Model.c (com.chartboost.sdk.Model.c)
.class public Lcom/chartboost/sdk/Model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Ljava/lang/Boolean;

.field private C:Lcom/chartboost/sdk/e;

.field private D:Ljava/lang/Runnable;

.field public final a:Lcom/chartboost/sdk/impl/c;

.field public final b:Lcom/chartboost/sdk/Libraries/f;

.field public final c:Lcom/chartboost/sdk/impl/ah;

.field public final d:Lcom/chartboost/sdk/impl/ap;

.field public final e:Lcom/chartboost/sdk/Tracking/a;

.field public final f:Landroid/os/Handler;

.field public final g:Lcom/chartboost/sdk/c;

.field public final h:Lcom/chartboost/sdk/impl/ak;

.field public final i:Lcom/chartboost/sdk/d;

.field public final j:Lcom/chartboost/sdk/impl/al;

.field public final k:Lcom/chartboost/sdk/Model/d;

.field public l:I

.field public final m:Ljava/lang/String;

.field public n:I

.field public final o:Ljava/lang/String;

.field public final p:Lcom/chartboost/sdk/Model/a;

.field public final q:Landroid/content/SharedPreferences;

.field public r:Z

.field public s:Lcom/chartboost/sdk/impl/bb;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/chartboost/sdk/impl/aj;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;Lcom/chartboost/sdk/impl/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->v:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 161
    iput-object p1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    .line 162
    iput-object p13, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    .line 163
    iput-object p3, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 164
    iput-object p4, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ah;

    .line 165
    iput-object p5, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/ap;

    .line 166
    iput-object p7, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 167
    iput-object p8, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    .line 168
    iput-object p9, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    .line 169
    iput-object p10, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ak;

    .line 170
    iput-object p11, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    .line 171
    iput-object p12, p0, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/impl/al;

    .line 172
    iput-object p2, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/Model/c;->l:I

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->r:Z

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 177
    const/4 v1, 0x3

    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 178
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->o:Ljava/lang/String;

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 181
    iput-object p6, p0, Lcom/chartboost/sdk/Model/c;->q:Landroid/content/SharedPreferences;

    .line 182
    return-void
.end method

.method private x()Z
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private y()Z
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 296
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    .line 419
    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 15

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 515
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v3, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    .line 517
    if-eqz v0, :cond_2c

    .line 518
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->l:I

    if-ne v0, v4, :cond_2c

    .line 519
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_2c

    .line 521
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 525
    :cond_2c
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12d

    move v0, v6

    .line 526
    :goto_37
    if-eqz v0, :cond_14f

    .line 527
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/click"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 534
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    .line 535
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    :cond_57
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 537
    const-string v1, "to"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    :cond_6a
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 539
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    :cond_7d
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    .line 541
    const-string v1, "creative"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    :cond_90
    iget v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v1, v6, :cond_98

    iget v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v1, v4, :cond_ef

    .line 544
    :cond_98
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v1, :cond_130

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_130

    .line 545
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/v;

    .line 549
    :goto_aa
    if-eqz v1, :cond_ef

    .line 550
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->k()F

    move-result v2

    .line 551
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->j()F

    move-result v1

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "TotalDuration: %f PlaybackTime: %f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v3, "total_time"

    div-float v4, v1, v11

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_144

    .line 556
    const-string v2, "playback_time"

    div-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    :cond_ef
    :goto_ef
    if-eqz p2, :cond_f6

    .line 563
    const-string v1, "click_coordinates"

    invoke-virtual {v0, v1, p2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_f6
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->x()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 568
    const-string v1, "retarget_reinstall"

    invoke-direct {p0}, Lcom/chartboost/sdk/Model/c;->y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    :cond_110
    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/aj;

    .line 572
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, p0, p1, v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V

    .line 578
    :goto_117
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void

    :cond_12d
    move v0, v7

    .line 525
    goto/16 :goto_37

    .line 546
    :cond_130
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v1, v6, :cond_15a

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_15a

    .line 547
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/be;

    goto/16 :goto_aa

    .line 558
    :cond_144
    const-string v1, "playback_time"

    div-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ef

    .line 574
    :cond_14f
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ak;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p0

    move v2, v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_117

    :cond_15a
    move-object v1, v5

    goto/16 :goto_aa
.end method

.method public a()Z
    .registers 10

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 185
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->l:I

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_5b

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget v0, v0, Lcom/chartboost/sdk/impl/c;->a:I

    packed-switch v0, :pswitch_data_92

    .line 238
    :goto_12
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    .line 190
    :pswitch_1d
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 192
    iput v2, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 193
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/v;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 194
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_12

    .line 197
    :cond_3b
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 198
    new-instance v0, Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/chartboost/sdk/impl/u;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    goto :goto_12

    .line 202
    :pswitch_49
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 203
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/v;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 204
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_12

    .line 211
    :cond_5b
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget v0, v0, Lcom/chartboost/sdk/impl/c;->a:I

    packed-switch v0, :pswitch_data_9a

    .line 235
    :goto_62
    new-instance v0, Lcom/chartboost/sdk/impl/be;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->b:Lcom/chartboost/sdk/Libraries/f;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ah;

    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->q:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v6, p0, Lcom/chartboost/sdk/Model/c;->f:Landroid/os/Handler;

    iget-object v7, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    iget-object v8, p0, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/be;-><init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/d;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    goto :goto_12

    .line 213
    :pswitch_79
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 215
    iput v2, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 216
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_62

    .line 224
    :cond_8a
    iput v4, p0, Lcom/chartboost/sdk/Model/c;->n:I

    goto :goto_62

    .line 228
    :pswitch_8d
    iput v1, p0, Lcom/chartboost/sdk/Model/c;->n:I

    .line 229
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    goto :goto_62

    .line 188
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_49
    .end packed-switch

    .line 211
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_79
        :pswitch_8d
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    iget v0, p0, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    if-eqz v0, :cond_d

    :cond_b
    move v0, v2

    .line 279
    :goto_c
    return v0

    .line 259
    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 263
    :try_start_1b
    iget-object v4, p0, Lcom/chartboost/sdk/Model/c;->h:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_33

    move-result v4

    if-eqz v4, :cond_2d

    .line 265
    :try_start_23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_4a

    .line 274
    :goto_27
    iget-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    if-eqz v1, :cond_41

    move v0, v2

    .line 275
    goto :goto_c

    .line 267
    :cond_2d
    :try_start_2d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->B:Ljava/lang/Boolean;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_33

    :cond_31
    move-object v0, v1

    goto :goto_27

    .line 270
    :catch_33
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 271
    :goto_37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "onClick"

    invoke-static {v4, v5, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27

    .line 276
    :cond_41
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 277
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v3

    .line 279
    goto :goto_c

    .line 270
    :catch_4a
    move-exception v1

    goto :goto_37
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 249
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->a(Lcom/chartboost/sdk/Model/c;)V

    .line 253
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 299
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->u:Z

    .line 300
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget v0, v0, Lcom/chartboost/sdk/impl/c;->a:I

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1a

    .line 302
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 304
    :cond_1a
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->w()V

    .line 305
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->v:Z

    .line 309
    return-void
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_13

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()V

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 318
    const/4 v0, 0x1

    .line 324
    :goto_12
    return v0

    .line 320
    :cond_13
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1a
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public h()V
    .registers 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->i()V

    .line 330
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->r:Z

    if-nez v0, :cond_8

    .line 337
    :goto_7
    return-void

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()V

    .line 335
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    .line 336
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public i()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    if-eqz v0, :cond_2f

    .line 342
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->b()V

    .line 344
    :try_start_9
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bb;->removeView(Landroid/view/View;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_40

    .line 350
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    .line 352
    :cond_2f
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_38

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->f()V

    .line 355
    :cond_38
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 346
    :catch_40
    move-exception v0

    .line 347
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cleanUpViews"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c
.end method

.method public j()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 4

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_15

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 370
    :goto_a
    return-object v0

    .line 367
    :catch_b
    move-exception v0

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tryCreatingView"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 370
    :cond_15
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_a
.end method

.method public k()Lcom/chartboost/sdk/e$a;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_b

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    .line 376
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public l()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 386
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e$a;->setVisibility(I)V

    .line 387
    :cond_17
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 423
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/c;->D:Ljava/lang/Runnable;

    .line 430
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->t:Z

    .line 431
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->k:Lcom/chartboost/sdk/Model/d;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/d;->c(Lcom/chartboost/sdk/Model/c;)V

    .line 443
    return-void
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_b

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->l()Z

    move-result v0

    .line 449
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public r()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 453
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    if-eqz v0, :cond_12

    .line 455
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->m()V

    .line 458
    :cond_12
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 462
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    if-nez v0, :cond_10

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->y:Z

    .line 467
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->n()V

    .line 469
    :cond_10
    return-void
.end method

.method public u()Lcom/chartboost/sdk/e;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->C:Lcom/chartboost/sdk/e;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->z:Z

    return v0
.end method

.method public w()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 480
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/video-complete"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->d:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 485
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v1, "reward"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v1, "currency-name"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v1, "ad_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v1, "force_close"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 491
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    :cond_52
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v5

    .line 494
    :cond_5c
    if-eqz v5, :cond_a2

    .line 495
    invoke-virtual {v5}, Lcom/chartboost/sdk/e;->k()F

    move-result v1

    .line 496
    invoke-virtual {v5}, Lcom/chartboost/sdk/e;->j()F

    move-result v2

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TotalDuration: %f PlaybackTime: %f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v8

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v3, "total_time"

    div-float v4, v2, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_bb

    .line 501
    const-string v1, "playback_time"

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    :cond_a2
    :goto_a2
    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 506
    iget-object v0, p0, Lcom/chartboost/sdk/Model/c;->e:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void

    .line 503
    :cond_bb
    const-string v2, "playback_time"

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a2
.end method
