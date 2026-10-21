###### Class com.chartboost.sdk.impl.be (com.chartboost.sdk.impl.be)
.class public Lcom/chartboost/sdk/impl/be;
.super Lcom/chartboost/sdk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/be$a;,
        Lcom/chartboost/sdk/impl/be$b;
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:Z

.field H:I

.field private final I:Lcom/chartboost/sdk/Libraries/f;

.field private final J:Lcom/chartboost/sdk/impl/ah;

.field private K:Ljava/lang/String;

.field private L:F

.field private M:F

.field private N:Z

.field private O:I

.field final j:Lcom/chartboost/sdk/Tracking/a;

.field final k:Lcom/chartboost/sdk/d;

.field final l:Landroid/content/SharedPreferences;

.field public m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field protected o:I

.field p:J

.field q:J

.field r:Z

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/d;)V
    .registers 15

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1, p6, p7}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 56
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;

    .line 58
    iput-object v5, p0, Lcom/chartboost/sdk/impl/be;->K:Ljava/lang/String;

    .line 59
    iput-object v5, p0, Lcom/chartboost/sdk/impl/be;->n:Ljava/lang/String;

    .line 60
    iput v4, p0, Lcom/chartboost/sdk/impl/be;->o:I

    .line 62
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->L:F

    .line 63
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->M:F

    .line 65
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/be;->N:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/be;->p:J

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/be;->q:J

    .line 68
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/be;->r:Z

    .line 71
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->s:I

    .line 72
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->t:I

    .line 73
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->u:I

    .line 74
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->v:I

    .line 76
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->w:I

    .line 78
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->x:I

    .line 79
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->y:I

    .line 80
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->z:I

    .line 81
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->A:I

    .line 83
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->B:I

    .line 84
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->C:I

    .line 85
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->D:I

    .line 86
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->E:I

    .line 88
    iput v3, p0, Lcom/chartboost/sdk/impl/be;->F:I

    .line 89
    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    .line 90
    iput v3, p0, Lcom/chartboost/sdk/impl/be;->H:I

    .line 92
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->O:I

    .line 186
    iput-object p2, p0, Lcom/chartboost/sdk/impl/be;->I:Lcom/chartboost/sdk/Libraries/f;

    .line 187
    iput-object p3, p0, Lcom/chartboost/sdk/impl/be;->J:Lcom/chartboost/sdk/impl/ah;

    .line 188
    iput-object p5, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    .line 189
    iput-object p8, p0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/d;

    .line 190
    iput-object p4, p0, Lcom/chartboost/sdk/impl/be;->l:Landroid/content/SharedPreferences;

    .line 191
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window;)I
    .registers 3

    .prologue
    .line 440
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_10

    .line 344
    const-string v0, "error"

    :goto_5
    return-object v0

    .line 341
    :pswitch_6
    const-string v0, "portrait"

    goto :goto_5

    .line 342
    :pswitch_9
    const-string v0, "landscape"

    goto :goto_5

    .line 343
    :pswitch_c
    const-string v0, "none"

    goto :goto_5

    .line 340
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public a(F)V
    .registers 2

    .prologue
    .line 597
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->M:F

    .line 598
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->I:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 202
    if-nez v1, :cond_18

    .line 203
    const-string v1, "CBWebViewProtocol"

    const-string v2, "External Storage path is unavailable or media not mounted"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 221
    :goto_17
    return v0

    .line 208
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/be;->n:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 210
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Invalid adId being passed in the response"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_17

    .line 214
    :cond_54
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->o:Ljava/lang/String;

    .line 215
    if-nez v1, :cond_67

    .line 216
    const-string v1, "CBWebViewProtocol"

    const-string v2, "No html data found in memory"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_17

    .line 220
    :cond_67
    iput-object v1, p0, Lcom/chartboost/sdk/impl/be;->K:Ljava/lang/String;

    .line 221
    const/4 v0, 0x1

    goto :goto_17
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Lcom/chartboost/sdk/impl/be$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->K:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/be$b;-><init>(Lcom/chartboost/sdk/impl/be;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(F)V
    .registers 2

    .prologue
    .line 601
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->L:F

    .line 602
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 588
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->O:I

    .line 589
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    if-eqz v0, :cond_59

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    if-eqz v0, :cond_59

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 235
    new-instance v2, Lcom/chartboost/sdk/impl/ad;

    const-string v3, "GET"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 236
    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->J:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 238
    const-string v2, "CBWebViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Sending VAST Tracking Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 243
    :cond_59
    return-void
.end method

.method c(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 410
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/chartboost/sdk/impl/be;->s:I

    .line 411
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->t:I

    .line 412
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 359
    const-string v0, "allowOrientationChange"

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    .line 360
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    .line 361
    const-string v0, "forceOrientation"

    iget v1, p0, Lcom/chartboost/sdk/impl/be;->H:I

    .line 363
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/be;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->H:I

    .line 364
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->q()V

    .line 365
    return-void
.end method

.method public d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 563
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->d()V

    .line 565
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_2e

    .line 567
    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v1, :cond_1c

    .line 568
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Destroying the webview object and cleaning up the references"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bd;->destroy()V

    .line 570
    iput-object v3, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    .line 572
    :cond_1c
    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->d:Lcom/chartboost/sdk/impl/bc;

    if-eqz v1, :cond_22

    .line 573
    iput-object v3, v0, Lcom/chartboost/sdk/impl/be$b;->d:Lcom/chartboost/sdk/impl/bc;

    .line 574
    :cond_22
    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_28

    .line 575
    iput-object v3, v0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    .line 576
    :cond_28
    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2e

    .line 577
    iput-object v3, v0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    .line 580
    :cond_2e
    invoke-super {p0}, Lcom/chartboost/sdk/e;->d()V

    .line 581
    return-void
.end method

.method d(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 416
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 437
    :cond_4
    :goto_4
    return-void

    :cond_5
    move-object v0, p1

    .line 420
    check-cast v0, Landroid/app/Activity;

    .line 421
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 422
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 423
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be;->a(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->w:I

    .line 426
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->s:I

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/chartboost/sdk/impl/be;->t:I

    if-nez v0, :cond_29

    .line 427
    :cond_26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/be;->c(Landroid/content/Context;)V

    .line 430
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 431
    iget v1, p0, Lcom/chartboost/sdk/impl/be;->t:I

    iget v2, p0, Lcom/chartboost/sdk/impl/be;->w:I

    sub-int/2addr v1, v2

    .line 433
    iget v2, p0, Lcom/chartboost/sdk/impl/be;->u:I

    if-ne v0, v2, :cond_3a

    iget v2, p0, Lcom/chartboost/sdk/impl/be;->v:I

    if-eq v1, v2, :cond_4

    .line 434
    :cond_3a
    iput v0, p0, Lcom/chartboost/sdk/impl/be;->u:I

    .line 435
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->v:I

    goto :goto_4
.end method

.method public d(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 249
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v4, "Unknown Webview error"

    .line 250
    :goto_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview error occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 253
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->h()V

    .line 254
    return-void

    :cond_4b
    move-object v4, p1

    .line 249
    goto :goto_c
.end method

.method public synthetic e()Lcom/chartboost/sdk/e$a;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 257
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "Unknown Webview warning message"

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview warning occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public f(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 350
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    const/4 v0, 0x1

    .line 355
    :goto_9
    return v0

    .line 352
    :cond_a
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 353
    const/4 v0, 0x0

    goto :goto_9

    .line 355
    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public h()V
    .registers 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/chartboost/sdk/e;->h()V

    .line 226
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->r()V

    .line 227
    return-void
.end method

.method public j()F
    .registers 2

    .prologue
    .line 605
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->L:F

    return v0
.end method

.method public k()F
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->M:F

    return v0
.end method

.method public l()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 500
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget v0, v0, Lcom/chartboost/sdk/impl/c;->a:I

    if-ne v0, v2, :cond_f

    .line 508
    :goto_e
    return v2

    .line 506
    :cond_f
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->d()V

    .line 507
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->h()V

    goto :goto_e
.end method

.method public m()V
    .registers 4

    .prologue
    .line 513
    invoke-super {p0}, Lcom/chartboost/sdk/e;->m()V

    .line 514
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v1, :cond_24

    .line 516
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/be$1;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/be$1;-><init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_24
    return-void
.end method

.method public n()V
    .registers 4

    .prologue
    .line 536
    invoke-super {p0}, Lcom/chartboost/sdk/e;->n()V

    .line 537
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v1, :cond_24

    .line 539
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/be$2;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/be$2;-><init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_24
    return-void
.end method

.method o()V
    .registers 5

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/be;->r:Z

    if-nez v1, :cond_1b

    .line 301
    :cond_a
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->x:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->B:I

    .line 302
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->y:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->C:I

    .line 303
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->z:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->D:I

    .line 304
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->A:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->E:I

    .line 328
    :goto_1a
    return-void

    .line 309
    :cond_1b
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 310
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be$b;->getLocationOnScreen([I)V

    .line 311
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 312
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 313
    iget v3, p0, Lcom/chartboost/sdk/impl/be;->w:I

    sub-int/2addr v1, v3

    .line 314
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be$b;->getWidth()I

    move-result v3

    .line 315
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be$b;->getHeight()I

    move-result v0

    .line 317
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->x:I

    .line 318
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->y:I

    .line 319
    add-int/2addr v2, v3

    iput v2, p0, Lcom/chartboost/sdk/impl/be;->z:I

    .line 320
    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->A:I

    .line 323
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->x:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->B:I

    .line 324
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->y:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->C:I

    .line 325
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->z:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->D:I

    .line 326
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->A:I

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->E:I

    goto :goto_1a
.end method

.method public p()Ljava/lang/String;
    .registers 5

    .prologue
    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "allowOrientationChange"

    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    .line 333
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "forceOrientation"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->H:I

    .line 334
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/be;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 332
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 369
    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v3

    .line 370
    if-eqz v3, :cond_10

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 391
    :cond_10
    :goto_10
    return-void

    .line 375
    :cond_11
    iget v2, p0, Lcom/chartboost/sdk/impl/be;->H:I

    if-ne v2, v0, :cond_19

    .line 390
    :cond_15
    :goto_15
    invoke-virtual {v3, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_10

    .line 377
    :cond_19
    iget v2, p0, Lcom/chartboost/sdk/impl/be;->H:I

    if-nez v2, :cond_1f

    move v0, v1

    .line 378
    goto :goto_15

    .line 380
    :cond_1f
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    if-eqz v2, :cond_25

    .line 381
    const/4 v0, -0x1

    goto :goto_15

    .line 383
    :cond_25
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 384
    if-ne v2, v0, :cond_36

    move v2, v0

    .line 386
    :goto_32
    if-nez v2, :cond_15

    move v0, v1

    goto :goto_15

    :cond_36
    move v2, v1

    .line 384
    goto :goto_32
.end method

.method r()V
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 406
    :cond_e
    :goto_e
    return-void

    .line 400
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/be;->F:I

    if-eq v1, v2, :cond_1c

    .line 401
    iget v1, p0, Lcom/chartboost/sdk/impl/be;->F:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 404
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/be;->G:Z

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->H:I

    goto :goto_e
.end method

.method public s()Ljava/lang/String;
    .registers 5

    .prologue
    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->u:I

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->v:I

    .line 449
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 447
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 5

    .prologue
    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->s:I

    .line 459
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->t:I

    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 458
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 5

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->o()V

    .line 472
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->x:I

    .line 473
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->y:I

    .line 474
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->z:I

    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->A:I

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 472
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 5

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->o()V

    .line 489
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->B:I

    .line 490
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->C:I

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->D:I

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->E:I

    .line 493
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 489
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .registers 3

    .prologue
    .line 554
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->o:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_10

    .line 555
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 556
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->o:I

    .line 558
    :cond_10
    return-void
.end method

.method public x()V
    .registers 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public y()Lcom/chartboost/sdk/impl/be$b;
    .registers 2

    .prologue
    .line 593
    invoke-super {p0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/be$b;

    return-object v0
.end method

.method public z()V
    .registers 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 614
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/be;->N:Z

    if-nez v0, :cond_23

    .line 615
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/be;->N:Z

    .line 619
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->c()V

    .line 622
    :cond_23
    return-void
.end method

###### Class com.chartboost.sdk.impl.be.AnonymousClass1 (com.chartboost.sdk.impl.be$1)
.class Lcom/chartboost/sdk/impl/be$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/be;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/be$b;

.field final synthetic b:Lcom/chartboost/sdk/impl/be;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$b;)V
    .registers 3

    .prologue
    .line 516
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$1;->b:Lcom/chartboost/sdk/impl/be;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be$b;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v0, :cond_2b

    .line 521
    const-string v0, "javascript:Chartboost.EventHandler.handleNativeEvent(\"onForeground\", \"\")"

    .line 522
    const-string v1, "CBWebViewProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling native to javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be$b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bd;->loadUrl(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 528
    :cond_2b
    :goto_2b
    return-void

    .line 525
    :catch_2c
    move-exception v0

    .line 526
    const-class v1, Lcom/chartboost/sdk/impl/be;

    const-string v2, "onResume Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b
.end method

###### Class com.chartboost.sdk.impl.be.AnonymousClass2 (com.chartboost.sdk.impl.be$2)
.class Lcom/chartboost/sdk/impl/be$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/be;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/be$b;

.field final synthetic b:Lcom/chartboost/sdk/impl/be;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$b;)V
    .registers 3

    .prologue
    .line 539
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$2;->b:Lcom/chartboost/sdk/impl/be;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/be$2;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 542
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$2;->a:Lcom/chartboost/sdk/impl/be$b;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$2;->a:Lcom/chartboost/sdk/impl/be$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v0, :cond_2b

    .line 543
    const-string v0, "javascript:Chartboost.EventHandler.handleNativeEvent(\"onBackground\", \"\")"

    .line 544
    const-string v1, "CBWebViewProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling native to javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$2;->a:Lcom/chartboost/sdk/impl/be$b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bd;->loadUrl(Ljava/lang/String;)V

    .line 547
    :cond_2b
    return-void
.end method

###### Class com.chartboost.sdk.impl.be.a (com.chartboost.sdk.impl.be$a)
.class Lcom/chartboost/sdk/impl/be$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/be;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/be;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$1;)V
    .registers 3

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/be$a;-><init>(Lcom/chartboost/sdk/impl/be;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/be;->r:Z

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/be;->q:J

    .line 269
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total web view load response time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    iget-wide v2, v2, Lcom/chartboost/sdk/impl/be;->q:J

    iget-object v4, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    iget-wide v4, v4, Lcom/chartboost/sdk/impl/be;->p:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_49

    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->c(Landroid/content/Context;)V

    .line 274
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->d(Landroid/content/Context;)V

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->o()V

    .line 277
    :cond_49
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/be;->r:Z

    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be;->k:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 286
    const-string v0, "Webview seems to have some issues loading html, onRecievedError callback triggered"

    .line 287
    const-string v1, "CBWebViewProtocol"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

###### Class com.chartboost.sdk.impl.be.b (com.chartboost.sdk.impl.be$b)
.class public Lcom/chartboost/sdk/impl/be$b;
.super Lcom/chartboost/sdk/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public c:Lcom/chartboost/sdk/impl/bd;

.field public d:Lcom/chartboost/sdk/impl/bc;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field final synthetic g:Lcom/chartboost/sdk/impl/be;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/be;Landroid/content/Context;Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 116
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$b;->g:Lcom/chartboost/sdk/impl/be;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/e$a;-><init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0, v11}, Lcom/chartboost/sdk/impl/be$b;->setFocusable(Z)V

    .line 120
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v7

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    .line 122
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    .line 123
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/bd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bd;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/be;->l:Landroid/content/SharedPreferences;

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V

    .line 126
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    new-instance v0, Lcom/chartboost/sdk/impl/be$a;

    invoke-direct {v0, p1, v3}, Lcom/chartboost/sdk/impl/be$a;-><init>(Lcom/chartboost/sdk/impl/be;Lcom/chartboost/sdk/impl/be$1;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bd;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    new-instance v0, Lcom/chartboost/sdk/impl/bc;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    iget-object v6, p1, Lcom/chartboost/sdk/impl/be;->a:Landroid/os/Handler;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/bc;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/chartboost/sdk/impl/bd;Lcom/chartboost/sdk/impl/be;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bc;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->d:Lcom/chartboost/sdk/impl/bc;

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->d:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bd;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 129
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->setWebContentsDebuggingEnabled(Z)V

    .line 132
    :cond_7c
    iget-object v4, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/be;->n:Ljava/lang/String;

    const-string v7, "text/html"

    const-string v8, "utf-8"

    move-object v6, p3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bd;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1, v11}, Lcom/chartboost/sdk/impl/bd;->setBackgroundColor(I)V

    .line 144
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be$b;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/be$b;->addView(Landroid/view/View;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/be;->p:J

    .line 151
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_ed

    .line 152
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/be;->F:I

    .line 157
    :goto_d5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Lcom/chartboost/sdk/impl/bd;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/o;->a(Landroid/webkit/WebView;Ljava/util/HashSet;)V

    .line 160
    iget-object v0, p1, Lcom/chartboost/sdk/impl/be;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/be$b$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/be$b$1;-><init>(Lcom/chartboost/sdk/impl/be$b;Lcom/chartboost/sdk/impl/be;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void

    .line 154
    :cond_ed
    iput v10, p1, Lcom/chartboost/sdk/impl/be;->F:I

    goto :goto_d5
.end method


# virtual methods
.method protected a(II)V
    .registers 3

    .prologue
    .line 174
    return-void
.end method

###### Class com.chartboost.sdk.impl.be.b.AnonymousClass1 (com.chartboost.sdk.impl.be$b$1)
.class Lcom/chartboost/sdk/impl/be$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/be$b;-><init>(Lcom/chartboost/sdk/impl/be;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/be;

.field final synthetic b:Lcom/chartboost/sdk/impl/be$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/be$b;Lcom/chartboost/sdk/impl/be;)V
    .registers 3

    .prologue
    .line 160
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$b$1;->b:Lcom/chartboost/sdk/impl/be$b;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/be$b$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b$1;->b:Lcom/chartboost/sdk/impl/be$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be$b;->g:Lcom/chartboost/sdk/impl/be;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/be;->r:Z

    if-nez v0, :cond_18

    .line 164
    const-string v0, "CBWebViewProtocol"

    const-string v1, "Webview seems to be taking more time loading the html content, so closing the view."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b$1;->b:Lcom/chartboost/sdk/impl/be$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be$b;->g:Lcom/chartboost/sdk/impl/be;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 167
    :cond_18
    return-void
.end method
