###### Class com.ironsource.sdk.controller.ControllerActivity (com.ironsource.sdk.controller.ControllerActivity)
.class public Lcom/ironsource/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
.implements Lcom/ironsource/sdk/controller/VideoEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEB_VIEW_VIEW_ID:I = 0x1


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private calledFromOnCreate:Z

.field public currentRequestedRotation:I

.field private final decorViewSettings:Ljava/lang/Runnable;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mIsImmersive:Z

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 49
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$1;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScreenOn()V
    .registers 2

    .prologue
    .line 327
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$4;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 175
    if-eqz p1, :cond_d

    .line 177
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    .line 197
    :cond_d
    :goto_d
    return-void

    .line 181
    :cond_e
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 183
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    goto :goto_d

    .line 185
    :cond_1a
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 187
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->isDeviceOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_d

    .line 192
    :cond_2d
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 193
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_d
.end method

.method private hideActivityTitle()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    .line 309
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 312
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 314
    return-void
.end method

.method private initOrientationState()V
    .registers 6

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "orientation_set_flag"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "orientation":Ljava/lang/String;
    const-string v3, "rotation_set_flag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, "rotation":I
    invoke-direct {p0, v1, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method private keepScreenOn()V
    .registers 2

    .prologue
    .line 317
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$3;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method private removeWebViewContainerView()V
    .registers 4

    .prologue
    .line 263
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_18

    .line 264
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 265
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_18

    .line 267
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "view":Landroid/view/View;
    :cond_18
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 341
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 343
    .local v0, "rotation":I
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez v0, :cond_1b

    .line 346
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 360
    :goto_1a
    return-void

    .line 348
    :cond_1b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 349
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_1a

    .line 351
    :cond_29
    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    .line 352
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_1a

    .line 354
    :cond_37
    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 355
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_1a

    .line 358
    :cond_45
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private setInitiatePortraitOrientation()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 367
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 369
    .local v0, "rotation":I
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    if-nez v0, :cond_19

    .line 372
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 386
    :goto_18
    return-void

    .line 374
    :cond_19
    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 375
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_18

    .line 377
    :cond_29
    if-ne v0, v3, :cond_36

    .line 378
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_18

    .line 380
    :cond_36
    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 381
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_18

    .line 384
    :cond_44
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onBackPressed()V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 291
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    .line 295
    .local v0, "isHandled":Z
    if-nez v0, :cond_14

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 298
    :cond_14
    return-void
.end method

.method public onCloseRequested()V
    .registers 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 275
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    :try_start_3
    sget-object v5, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 87
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivtiyStatusBar()V

    .line 90
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v2

    .line 91
    .local v2, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 92
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setId(I)V

    .line 95
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 96
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "productType"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    .line 100
    const-string v5, "immersive"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 102
    iget-boolean v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v5, :cond_58

    .line 104
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/ironsource/sdk/controller/ControllerActivity$2;

    invoke-direct {v6, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$2;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 114
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    :cond_58
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_84

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 119
    if-eqz p1, :cond_b5

    .line 120
    const-string v5, "state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/ironsource/sdk/data/AdUnitsState;

    .line 121
    .local v3, "state":Lcom/ironsource/sdk/data/AdUnitsState;
    if-eqz v3, :cond_81

    .line 122
    iput-object v3, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 123
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v5, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 125
    :cond_81
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 132
    .end local v3    # "state":Lcom/ironsource/sdk/data/AdUnitsState;
    :cond_84
    :goto_84
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 133
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v5, v6}, Lcom/ironsource/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 139
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 140
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_b1

    .line 142
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 143
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 144
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 148
    :cond_b1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->initOrientationState()V

    .line 154
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .end local v4    # "view":Landroid/view/View;
    :goto_b4
    return-void

    .line 128
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :cond_b5
    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_bd} :catch_be

    goto :goto_84

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :catch_be
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    goto :goto_b4
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    if-eqz v0, :cond_11

    .line 251
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 254
    :cond_11
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_2a

    .line 255
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->removeVideoEventsListener()V

    .line 257
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 390
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 391
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 392
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->hideCustomView()V

    .line 393
    const/4 v0, 0x1

    .line 400
    :goto_11
    return v0

    .line 396
    :cond_12
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_2e

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2e

    .line 397
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 236
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_2c

    .line 237
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->pause()V

    .line 239
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 242
    :cond_2c
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 243
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 212
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_29

    .line 217
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 218
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->resume()V

    .line 219
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 222
    :cond_29
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 226
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 204
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 205
    const-string v0, "state"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    :cond_26
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 304
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onVideoEnded()V
    .registers 2

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 439
    return-void
.end method

.method public onVideoPaused()V
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 429
    return-void
.end method

.method public onVideoResumed()V
    .registers 2

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 434
    return-void
.end method

.method public onVideoStarted()V
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 424
    return-void
.end method

.method public onVideoStopped()V
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 444
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 416
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 417
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 419
    :cond_e
    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 5
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 405
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_2d

    .line 406
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 410
    :cond_2d
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .registers 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 447
    if-eqz p1, :cond_6

    .line 448
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V

    .line 453
    :goto_5
    return-void

    .line 451
    :cond_6
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->cancelScreenOn()V

    goto :goto_5
.end method

###### Class com.ironsource.sdk.controller.ControllerActivity.AnonymousClass1 (com.ironsource.sdk.controller.ControllerActivity$1)
.class Lcom/ironsource/sdk/controller/ControllerActivity$1;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$1;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$1;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$1;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$000(Lcom/ironsource/sdk/controller/ControllerActivity;)Z

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getActivityUIFlags(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 62
    return-void
.end method

###### Class com.ironsource.sdk.controller.ControllerActivity.AnonymousClass2 (com.ironsource.sdk.controller.ControllerActivity$2)
.class Lcom/ironsource/sdk/controller/ControllerActivity$2;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 107
    and-int/lit16 v0, p1, 0x1002

    if-nez v0, :cond_24

    .line 108
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_24
    return-void
.end method

###### Class com.ironsource.sdk.controller.ControllerActivity.AnonymousClass3 (com.ironsource.sdk.controller.ControllerActivity$3)
.class Lcom/ironsource/sdk/controller/ControllerActivity$3;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$3;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$3;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 321
    return-void
.end method

###### Class com.ironsource.sdk.controller.ControllerActivity.AnonymousClass4 (com.ironsource.sdk.controller.ControllerActivity$4)
.class Lcom/ironsource/sdk/controller/ControllerActivity$4;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;->cancelScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$4;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$4;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 331
    return-void
.end method
