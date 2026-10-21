###### Class com.vungle.publisher.mj (com.vungle.publisher.mj)
.class public abstract Lcom/vungle/publisher/mj;
.super Landroid/webkit/WebView;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/mj$b;,
        Lcom/vungle/publisher/mj$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/qg;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/lf;)V
    .registers 8

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 38
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading webview with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/mj;->loadUrl(Ljava/lang/String;)V

    .line 44
    :cond_29
    :goto_29
    return-void

    .line 40
    :cond_2a
    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 41
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading webview with content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "http://lol.vungle.com/"

    invoke-virtual {p1}, Lcom/vungle/publisher/lf;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/mj;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 46
    return-void
.end method

###### Class com.vungle.publisher.mj.a (com.vungle.publisher.mj$a)
.class public Lcom/vungle/publisher/mj$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/env/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/bz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/mj$a;->c:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_15

    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/mj$a;->d:Lcom/vungle/publisher/bz;

    invoke-static {p0, p1}, Lcom/vungle/publisher/mk;->a(Lcom/vungle/publisher/mj$a;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bz;->a(Ljava/lang/Runnable;)V

    .line 76
    :goto_14
    return-void

    .line 74
    :cond_15
    iget-object v0, p0, Lcom/vungle/publisher/mj$a;->a:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/pg;

    invoke-direct {v1}, Lcom/vungle/publisher/pg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method synthetic b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/mj$a;->b:Lcom/vungle/publisher/env/i;

    invoke-interface {v1, v0}, Lcom/vungle/publisher/env/i;->a(Landroid/webkit/WebView;)V

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/mj$a;->a:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/pg;

    invoke-direct {v1}, Lcom/vungle/publisher/pg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

###### Class com.vungle.publisher.mj.b (com.vungle.publisher.mj$b)
.class public abstract Lcom/vungle/publisher/mj$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lcom/vungle/publisher/mj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lcom/vungle/publisher/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TW;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)Lcom/vungle/publisher/mj;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/p;",
            "Z",
            "Lcom/vungle/publisher/x;",
            ")TW;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/mj$b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/mj$b;->a(Landroid/content/Context;)Lcom/vungle/publisher/mj;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/mj$b;->b:Lcom/vungle/publisher/qg;

    iput-object v0, v1, Lcom/vungle/publisher/mj;->a:Lcom/vungle/publisher/qg;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/mj$b;->a(Lcom/vungle/publisher/mj;Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V

    .line 97
    return-object v1
.end method

.method protected abstract a(Lcom/vungle/publisher/mj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation
.end method

.method protected a(Lcom/vungle/publisher/mj;Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/p;",
            "Z",
            "Lcom/vungle/publisher/x;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/vungle/publisher/mj;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 104
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 106
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1e

    .line 109
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 111
    :cond_1e
    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/mj;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {p1, v3}, Lcom/vungle/publisher/mj;->setBackgroundResource(I)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/mj$b;->a(Ljava/lang/String;Lcom/vungle/publisher/mj;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/mj$b;->a(Lcom/vungle/publisher/mj;)V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3d

    .line 116
    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 118
    :cond_3d
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Lcom/vungle/publisher/mj;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TW;",
            "Lcom/vungle/publisher/p;",
            "Z",
            "Lcom/vungle/publisher/x;",
            ")V"
        }
    .end annotation
.end method
