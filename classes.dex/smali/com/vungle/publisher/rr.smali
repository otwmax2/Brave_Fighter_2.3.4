###### Class com.vungle.publisher.rr (com.vungle.publisher.rr)
.class public Lcom/vungle/publisher/rr;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/mv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/rb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/rz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Lcom/vungle/publisher/x;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/rr;->c:Lcom/vungle/publisher/rz$a;

    iget-object v1, p0, Lcom/vungle/publisher/rr;->d:Lcom/vungle/publisher/x;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rz$a;->a(Lcom/vungle/publisher/x;)Lcom/vungle/publisher/rz;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->d()V

    .line 51
    :try_start_b
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_13} :catch_14

    .line 55
    :goto_13
    return-void

    .line 52
    :catch_14
    move-exception v0

    .line 53
    const-string v1, "VungleAd"

    const-string v2, "could not update mraid dimensions"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method a(Landroid/webkit/WebView;Lcom/vungle/publisher/iz$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    const-string v0, "VungleAd"

    const-string v1, "inject tokens into js and notify ready"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lcom/vungle/publisher/iz$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3b

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tokens: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v2, "notifyReadyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/vungle/publisher/rb;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    :goto_3a
    return-void

    .line 91
    :cond_3b
    iget-object v0, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v1, "notifyReadyEvent"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/publisher/rb;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3a
.end method

.method a(Landroid/webkit/WebView;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 33
    iput-object p4, p0, Lcom/vungle/publisher/rr;->d:Lcom/vungle/publisher/x;

    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/rr;->c:Lcom/vungle/publisher/rz$a;

    invoke-virtual {v0, p4}, Lcom/vungle/publisher/rz$a;->a(Lcom/vungle/publisher/x;)Lcom/vungle/publisher/rz;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->c()V

    .line 36
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rz;->a(Z)V

    .line 37
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->d()V

    .line 38
    invoke-virtual {v0, p2, p3}, Lcom/vungle/publisher/rz;->a(Lcom/vungle/publisher/p;Z)V

    .line 39
    sget-object v1, Lcom/vungle/publisher/se;->b:Lcom/vungle/publisher/se;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rz;->a(Lcom/vungle/publisher/se;)V

    .line 41
    :try_start_1a
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_22} :catch_23

    .line 45
    :goto_22
    return-void

    .line 42
    :catch_23
    move-exception v0

    .line 43
    const-string v1, "VungleAd"

    const-string v2, "could not update mraid properties"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document.querySelector(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\').play()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    invoke-virtual {v1, p1, v0}, Lcom/vungle/publisher/rb;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    .registers 9

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v1, "notifyPropertiesChange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/publisher/rb;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public a(Landroid/webkit/WebView;Z)V
    .registers 8

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v1, "incentivizedDialogResponse"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/publisher/rb;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public a(Lcom/vungle/publisher/x;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/rr;->d:Lcom/vungle/publisher/x;

    .line 69
    return-void
.end method

.method public a(ZLandroid/webkit/WebView;)V
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/rr;->c:Lcom/vungle/publisher/rz$a;

    iget-object v1, p0, Lcom/vungle/publisher/rr;->d:Lcom/vungle/publisher/x;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rz$a;->a(Lcom/vungle/publisher/x;)Lcom/vungle/publisher/rz;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/rz;->a(Z)V

    .line 61
    :try_start_b
    invoke-virtual {v0}, Lcom/vungle/publisher/rz;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_13} :catch_14

    .line 65
    :goto_13
    return-void

    .line 62
    :catch_14
    move-exception v0

    .line 63
    const-string v1, "VungleAd"

    const-string v2, "could not update viewable properties"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v1, "requestMRAIDClose"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/publisher/rb;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method c(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/rr;->b:Lcom/vungle/publisher/rb;

    const-string v1, "notifyCommandComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/publisher/rb;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    return-void
.end method
