###### Class com.chartboost.sdk.impl.ax (com.chartboost.sdk.impl.ax)
.class public Lcom/chartboost/sdk/impl/ax;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field private b:Lcom/chartboost/sdk/Libraries/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 19
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 78
    :goto_2f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 81
    :cond_3d
    return-void

    .line 77
    :cond_3e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    goto :goto_2f
.end method

.method public a(Lcom/chartboost/sdk/Libraries/h;)V
    .registers 4

    .prologue
    .line 31
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, p1, :cond_d

    .line 37
    :cond_c
    :goto_c
    return-void

    .line 34
    :cond_d
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 35
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ax;->a(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "adImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 44
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method
