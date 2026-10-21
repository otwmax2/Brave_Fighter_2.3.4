###### Class com.ironsource.sdk.controller.ControllerView (com.ironsource.sdk.controller.ControllerView)
.class public Lcom/ironsource/sdk/controller/ControllerView;
.super Landroid/widget/FrameLayout;
.source "ControllerView.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerView;->setClickable(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getWindowDecorViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private addViewToWindow()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerView$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerView$1;-><init>(Lcom/ironsource/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method private getNavigationBarPadding()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    :try_start_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-le v5, v6, :cond_3f

    .line 167
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v2, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v3, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 174
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v1

    .line 175
    .local v1, "orientation":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_40

    .line 176
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_3f

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v4

    .line 183
    .end local v1    # "orientation":I
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .end local v3    # "visibleFrame":Landroid/graphics/Rect;
    :cond_3f
    :goto_3f
    return v4

    .line 178
    .restart local v1    # "orientation":I
    .restart local v2    # "screenRect":Landroid/graphics/Rect;
    .restart local v3    # "visibleFrame":Landroid/graphics/Rect;
    :cond_40
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_3f

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4b} :catch_4e

    sub-int v4, v5, v4

    goto :goto_3f

    .line 181
    .end local v1    # "orientation":I
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .end local v3    # "visibleFrame":Landroid/graphics/Rect;
    :catch_4e
    move-exception v5

    goto :goto_3f
.end method

.method private getStatusBarHeight()I
    .registers 7

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_21

    .line 149
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "resourceId":I
    if-lez v0, :cond_21

    .line 151
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result v1

    .line 156
    .end local v0    # "resourceId":I
    :cond_21
    :goto_21
    return v1

    .line 154
    :catch_22
    move-exception v2

    goto :goto_21
.end method

.method private getStatusBarPadding()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_17

    const/4 v1, 0x1

    .line 135
    .local v1, "isFullScreen":Z
    :goto_14
    if-eqz v1, :cond_19

    .line 139
    :goto_16
    return v3

    .end local v1    # "isFullScreen":Z
    :cond_17
    move v1, v3

    .line 134
    goto :goto_14

    .line 138
    .restart local v1    # "isFullScreen":Z
    :cond_19
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getStatusBarHeight()I

    move-result v2

    .line 139
    .local v2, "top":I
    if-lez v2, :cond_21

    .end local v2    # "top":I
    :goto_1f
    move v3, v2

    goto :goto_16

    .restart local v2    # "top":I
    :cond_21
    move v2, v3

    goto :goto_1f
.end method

.method private getWindowDecorViewGroup()Landroid/view/ViewGroup;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 112
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private removeViewFromWindow()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerView$2;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerView$2;-><init>(Lcom/ironsource/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private setPaddingByOrientation(II)V
    .registers 6
    .param p1, "statusBarHeight"    # I
    .param p2, "navigationBarSize"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 120
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/ironsource/sdk/controller/ControllerView;->setPadding(IIII)V

    .line 128
    .end local v0    # "orientation":I
    :cond_12
    :goto_12
    return-void

    .line 123
    .restart local v0    # "orientation":I
    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/ironsource/sdk/controller/ControllerView;->setPadding(IIII)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_12

    .line 127
    .end local v0    # "orientation":I
    :catch_1c
    move-exception v1

    goto :goto_12
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->resume()V

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public onBackButtonPressed()Z
    .registers 3

    .prologue
    .line 200
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->removeViewFromWindow()V

    .line 191
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->pause()V

    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_20

    .line 66
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->removeVideoEventsListener()V

    .line 70
    :cond_20
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerView;->removeAllViews()V

    .line 71
    return-void
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 196
    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 4
    .param p1, "webView"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 40
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->requestFocus()Z

    .line 43
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getStatusBarPadding()I

    move-result v0

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getNavigationBarPadding()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/sdk/controller/ControllerView;->setPaddingByOrientation(II)V

    .line 47
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->addViewToWindow()V

    .line 48
    return-void
.end method

###### Class com.ironsource.sdk.controller.ControllerView.AnonymousClass1 (com.ironsource.sdk.controller.ControllerView$1)
.class Lcom/ironsource/sdk/controller/ControllerView$1;
.super Ljava/lang/Object;
.source "ControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerView;->addViewToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerView;->access$000(Lcom/ironsource/sdk/controller/ControllerView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 82
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_d

    .line 83
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_d
    return-void
.end method

###### Class com.ironsource.sdk.controller.ControllerView.AnonymousClass2 (com.ironsource.sdk.controller.ControllerView$2)
.class Lcom/ironsource/sdk/controller/ControllerView$2;
.super Ljava/lang/Object;
.source "ControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerView;->removeViewFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView$2;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView$2;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerView;->access$000(Lcom/ironsource/sdk/controller/ControllerView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 98
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_d

    .line 99
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView$2;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_d
    return-void
.end method
