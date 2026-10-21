###### Class com.facebook.internal.WebDialog (com.facebook.internal.WebDialog)
.class public Lcom/facebook/internal/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;,
        Lcom/facebook/internal/WebDialog$Builder;,
        Lcom/facebook/internal/WebDialog$DialogWebViewClient;,
        Lcom/facebook/internal/WebDialog$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private expectedRedirectUrl:Ljava/lang/String;

.field private isDetached:Z

.field private isPageFinished:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/facebook/FacebookSdk;->getWebDialogTheme()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p3, :cond_7

    invoke-static {}, Lcom/facebook/FacebookSdk;->getWebDialogTheme()I

    move-result p3

    .end local p3    # "theme":I
    :cond_7
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 118
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 119
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 157
    iput-object p2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "theme"    # I
    .param p5, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    const/4 v6, 0x0

    .line 170
    if-nez p4, :cond_7

    invoke-static {}, Lcom/facebook/FacebookSdk;->getWebDialogTheme()I

    move-result p4

    .end local p4    # "theme":I
    :cond_7
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    const-string v1, "fbconnect://success"

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 117
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 118
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 119
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 172
    if-nez p3, :cond_1b

    .line 173
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 177
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_1b
    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "sdk"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "android-%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object p5, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 187
    const-string v1, "share"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "media"

    .line 188
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 189
    new-instance v1, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-direct {v1, p0, p2, p3}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;-><init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .line 197
    :goto_58
    return-void

    .line 192
    :cond_59
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dialog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    goto :goto_58
.end method

.method static synthetic access$100(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/internal/WebDialog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/internal/WebDialog;->setUpWebView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/WebDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/facebook/internal/WebDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$902(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    return-object p1
.end method

.method private createCrossImage()V
    .registers 4

    .prologue
    .line 420
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 422
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/internal/WebDialog$2;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$2;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->com_facebook_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 429
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    return-void
.end method

.method private getScaledSize(IFII)I
    .registers 15
    .param p1, "screenSize"    # I
    .param p2, "density"    # F
    .param p3, "noPaddingSize"    # I
    .param p4, "maxPaddingSize"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 374
    int-to-float v3, p1

    div-float/2addr v3, p2

    float-to-int v2, v3

    .line 376
    .local v2, "scaledSize":I
    if-gt v2, p3, :cond_d

    .line 377
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 388
    .local v0, "scaleFactor":D
    :goto_9
    int-to-double v4, p1

    mul-double/2addr v4, v0

    double-to-int v3, v4

    return v3

    .line 378
    .end local v0    # "scaleFactor":D
    :cond_d
    if-lt v2, p4, :cond_12

    .line 379
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .restart local v0    # "scaleFactor":D
    goto :goto_9

    .line 383
    .end local v0    # "scaleFactor":D
    :cond_12
    sub-int v3, p4, v2

    int-to-double v4, v3

    sub-int v3, p4, p3

    int-to-double v6, v3

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    add-double v0, v8, v4

    .restart local v0    # "scaleFactor":D
    goto :goto_9
.end method

.method private setUpWebView(I)V
    .registers 9
    .param p1, "margin"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/facebook/internal/WebDialog$3;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/WebDialog$3;-><init>(Lcom/facebook/internal/WebDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    .line 451
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 453
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 454
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 455
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 460
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 461
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 462
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 463
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$4;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 475
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 477
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_10

    .line 415
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 417
    :cond_10
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 231
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    if-nez v0, :cond_1e

    .line 232
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 233
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :cond_1e
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected isListenerCalled()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    return v0
.end method

.method protected isPageFinished()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 268
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 273
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 275
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 276
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 277
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->com_facebook_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/facebook/internal/WebDialog$1;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$1;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 287
    invoke-virtual {p0, v5}, Lcom/facebook/internal/WebDialog;->requestWindowFeature(I)Z

    .line 288
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 292
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 295
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 301
    invoke-direct {p0}, Lcom/facebook/internal/WebDialog;->createCrossImage()V

    .line 303
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    if-eqz v1, :cond_6f

    .line 307
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 308
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/internal/WebDialog;->setUpWebView(I)V

    .line 314
    .end local v0    # "crossWidth":I
    :cond_6f
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/facebook/internal/WebDialog;->setContentView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 262
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 220
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 223
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 242
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1f

    .line 243
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 248
    :goto_1e
    return-void

    .line 246
    :cond_1f
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    goto :goto_1e
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_f

    .line 253
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->cancel(Z)Z

    .line 254
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    :cond_f
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 257
    return-void
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 327
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 328
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 330
    return-object v0
.end method

.method public resize()V
    .registers 11

    .prologue
    const/16 v9, 0x320

    .line 346
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 347
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 348
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 349
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 352
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_4e

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 353
    .local v5, "width":I
    :goto_22
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_51

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 355
    .local v3, "height":I
    :goto_2a
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0x1e0

    .line 356
    invoke-direct {p0, v5, v7, v8, v9}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v7

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 355
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 358
    .local v1, "dialogWidth":I
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0x500

    .line 359
    invoke-direct {p0, v3, v7, v9, v8}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v7

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 358
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 362
    .local v0, "dialogHeight":I
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 363
    return-void

    .line 352
    .end local v0    # "dialogHeight":I
    .end local v1    # "dialogWidth":I
    .end local v3    # "height":I
    .end local v5    # "width":I
    :cond_4e
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_22

    .line 353
    .restart local v5    # "width":I
    :cond_51
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2a
.end method

.method protected sendErrorToListener(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_1b

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 403
    instance-of v1, p1, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_1c

    move-object v0, p1

    .line 404
    check-cast v0, Lcom/facebook/FacebookException;

    .line 408
    .local v0, "facebookException":Lcom/facebook/FacebookException;
    :goto_12
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 409
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 411
    .end local v0    # "facebookException":Lcom/facebook/FacebookException;
    :cond_1b
    return-void

    .line 406
    :cond_1c
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "facebookException":Lcom/facebook/FacebookException;
    goto :goto_12
.end method

.method protected sendSuccessToListener(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_14

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 394
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 395
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 397
    :cond_14
    return-void
.end method

.method protected setExpectedRedirectUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "expectedRedirectUrl"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 206
    return-void
.end method

###### Class com.facebook.internal.WebDialog.AnonymousClass1 (com.facebook.internal.WebDialog$1)
.class Lcom/facebook/internal/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$1;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$1;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 284
    return-void
.end method

###### Class com.facebook.internal.WebDialog.AnonymousClass2 (com.facebook.internal.WebDialog$2)
.class Lcom/facebook/internal/WebDialog$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$2;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$2;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 426
    return-void
.end method

###### Class com.facebook.internal.WebDialog.AnonymousClass3 (com.facebook.internal.WebDialog$3)
.class Lcom/facebook/internal/WebDialog$3;
.super Landroid/webkit/WebView;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->setUpWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/internal/WebDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$3;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 446
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4

    .line 449
    :goto_3
    return-void

    .line 447
    :catch_4
    move-exception v0

    goto :goto_3
.end method

###### Class com.facebook.internal.WebDialog.AnonymousClass4 (com.facebook.internal.WebDialog$4)
.class Lcom/facebook/internal/WebDialog$4;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->setUpWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$4;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 470
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.internal.WebDialog.Builder (com.facebook.internal.WebDialog$Builder)
.class public Lcom/facebook/internal/WebDialog$Builder;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 603
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-nez v1, :cond_15

    .line 604
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 606
    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 613
    .end local v0    # "applicationId":Ljava/lang/String;
    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 614
    return-void

    .line 608
    .restart local v0    # "applicationId":Ljava/lang/String;
    :cond_19
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    if-nez p2, :cond_9

    .line 627
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 629
    :cond_9
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 632
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 633
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    .line 700
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    .line 701
    if-eqz p3, :cond_9

    .line 702
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    .line 706
    :goto_8
    return-void

    .line 704
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    goto :goto_8
.end method


# virtual methods
.method public build()Lcom/facebook/internal/WebDialog;
    .registers 7

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2e

    .line 665
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 667
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 670
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_1e
    new-instance v0, Lcom/facebook/internal/WebDialog;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0

    .line 672
    :cond_2e
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;
    .registers 2
    .param p1, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 654
    return-object p0
.end method

.method public setTheme(I)Lcom/facebook/internal/WebDialog$Builder;
    .registers 2
    .param p1, "theme"    # I

    .prologue
    .line 642
    iput p1, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 643
    return-object p0
.end method

###### Class com.facebook.internal.WebDialog.DialogWebViewClient (com.facebook.internal.WebDialog$DialogWebViewClient)
.class Lcom/facebook/internal/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2

    .prologue
    .line 480
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/internal/WebDialog;
    .param p2, "x1"    # Lcom/facebook/internal/WebDialog$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 570
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 576
    :cond_15
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$400(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 577
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$500(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/WebDialog;->access$702(Lcom/facebook/internal/WebDialog;Z)Z

    .line 580
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 559
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 561
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 562
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 564
    :cond_2c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 543
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 552
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 553
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 555
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 15
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string v8, "FacebookSDK.WebDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Redirect URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v8}, Lcom/facebook/internal/WebDialog;->access$100(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 485
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8, p2}, Lcom/facebook/internal/WebDialog;->parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 487
    .local v7, "values":Landroid/os/Bundle;
    const-string v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "error":Ljava/lang/String;
    if-nez v1, :cond_38

    .line 489
    const-string v8, "error_type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_38
    const-string v8, "error_msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_46

    .line 494
    const-string v8, "error_message"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    :cond_46
    if-nez v4, :cond_4e

    .line 497
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    :cond_4e
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "errorCodeString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 501
    .local v2, "errorCode":I
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 503
    :try_start_5b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_5e} :catch_75

    move-result v2

    .line 509
    :cond_5f
    :goto_5f
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 510
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    const/4 v8, -0x1

    if-ne v2, v8, :cond_78

    .line 511
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8, v7}, Lcom/facebook/internal/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    .line 521
    :goto_73
    const/4 v8, 0x1

    .line 534
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorCode":I
    .end local v3    # "errorCodeString":Ljava/lang/String;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v7    # "values":Landroid/os/Bundle;
    :goto_74
    return v8

    .line 504
    .restart local v1    # "error":Ljava/lang/String;
    .restart local v2    # "errorCode":I
    .restart local v3    # "errorCodeString":Ljava/lang/String;
    .restart local v4    # "errorMessage":Ljava/lang/String;
    .restart local v7    # "values":Landroid/os/Bundle;
    :catch_75
    move-exception v5

    .line 505
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_5f

    .line 512
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_78
    if-eqz v1, :cond_90

    const-string v8, "access_denied"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    const-string v8, "OAuthAccessDeniedException"

    .line 513
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 514
    :cond_8a
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_73

    .line 515
    :cond_90
    const/16 v8, 0x1069

    if-ne v2, v8, :cond_9a

    .line 516
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_73

    .line 518
    :cond_9a
    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, v2, v1, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v6, "requestError":Lcom/facebook/FacebookRequestError;
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v9, Lcom/facebook/FacebookServiceException;

    invoke-direct {v9, v6, v4}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_73

    .line 522
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorCode":I
    .end local v3    # "errorCodeString":Ljava/lang/String;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v6    # "requestError":Lcom/facebook/FacebookRequestError;
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_aa
    const-string v8, "fbconnect://cancel"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 523
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 524
    const/4 v8, 0x1

    goto :goto_74

    .line 525
    :cond_b9
    const-string v8, "touch"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 526
    const/4 v8, 0x0

    goto :goto_74

    .line 530
    :cond_c3
    :try_start_c3
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    .line 531
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c3 .. :try_end_d7} :catch_d9

    .line 532
    const/4 v8, 0x1

    goto :goto_74

    .line 533
    :catch_d9
    move-exception v0

    .line 534
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v8, 0x0

    goto :goto_74
.end method

###### Class com.facebook.internal.WebDialog.OnCompleteListener (com.facebook.internal.WebDialog$OnCompleteListener)
.class public interface abstract Lcom/facebook/internal/WebDialog$OnCompleteListener;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.end method

###### Class com.facebook.internal.WebDialog.UploadStagingResourcesTask (com.facebook.internal.WebDialog$UploadStagingResourcesTask)
.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;
.super Landroid/os/AsyncTask;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadStagingResourcesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private exceptions:[Ljava/lang/Exception;

.field private parameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 715
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    .line 716
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 717
    return-void
.end method

.method static synthetic access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 721
    iget-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string v12, "media"

    .line 722
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, "params":[Ljava/lang/String;
    array-length v11, v5

    new-array v6, v11, [Ljava/lang/String;

    .line 724
    .local v6, "results":[Ljava/lang/String;
    array-length v11, v5

    new-array v11, v11, [Ljava/lang/Exception;

    iput-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    .line 726
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    array-length v11, v5

    invoke-direct {v4, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 727
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 730
    .local v8, "tasks":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/facebook/GraphRequestAsyncTask;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 732
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    :try_start_20
    array-length v11, v5

    if-ge v3, v11, :cond_80

    .line 733
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_56

    .line 734
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/AsyncTask;

    .line 735
    .local v7, "task":Landroid/os/AsyncTask;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_3e

    goto :goto_2d

    .line 782
    .end local v7    # "task":Landroid/os/AsyncTask;
    :catch_3e
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_84

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/AsyncTask;

    .line 784
    .restart local v7    # "task":Landroid/os/AsyncTask;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_43

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "task":Landroid/os/AsyncTask;
    :cond_54
    const/4 v6, 0x0

    .line 789
    .end local v6    # "results":[Ljava/lang/String;
    :goto_55
    return-object v6

    .line 739
    .restart local v6    # "results":[Ljava/lang/String;
    :cond_56
    :try_start_56
    aget-object v11, v5, v3

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 740
    .local v9, "uri":Landroid/net/Uri;
    move v10, v3

    .line 741
    .local v10, "writeIndex":I
    invoke-static {v9}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 742
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 743
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 732
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 746
    :cond_6f
    new-instance v1, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;

    invoke-direct {v1, p0, v6, v10, v4}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;-><init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 775
    .local v1, "callback":Lcom/facebook/GraphRequest$Callback;
    invoke-static {v0, v9, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v11

    .line 778
    invoke-virtual {v11}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v7

    .line 779
    .local v7, "task":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 781
    .end local v1    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v7    # "task":Lcom/facebook/GraphRequestAsyncTask;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "writeIndex":I
    :cond_80
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_83} :catch_3e

    goto :goto_55

    .line 786
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_84
    const/4 v6, 0x0

    goto :goto_55
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .registers 9
    .param p1, "results"    # [Ljava/lang/String;

    .prologue
    .line 794
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v4}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 796
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_1c

    aget-object v1, v5, v4

    .line 797
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_19

    .line 798
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v4, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 827
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    return-void

    .line 796
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    if-nez p1, :cond_2b

    .line 804
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Failed to stage photos for web dialog"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_18

    .line 808
    :cond_2b
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 809
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 810
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Failed to stage photos for web dialog"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_18

    .line 814
    :cond_43
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string v5, "media"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 820
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dialog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 819
    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v3

    .line 824
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/internal/WebDialog;->access$902(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v4}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 826
    .local v0, "crossWidth":I
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/facebook/internal/WebDialog;->access$1000(Lcom/facebook/internal/WebDialog;I)V

    goto/16 :goto_18
.end method

###### Class com.facebook.internal.WebDialog.UploadStagingResourcesTask.AnonymousClass1 (com.facebook.internal.WebDialog$UploadStagingResourcesTask$1)
.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "this$1"    # Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 750
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 751
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v2, :cond_25

    .line 752
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_e

    .line 754
    const-string v3, "Error staging photo."

    .line 756
    :cond_e
    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v5, p1, v3}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    throw v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    .line 767
    .end local v2    # "error":Lcom/facebook/FacebookRequestError;
    .end local v3    # "message":Ljava/lang/String;
    :catch_14
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-static {v5}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v5

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v1, v5, v6

    .line 770
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 771
    return-void

    .line 758
    .restart local v2    # "error":Lcom/facebook/FacebookRequestError;
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 759
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_33

    .line 760
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Error staging photo."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 762
    :cond_33
    const-string v5, "uri"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "stagedImageUri":Ljava/lang/String;
    if-nez v4, :cond_43

    .line 764
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Error staging photo."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 766
    :cond_43
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v4, v5, v6
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_49} :catch_14

    goto :goto_1f
.end method
