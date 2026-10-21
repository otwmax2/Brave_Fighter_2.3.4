###### Class com.ironsource.sdk.controller.OpenUrlActivity (com.ironsource.sdk.controller.OpenUrlActivity)
.class public Lcom/ironsource/sdk/controller/OpenUrlActivity;
.super Landroid/app/Activity;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;
    }
.end annotation


# static fields
.field private static final PROGRESS_BAR_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "OpenUrlActivity"

.field private static final WEB_VIEW_VIEW_ID:I


# instance fields
.field private final decorViewSettings:Ljava/lang/Runnable;

.field isSecondaryWebview:Z

.field private mIsImmersive:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUrl:Ljava/lang/String;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    .line 38
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 306
    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    return v0
.end method

.method private createProgressBarForWebView()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 148
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_21

    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_46

    .line 150
    new-instance v1, Landroid/widget/ProgressBar;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 154
    :goto_1a
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 158
    :cond_21
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_45

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 170
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_45
    return-void

    .line 152
    :cond_46
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_1a
.end method

.method private createWebView()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 118
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_31

    .line 119
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 120
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    sget v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 122
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->loadUrl(Ljava/lang/String;)V

    .line 129
    :cond_31
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_45

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v0, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .end local v0    # "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_45
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->createProgressBarForWebView()V

    .line 141
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v1, :cond_53

    .line 142
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "secondary"

    invoke-virtual {v1, v5, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 144
    :cond_53
    return-void
.end method

.method private destroyWebView()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 198
    :cond_9
    return-void
.end method

.method private disableTouch()V
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 274
    return-void
.end method

.method private hideActivityTitle()V
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->requestWindowFeature(I)Z

    .line 265
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 268
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 270
    return-void
.end method

.method private removeWebViewFromLayout()V
    .registers 5

    .prologue
    .line 174
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v1, :cond_34

    .line 175
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    const-string v3, "secondary"

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_34

    .line 179
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_34

    .line 182
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 183
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    :cond_27
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 187
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_34
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    if-eqz v0, :cond_b

    .line 297
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "secondaryClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->engageEnd(Ljava/lang/String;)V

    .line 300
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 301
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 209
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 212
    :try_start_b
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_11

    .line 217
    :goto_10
    return-void

    .line 213
    :catch_11
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OpenUrlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUrlActivity:: loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 280
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 284
    :goto_d
    return-void

    .line 282
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v4, "OpenUrlActivity"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_a
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v3

    .line 69
    .local v3, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 72
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->hideActivityTitle()V

    .line 75
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->hideActivtiyStatusBar()V

    .line 78
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v4, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    .line 82
    sget-object v4, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    .line 84
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "immersive"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 87
    iget-boolean v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v4, :cond_58

    .line 88
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 97
    iget-object v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    :cond_58
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 102
    iget-object v4, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6b} :catch_6c

    .line 107
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :goto_6b
    return-void

    .line 103
    :catch_6c
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    goto :goto_6b
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->destroyWebView()V

    .line 290
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    const/16 v0, 0x18

    if-ne p1, v0, :cond_15

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->removeWebViewFromLayout()V

    .line 204
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->createWebView()V

    .line 113
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 316
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 317
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_e
    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.AnonymousClass1 (com.ironsource.sdk.controller.OpenUrlActivity$1)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$1;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 91
    and-int/lit16 v0, p1, 0x1002

    if-nez v0, :cond_24

    .line 92
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_24
    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.AnonymousClass2 (com.ironsource.sdk.controller.OpenUrlActivity$2)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$2;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$500(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Z

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getActivityUIFlags(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 309
    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.Client (com.ironsource.sdk.controller.OpenUrlActivity$Client)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/OpenUrlActivity$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_46

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    .line 246
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v3, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$400(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->interceptedUrlToStore()V

    .line 253
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    .line 254
    const/4 v3, 0x1

    .line 259
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "key":Ljava/lang/String;
    :goto_45
    return v3

    :cond_46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto :goto_45
.end method
