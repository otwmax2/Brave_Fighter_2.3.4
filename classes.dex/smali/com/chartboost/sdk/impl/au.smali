###### Class com.chartboost.sdk.impl.au (com.chartboost.sdk.impl.au)
.class public Lcom/chartboost/sdk/impl/au;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/au$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->b()V

    .line 41
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 49
    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/au;->b:Z

    .line 50
    const-string v1, "VideoInit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choosing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/au;->b:Z

    if-eqz v0, :cond_5e

    const-string v0, "texture"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " solution for video playback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/au;->b:Z

    if-eqz v1, :cond_61

    .line 53
    new-instance v1, Lcom/chartboost/sdk/impl/at;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/at;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    .line 56
    :goto_41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    const-string v1, "CBVideo"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/au;->b:Z

    if-nez v0, :cond_5d

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 63
    :cond_5d
    return-void

    .line 50
    :cond_5e
    const-string v0, "surface"

    goto :goto_17

    .line 55
    :cond_61
    new-instance v1, Lcom/chartboost/sdk/impl/as;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/as;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    goto :goto_41
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/au$a;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->a:Landroid/view/View;

    check-cast v0, Lcom/chartboost/sdk/impl/au$a;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/au$a;->a(II)V

    .line 77
    return-void
.end method

###### Class com.chartboost.sdk.impl.au.a (com.chartboost.sdk.impl.au$a)
.class public interface abstract Lcom/chartboost/sdk/impl/au$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public abstract a(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract a(Landroid/media/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract a(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract a(Landroid/net/Uri;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method
