###### Class com.chartboost.sdk.impl.bb (com.chartboost.sdk.impl.bb)
.class public Lcom/chartboost/sdk/impl/bb;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/e$a;

.field private b:Lcom/chartboost/sdk/impl/aw;

.field private c:Lcom/chartboost/sdk/impl/aw;

.field private final d:Lcom/chartboost/sdk/Model/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Model/c;

    .line 25
    iget-object v0, p2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_35

    .line 26
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/aw;

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/aw;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/aw;

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/aw;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/aw;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aw;->setVisibility(I)V

    .line 34
    :cond_35
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    if-nez v0, :cond_20

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->k()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    if-eqz v0, :cond_20

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->a()V

    .line 45
    :cond_20
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public c()Lcom/chartboost/sdk/impl/aw;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/impl/aw;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    return-object v0
.end method

.method public e()Lcom/chartboost/sdk/Model/c;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->d:Lcom/chartboost/sdk/Model/c;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bb;->performClick()Z

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method
