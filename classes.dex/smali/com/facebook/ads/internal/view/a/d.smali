###### Class com.facebook.ads.internal.view.a.d (com.facebook.ads.internal.view.a.d)
.class public Lcom/facebook/ads/internal/view/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/a/f;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/a/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/a/d;->b:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    :try_start_11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_26} :catch_28

    move-result-wide v0

    goto :goto_10

    :catch_28
    move-exception v2

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/a/d;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/f;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/f;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/a/d;->b:Z

    goto :goto_4

    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    const-string v1, "void((function() {try {  if (!window.performance || !window.performance.timing || !document ||       !document.body || document.body.scrollHeight <= 0 ||       !document.body.children || document.body.children.length < 1) {    return;  }  var nvtiming__an_t = window.performance.timing;  if (nvtiming__an_t.responseEnd > 0) {    console.log(\'ANNavResponseEnd:\'+nvtiming__an_t.responseEnd);  }  if (nvtiming__an_t.domContentLoadedEventStart > 0) {    console.log(\'ANNavDomContentLoaded:\' + nvtiming__an_t.domContentLoadedEventStart);  }  if (nvtiming__an_t.loadEventEnd > 0) {    console.log(\'ANNavLoadEventEnd:\' + nvtiming__an_t.loadEventEnd);  }} catch(err) {  console.log(\'an_navigation_timing_error:\' + err.message);}})());"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/a/d;->b:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "ANNavResponseEnd:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    const-string v1, "ANNavResponseEnd:"

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/view/a/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->a(J)V

    goto :goto_4

    :cond_19
    const-string v0, "ANNavDomContentLoaded:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    const-string v1, "ANNavDomContentLoaded:"

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/view/a/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->b(J)V

    goto :goto_4

    :cond_2d
    const-string v0, "ANNavLoadEventEnd:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->a:Lcom/facebook/ads/internal/view/a/f;

    const-string v1, "ANNavLoadEventEnd:"

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/view/a/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/view/a/f;->c(J)V

    goto :goto_4
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/a/d;->b:Z

    return-void
.end method
