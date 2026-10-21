###### Class com.tendcloud.tenddata.AlertActivity (com.tendcloud.tenddata.AlertActivity)
.class public Lcom/tendcloud/tenddata/AlertActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/AlertActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "popup"

.field public static final b:Ljava/lang/String; = "isinapp"

.field public static final c:Ljava/lang/String; = "showduration"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;

.field private f:J

.field private g:Z

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "AlertActivity"

    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a()Landroid/widget/RelativeLayout;
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xffff

    :try_start_8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private a(Lorg/json/JSONObject;)Landroid/widget/RelativeLayout;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tendcloud/tenddata/AlertActivity;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/AlertActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.talkingdata.message.click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_7
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isinapp"

    iget-boolean v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showduration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/AlertActivity;->f:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "msg"

    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appkey"

    const-string v2, "td_pefercen_profile"

    const-string v3, "appkey"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sign"

    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    const-string v3, "sign"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4f} :catch_53

    :goto_4f
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_53
    move-exception v1

    goto :goto_4f
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/tendcloud/tenddata/AlertActivity$a;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/AlertActivity$a;-><init>(Lcom/tendcloud/tenddata/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "popup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isinapp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Z

    if-eqz v0, :cond_54

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    :try_start_31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->f:J

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lorg/json/JSONObject;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->b(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_58} :catch_59

    goto :goto_54

    :catch_59
    move-exception v0

    goto :goto_54
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

###### Class com.tendcloud.tenddata.AlertActivity.a (com.tendcloud.tenddata.AlertActivity$a)
.class Lcom/tendcloud/tenddata/AlertActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/AlertActivity;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/AlertActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v0}, Lcom/tendcloud/tenddata/AlertActivity;->b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:parseMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_17

    :try_start_2
    const-string v0, "talkingdata://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method
