###### Class com.vungle.publisher.lw (com.vungle.publisher.lw)
.class public Lcom/vungle/publisher/lw;
.super Landroid/webkit/WebChromeClient;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 62
    const/4 v0, 0x1

    .line 63
    const-string v1, "close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 64
    iget-object v1, p0, Lcom/vungle/publisher/lw;->a:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/ao;

    invoke-direct {v2}, Lcom/vungle/publisher/ao;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 76
    :goto_13
    return v0

    .line 66
    :cond_14
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 67
    iget-object v1, p0, Lcom/vungle/publisher/lw;->a:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/aa;

    sget-object v3, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    invoke-direct {v2, v3}, Lcom/vungle/publisher/aa;-><init>(Lcom/vungle/publisher/ji$a;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_13

    .line 69
    :cond_29
    const-string v1, "privacy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/lw;->a:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/aq;

    invoke-direct {v2}, Lcom/vungle/publisher/aq;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_13

    .line 73
    :cond_3c
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown javascript method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 35
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "vungle:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 37
    if-eqz v2, :cond_41

    .line 38
    const/4 v1, 0x0

    .line 40
    :try_start_21
    const-string v0, "vungle:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v3, "method"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v4, "params"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/lw;->a(Ljava/lang/String;)Z
    :try_end_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_3e} :catch_42
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_65

    .line 56
    :goto_3e
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 58
    :cond_41
    return v2

    .line 46
    :catch_42
    move-exception v0

    .line 47
    const-string v0, "VungleAd"

    const-string v1, "no javascript method call"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 49
    :catch_4b
    move-exception v0

    .line 50
    const-string v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid json "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 52
    :catch_65
    move-exception v0

    .line 53
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method
