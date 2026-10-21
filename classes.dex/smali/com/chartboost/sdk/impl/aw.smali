###### Class com.chartboost.sdk.impl.aw (com.chartboost.sdk.impl.aw)
.class public final Lcom/chartboost/sdk/impl/aw;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/aw;->a:Z

    .line 15
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aw;->setFocusable(Z)V

    .line 16
    const/high16 v0, -0x56000000

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aw;->setBackgroundColor(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/av;Lcom/chartboost/sdk/Model/a;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 21
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/aw;->a:Z

    if-nez v0, :cond_a

    .line 22
    invoke-virtual {p1, v1, p0, p2}, Lcom/chartboost/sdk/impl/av;->a(ZLandroid/view/View;Lcom/chartboost/sdk/Model/a;)V

    .line 23
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/aw;->a:Z

    .line 25
    :cond_a
    return-void
.end method
