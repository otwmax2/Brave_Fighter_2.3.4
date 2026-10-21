###### Class com.moat.analytics.mobile.cha.v (com.moat.analytics.mobile.cha.v)
.class final Lcom/moat/analytics/mobile/cha/v;
.super Lcom/moat/analytics/mobile/cha/d;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/WebAdTracker;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x3

    .line 20
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/x;->ˊ(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/cha/v;-><init>(Landroid/webkit/WebView;)V

    .line 21
    if-nez p1, :cond_34

    .line 22
    const-string v0, "Target ViewGroup is null"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 1055
    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    .line 27
    :cond_34
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/v;->ˏ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5a

    .line 28
    const-string v0, "No WebView to track inside of ad container"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 2055
    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    .line 33
    :cond_5a
    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 7
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lcom/moat/analytics/mobile/cha/d;-><init>(Landroid/view/View;ZZ)V

    .line 37
    const-string v0, "WebAdTracker"

    const-string v1, "Initializing."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    if-nez p1, :cond_31

    .line 39
    const-string v0, "WebView is null"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 3055
    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    .line 52
    :goto_30
    return-void

    .line 46
    :cond_31
    :try_start_31
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Landroid/webkit/WebView;)V

    .line 47
    const-string v0, "[SUCCESS] "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker created for "

    .line 4056
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/v;->ʻ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_31 .. :try_end_4c} :catch_4d

    goto :goto_30

    .line 48
    :catch_4d
    move-exception v0

    .line 49
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    goto :goto_30
.end method


# virtual methods
.method final ˋ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string v0, "WebAdTracker"

    return-object v0
.end method
