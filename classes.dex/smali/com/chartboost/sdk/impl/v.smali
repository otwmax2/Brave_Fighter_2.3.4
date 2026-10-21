###### Class com.chartboost.sdk.impl.v (com.chartboost.sdk.impl.v)
.class public Lcom/chartboost/sdk/impl/v;
.super Lcom/chartboost/sdk/impl/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/v$a;
    }
.end annotation


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:I

.field protected E:Lcom/chartboost/sdk/Libraries/h;

.field protected F:Lcom/chartboost/sdk/Libraries/h;

.field protected G:Lcom/chartboost/sdk/Libraries/h;

.field protected H:Lcom/chartboost/sdk/Libraries/h;

.field protected I:Lcom/chartboost/sdk/Libraries/h;

.field protected J:Lcom/chartboost/sdk/Libraries/h;

.field protected K:Lcom/chartboost/sdk/Libraries/h;

.field protected L:Lcom/chartboost/sdk/Libraries/h;

.field protected M:Z

.field protected N:Z

.field protected O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field final q:Lcom/chartboost/sdk/Libraries/f;

.field protected r:I

.field protected s:I

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:I

.field protected w:I

.field x:Lorg/json/JSONObject;

.field protected y:Z

.field protected z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-direct {p0, p1, p3, p4}, Lcom/chartboost/sdk/impl/u;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 56
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->r:I

    .line 61
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->P:Z

    .line 62
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 63
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->w:I

    .line 64
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->Q:Z

    .line 65
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->R:Z

    .line 75
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->C:Z

    .line 76
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->D:I

    .line 87
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->M:Z

    .line 89
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->N:Z

    .line 90
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->O:Z

    .line 576
    iput-object p2, p0, Lcom/chartboost/sdk/impl/v;->q:Lcom/chartboost/sdk/Libraries/f;

    .line 577
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->r:I

    .line 579
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    .line 580
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    .line 581
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->G:Lcom/chartboost/sdk/Libraries/h;

    .line 582
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 583
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 584
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 585
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 586
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 588
    iput v1, p0, Lcom/chartboost/sdk/impl/v;->s:I

    .line 589
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/v;->Q:Z

    .line 742
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 628
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/u;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 670
    :goto_8
    return v0

    .line 631
    :cond_9
    const-string v2, "ux"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    .line 632
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    if-nez v2, :cond_1d

    .line 633
    new-array v2, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    .line 635
    :cond_1d
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->d:Lorg/json/JSONObject;

    const-string v3, "video-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->d:Lorg/json/JSONObject;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 636
    :cond_31
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->i:Z

    .line 638
    :cond_33
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "replay-portrait"

    .line 639
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-click-button"

    .line 640
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-reward-icon"

    .line 641
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-button"

    .line 642
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->G:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-button"

    .line 643
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->H:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-icon"

    .line 644
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->L:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-reward-icon"

    .line 645
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 646
    :cond_83
    const-string v1, "InterstitialVideoViewProtocol"

    const-string v2, "Error while downloading the assets"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/v;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_8

    .line 651
    :cond_91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v2, "video-controls-togglable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->y:Z

    .line 652
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->N:Z

    .line 653
    const-string v0, "preroll_popup_fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->O:Z

    .line 655
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f6

    .line 656
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 657
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 659
    if-eqz v2, :cond_d6

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d6

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 660
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->A:Z

    .line 661
    :cond_d6
    if-eqz v0, :cond_ea

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ea

    const-string v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 662
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->z:Z

    .line 663
    :cond_ea
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 664
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->B:Z

    :cond_f6
    move v0, v1

    .line 670
    goto/16 :goto_8
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .registers 4

    .prologue
    .line 597
    new-instance v0, Lcom/chartboost/sdk/impl/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;Lcom/chartboost/sdk/impl/v$1;)V

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u;->d()V

    .line 687
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 688
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 689
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 690
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 691
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 692
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 693
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->H:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 694
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 695
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    .line 696
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    .line 697
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 698
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 699
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 700
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->G:Lcom/chartboost/sdk/Libraries/h;

    .line 701
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 702
    iput-object v1, p0, Lcom/chartboost/sdk/impl/v;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 703
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/e$a;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->z:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 677
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_17

    .line 678
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->z:Z

    .line 681
    :cond_17
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u;->i()V

    .line 682
    return-void
.end method

.method public j()F
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Lcom/chartboost/sdk/impl/v;->w:I

    int-to-float v0, v0

    return v0
.end method

.method public k()F
    .registers 2

    .prologue
    .line 764
    iget v0, p0, Lcom/chartboost/sdk/impl/v;->v:I

    int-to-float v0, v0

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v$a;->d()V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .registers 3

    .prologue
    .line 608
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u;->m()V

    .line 609
    iget v0, p0, Lcom/chartboost/sdk/impl/v;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->P:Z

    if-eqz v0, :cond_24

    .line 610
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->b()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/v;->v:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/au$a;->a(I)V

    .line 611
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->e()V

    .line 613
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->P:Z

    .line 615
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 619
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u;->n()V

    .line 620
    iget v0, p0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->P:Z

    if-nez v0, :cond_17

    .line 621
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/v;->P:Z

    .line 622
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->g()V

    .line 624
    :cond_17
    return-void
.end method

.method public o()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 592
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public p()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 706
    iget v1, p0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public q()Lcom/chartboost/sdk/impl/v$a;
    .registers 2

    .prologue
    .line 711
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/v$a;

    return-object v0
.end method

.method protected r()V
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 716
    return-void
.end method

.method protected s()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 719
    .line 720
    iget v2, p0, Lcom/chartboost/sdk/impl/v;->r:I

    packed-switch v2, :pswitch_data_2a

    move v0, v1

    .line 733
    :cond_8
    :goto_8
    :pswitch_8
    return v0

    .line 726
    :pswitch_9
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/v;->O:Z

    if-nez v2, :cond_17

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_17
    move v0, v1

    goto :goto_8

    .line 730
    :pswitch_19
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-nez v2, :cond_27

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_27
    move v0, v1

    goto :goto_8

    .line 720
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_19
        :pswitch_8
    .end packed-switch
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->Q:Z

    return v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->R:Z

    return v0
.end method

.method public v()V
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 751
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 754
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/v;->R:Z

    .line 755
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 756
    return-void
.end method

###### Class com.chartboost.sdk.impl.v.AnonymousClass1 (com.chartboost.sdk.impl.v$1)
.class synthetic Lcom/chartboost/sdk/impl/v$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.chartboost.sdk.impl.v.a (com.chartboost.sdk.impl.v$a)
.class public Lcom/chartboost/sdk/impl/v$a;
.super Lcom/chartboost/sdk/impl/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final h:Lcom/chartboost/sdk/impl/ab;

.field i:Lcom/chartboost/sdk/impl/y;

.field final j:Lcom/chartboost/sdk/impl/t;

.field final k:Lcom/chartboost/sdk/impl/w;

.field final synthetic l:Lcom/chartboost/sdk/impl/v;

.field private final m:Lcom/chartboost/sdk/impl/ay;

.field private n:Landroid/view/View;

.field private final o:Lcom/chartboost/sdk/impl/ay;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x2

    const/16 v5, 0x8

    .line 103
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/u$a;-><init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v3

    .line 106
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_2a

    .line 108
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 113
    :cond_2a
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_47

    .line 114
    new-instance v0, Lcom/chartboost/sdk/impl/y;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/y;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/y;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/y;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 119
    :cond_47
    new-instance v0, Lcom/chartboost/sdk/impl/ab;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ab;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ab;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->a(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ab;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 124
    new-instance v0, Lcom/chartboost/sdk/impl/t;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/t;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/t;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/t;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_240

    .line 129
    new-instance v0, Lcom/chartboost/sdk/impl/w;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/w;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/w;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/w;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 137
    :goto_99
    new-instance v0, Lcom/chartboost/sdk/impl/v$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lcom/chartboost/sdk/impl/v$a$1;-><init>(Lcom/chartboost/sdk/impl/v$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ay;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 152
    new-instance v0, Lcom/chartboost/sdk/impl/v$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lcom/chartboost/sdk/impl/v$a$2;-><init>(Lcom/chartboost/sdk/impl/v$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ay;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    const-string v3, "CBClose"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ay;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v3, "progress"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    iget-object v3, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v4, "video-controls-background"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 165
    if-eqz v0, :cond_137

    const-string v4, "background-color"

    .line 166
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_137

    const-string v4, "border-color"

    .line 167
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_137

    const-string v4, "progress-color"

    .line 168
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_137

    const-string v4, "radius"

    .line 169
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_137

    .line 170
    iput-boolean v2, p1, Lcom/chartboost/sdk/impl/v;->M:Z

    .line 171
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ab;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v4

    .line 172
    const-string v5, "background-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/x;->a(I)V

    .line 173
    const-string v5, "border-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/x;->b(I)V

    .line 174
    const-string v5, "progress-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/x;->c(I)V

    .line 175
    const-string v5, "radius"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/x;->b(F)V

    .line 178
    :cond_137
    if-eqz v3, :cond_150

    const-string v0, "color"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_150

    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ab;->a(I)V

    .line 182
    :cond_150
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_175

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->A:Z

    if-eqz v0, :cond_175

    .line 183
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v3, "post-video-toaster"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_175

    .line 185
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tagline"

    .line 186
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_175
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_19e

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->z:Z

    if-eqz v0, :cond_19e

    .line 191
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v3, "confirmation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_19e

    .line 193
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    const-string v4, "text"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    .line 194
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 193
    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;I)V

    .line 198
    :cond_19e
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_1e6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->B:Z

    if-eqz v0, :cond_1e6

    .line 199
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "post-video-reward-toaster"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_245

    const-string v0, "position"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "inside-top"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_245

    move v0, v1

    .line 203
    :goto_1c5
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/w;->a(I)V

    .line 205
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    if-eqz v3, :cond_248

    const-string v0, "text"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d4
    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/w;->a(Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/v;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 210
    :cond_1e6
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->g()Lorg/json/JSONObject;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_1f4

    const-string v0, "video-click-button"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 212
    :cond_1f4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->d()V

    .line 215
    :cond_1f9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v5, "video-progress-timer-enabled"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ab;->d(Z)V

    .line 216
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->O:Z

    if-nez v0, :cond_20e

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_214

    .line 217
    :cond_20e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->f:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_214
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->a()I

    move-result v0

    .line 219
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 220
    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_24b

    const-string v0, "video-portrait"

    :goto_222
    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_24e

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_230
    iput-object v0, p1, Lcom/chartboost/sdk/impl/v;->u:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_251

    .line 223
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/v;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 237
    :goto_23f
    return-void

    .line 133
    :cond_240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    goto/16 :goto_99

    :cond_245
    move v0, v2

    .line 201
    goto/16 :goto_1c5

    .line 205
    :cond_248
    const-string v0, ""

    goto :goto_1d4

    .line 220
    :cond_24b
    const-string v0, "video-landscape"

    goto :goto_222

    .line 221
    :cond_24e
    const-string v0, ""

    goto :goto_230

    .line 227
    :cond_251
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    if-nez v0, :cond_25f

    .line 228
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->q:Lcom/chartboost/sdk/Libraries/f;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/v;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    .line 229
    :cond_25f
    iget-object v0, p1, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    if-nez v0, :cond_269

    .line 230
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/v;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_23f

    .line 235
    :cond_269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/v;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ab;->a(Ljava/lang/String;)V

    goto :goto_23f
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;Lcom/chartboost/sdk/impl/v$1;)V
    .registers 4

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V

    return-void
.end method

.method private a(IZ)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iput p1, v0, Lcom/chartboost/sdk/impl/v;->r:I

    .line 416
    packed-switch p1, :pswitch_data_16e

    .line 463
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v$a;->f()Z

    move-result v0

    .line 464
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/v$a;->d(Z)Lcom/chartboost/sdk/impl/ay;

    move-result-object v3

    .line 465
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 467
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/v$a;->d(Z)Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 469
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 472
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->O:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_42

    .line 473
    :cond_32
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v0

    if-nez v0, :cond_164

    move v0, v1

    :goto_3d
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 474
    :cond_42
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v0

    if-nez v0, :cond_167

    move v0, v1

    :goto_4d
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 475
    if-eqz p1, :cond_16a

    :goto_54
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/v$a;->a(Z)V

    .line 476
    return-void

    .line 418
    :pswitch_58
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v0

    if-nez v0, :cond_aa

    move v0, v1

    :goto_63
    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 419
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_77

    .line 420
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 421
    :cond_77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_84

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 423
    :cond_84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ab;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_aa
    move v0, v2

    .line 418
    goto :goto_63

    .line 431
    :pswitch_ac
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 432
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_c2

    .line 433
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 434
    :cond_c2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_cf

    .line 435
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 436
    :cond_cf
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 439
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ab;->setEnabled(Z)V

    goto/16 :goto_a

    .line 444
    :pswitch_f5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_10b

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 447
    :cond_10b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_118

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 449
    :cond_118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 450
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 451
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 452
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->A:Z

    if-eqz v0, :cond_162

    move v0, v1

    .line 453
    :goto_141
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;Z)V

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ab;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->C:Z

    if-eqz v0, :cond_a

    .line 458
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/v$a;->e(Z)V

    goto/16 :goto_a

    :cond_162
    move v0, v2

    .line 452
    goto :goto_141

    :cond_164
    move v0, v2

    .line 473
    goto/16 :goto_3d

    :cond_167
    move v0, v2

    .line 474
    goto/16 :goto_4d

    :cond_16a
    move v1, v2

    .line 475
    goto/16 :goto_54

    .line 416
    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_ac
        :pswitch_f5
    .end packed-switch
.end method

.method private e(Z)V
    .registers 6

    .prologue
    .line 403
    if-eqz p1, :cond_17

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/w;->a(Z)V

    .line 407
    :goto_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/v$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/v$a$4;-><init>(Lcom/chartboost/sdk/impl/v$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    return-void

    .line 406
    :cond_17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/w;->setVisibility(I)V

    goto :goto_8
.end method


# virtual methods
.method protected a(FFFF)V
    .registers 7

    .prologue
    .line 535
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-nez v0, :cond_14

    .line 542
    :cond_13
    :goto_13
    return-void

    .line 539
    :cond_14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/v$a;->b(FFFF)V

    goto :goto_13
.end method

.method protected a(II)V
    .registers 14

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/u$a;->a(II)V

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/v$a;->a(IZ)V

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->a()I

    move-result v0

    .line 270
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    .line 272
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    iget-object v8, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    if-eqz v2, :cond_138

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    :goto_48
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v1, v9}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 286
    iget-object v8, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    if-eqz v2, :cond_13e

    const-string v1, "replay-portrait"

    :goto_53
    invoke-virtual {v8, v1}, Lcom/chartboost/sdk/impl/v;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 287
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v8, v8

    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 288
    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    add-float/2addr v0, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 289
    const/4 v1, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 290
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->bringToFront()V

    .line 292
    if-eqz v2, :cond_142

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->F:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 297
    :goto_b7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v1

    if-nez v1, :cond_14d

    .line 300
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 301
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 302
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 303
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 306
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 307
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 308
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 322
    :goto_e7
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 323
    const/16 v1, 0x48

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 324
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 325
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->N:Z

    if-eqz v0, :cond_107

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_115

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->j:Lcom/chartboost/sdk/impl/t;

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_132

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->i:Lcom/chartboost/sdk/impl/y;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/y;->a()V

    .line 337
    :cond_132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->a()V

    .line 338
    return-void

    .line 285
    :cond_138
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_48

    .line 286
    :cond_13e
    const-string v1, "replay-landscape"

    goto/16 :goto_53

    .line 295
    :cond_142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->m:Lcom/chartboost/sdk/impl/ay;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->E:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    goto/16 :goto_b7

    .line 311
    :cond_14d
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    if-eqz v2, :cond_178

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 314
    :goto_15a
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v1, v9}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 315
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 316
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 317
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 318
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/ay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    goto/16 :goto_e7

    .line 313
    :cond_178
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->m:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_15a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->n()V

    .line 503
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u$a;->b()V

    .line 504
    return-void
.end method

.method protected b(FFFF)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v4, :cond_b

    .line 546
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/v$a;->c(Z)V

    .line 548
    :cond_b
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "x"

    .line 549
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "y"

    .line 550
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "w"

    .line 551
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    .line 552
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 548
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/v;->b(Lorg/json/JSONObject;)Z

    .line 555
    return-void
.end method

.method b(Z)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v1, :cond_9

    .line 374
    :cond_8
    :goto_8
    return-void

    .line 344
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->z:Z

    if-eqz v0, :cond_13

    .line 346
    invoke-direct {p0, v2, p1}, Lcom/chartboost/sdk/impl/v$a;->a(IZ)V

    goto :goto_8

    .line 349
    :cond_13
    invoke-direct {p0, v1, p1}, Lcom/chartboost/sdk/impl/v$a;->a(IZ)V

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "timer"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-ge v0, v1, :cond_88

    if-eqz v3, :cond_88

    const-string v0, "delay"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 354
    const-string v4, "InterstitialVideoViewProtocol"

    const-string v5, "controls starting %s, setting timer"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v0, :cond_85

    const-string v0, "visible"

    :goto_42
    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/v;->y:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ab;->b(Z)V

    .line 356
    const-wide v4, 0x408f400000000000L    # 1000.0

    const-string v0, "delay"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    new-instance v5, Lcom/chartboost/sdk/impl/v$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/v$a$3;-><init>(Lcom/chartboost/sdk/impl/v$a;)V

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 371
    :goto_72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->e()V

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-gt v0, v1, :cond_8

    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->f()V

    goto :goto_8

    .line 354
    :cond_85
    const-string v0, "hidden"

    goto :goto_42

    .line 368
    :cond_88
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-nez v0, :cond_95

    move v0, v1

    :goto_91
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/ab;->b(Z)V

    goto :goto_72

    :cond_95
    move v0, v2

    goto :goto_91
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Lcom/chartboost/sdk/impl/u$a;->c()V

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->z:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    .line 244
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->o()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 245
    :cond_18
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/v$a;->b(Z)V

    .line 249
    :goto_1b
    return-void

    .line 247
    :cond_1c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/v$a;->a(IZ)V

    goto :goto_1b
.end method

.method c(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->f()V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-eq v0, v2, :cond_d

    .line 400
    :cond_c
    :goto_c
    return-void

    .line 385
    :cond_d
    if-eqz p1, :cond_c

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-ge v0, v2, :cond_44

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->x:Lorg/json/JSONObject;

    const-string v1, "post-video-reward-toaster"

    .line 388
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->B:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 390
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 391
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 392
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/v$a;->e(Z)V

    .line 394
    :cond_44
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/v$a;->a(IZ)V

    .line 396
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 397
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v$a;->requestLayout()V

    goto :goto_c
.end method

.method public d(Z)Lcom/chartboost/sdk/impl/ay;
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->s()Z

    move-result v0

    if-nez v0, :cond_17

    if-nez p1, :cond_17

    :cond_14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->o:Lcom/chartboost/sdk/impl/ay;

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->d:Lcom/chartboost/sdk/impl/ay;

    goto :goto_16
.end method

.method protected d()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 508
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget v0, v0, Lcom/chartboost/sdk/impl/c;->a:I

    if-ne v0, v1, :cond_12

    .line 531
    :goto_11
    return-void

    .line 513
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v1, :cond_36

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->c(Z)V

    .line 515
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->h()V

    .line 516
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-ge v0, v1, :cond_36

    .line 517
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v1, v0, Lcom/chartboost/sdk/impl/v;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->s:I

    .line 518
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 521
    :cond_36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/v$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/v$a$5;-><init>(Lcom/chartboost/sdk/impl/v$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/v$a;->c(Z)V

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ab;->h()V

    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v1, v0, Lcom/chartboost/sdk/impl/v;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->s:I

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-gt v0, v2, :cond_2c

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->u()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->v:I

    if-lt v0, v2, :cond_2c

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 259
    :cond_2c
    return-void
.end method

.method protected f()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 479
    .line 480
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v2, :cond_72

    .line 482
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->s:I

    if-ge v0, v2, :cond_72

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    .line 484
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "portrait"

    :goto_27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/v;->g()Lorg/json/JSONObject;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_6b

    const-string v3, "delay"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 487
    :goto_48
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_6e

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 488
    :goto_54
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iput v0, v3, Lcom/chartboost/sdk/impl/v;->D:I

    .line 489
    if-ltz v0, :cond_70

    .line 490
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ab;->b()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/au$a;->d()I

    move-result v3

    if-le v0, v3, :cond_72

    move v0, v1

    .line 497
    :goto_67
    return v0

    .line 484
    :cond_68
    const-string v0, "landscape"

    goto :goto_27

    .line 486
    :cond_6b
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_48

    .line 487
    :cond_6e
    const/4 v0, -0x1

    goto :goto_54

    :cond_70
    move v0, v1

    .line 493
    goto :goto_67

    :cond_72
    move v0, v2

    goto :goto_67
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/v;->z:Z

    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->b(Z)V

    .line 561
    return-void
.end method

###### Class com.chartboost.sdk.impl.v.a.AnonymousClass1 (com.chartboost.sdk.impl.v$a$1)
.class Lcom/chartboost/sdk/impl/v$a$1;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v;

.field final synthetic b:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .registers 4

    .prologue
    .line 137
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/v$a$1;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/w;->a(Z)V

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget v0, v0, Lcom/chartboost/sdk/impl/v;->r:I

    if-ne v0, v3, :cond_21

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/v$a;->c(Z)V

    .line 145
    :cond_21
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/v$a;->b(Z)V

    .line 146
    return-void
.end method

###### Class com.chartboost.sdk.impl.v.a.AnonymousClass2 (com.chartboost.sdk.impl.v$a$2)
.class Lcom/chartboost/sdk/impl/v$a$2;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v;

.field final synthetic b:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .registers 4

    .prologue
    .line 152
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$2;->b:Lcom/chartboost/sdk/impl/v$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/v$a$2;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$2;->b:Lcom/chartboost/sdk/impl/v$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v$a;->d()V

    .line 156
    return-void
.end method

###### Class com.chartboost.sdk.impl.v.a.AnonymousClass3 (com.chartboost.sdk.impl.v$a$3)
.class Lcom/chartboost/sdk/impl/v$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 359
    const-string v3, "InterstitialVideoViewProtocol"

    const-string v4, "controls %s automatically from timer"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v0, :cond_41

    const-string v0, "hidden"

    :goto_12
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-nez v0, :cond_44

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0, v1}, Lcom/chartboost/sdk/impl/ab;->a(ZZ)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    monitor-enter v1

    .line 363
    :try_start_32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_46

    .line 365
    return-void

    .line 359
    :cond_41
    const-string v0, "shown"

    goto :goto_12

    :cond_44
    move v0, v2

    .line 360
    goto :goto_28

    .line 364
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

###### Class com.chartboost.sdk.impl.v.a.AnonymousClass4 (com.chartboost.sdk.impl.v$a$4)
.class Lcom/chartboost/sdk/impl/v$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;)V
    .registers 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$4;->a:Lcom/chartboost/sdk/impl/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$4;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/w;->a(Z)V

    .line 410
    return-void
.end method

###### Class com.chartboost.sdk.impl.v.a.AnonymousClass5 (com.chartboost.sdk.impl.v$a$5)
.class Lcom/chartboost/sdk/impl/v$a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$5;->a:Lcom/chartboost/sdk/impl/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$5;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->h()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 528
    :goto_7
    return-void

    .line 525
    :catch_8
    move-exception v0

    .line 526
    const-class v1, Lcom/chartboost/sdk/impl/v$a;

    const-string v2, "onCloseButton Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7
.end method
