###### Class com.facebook.ads.internal.view.f (com.facebook.ads.internal.view.f)
.class public Lcom/facebook/ads/internal/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/a$a;

.field private final c:Lcom/facebook/ads/internal/view/b/a;

.field private final d:Lcom/facebook/ads/internal/view/b/a$b;

.field private final e:Lcom/facebook/ads/internal/adapters/s;

.field private final f:Lcom/facebook/ads/internal/m/c;

.field private g:Lcom/facebook/ads/internal/adapters/r;

.field private h:J

.field private i:J

.field private j:Lcom/facebook/ads/internal/j/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/view/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;)V
    .registers 10

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/f;->b:Lcom/facebook/ads/internal/view/a$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/m/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f;->h:J

    new-instance v0, Lcom/facebook/ads/internal/view/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/internal/view/f$1;-><init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/m/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/b/a$b;

    new-instance v0, Lcom/facebook/ads/internal/view/b/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/b/a$b;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/b/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/facebook/ads/internal/view/f$2;

    invoke-direct {v5, p0}, Lcom/facebook/ads/internal/view/f$2;-><init>(Lcom/facebook/ads/internal/view/f;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/s;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/b/a;->getViewabilityChecker()Lcom/facebook/ads/internal/r/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/s;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/c/a;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/s;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-interface {p3, v0}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;J)J
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/f;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/j/a$a;)Lcom/facebook/ads/internal/j/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->j:Lcom/facebook/ads/internal/j/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->b:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/view/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/adapters/r;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/adapters/s;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/s;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 10

    const/4 v5, 0x0

    if-eqz p2, :cond_40

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/r;->a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {}, Lcom/facebook/ads/internal/q/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/r;->h()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/b/a;->a(II)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/r;->b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/s;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/internal/adapters/r;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {}, Lcom/facebook/ads/internal/q/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/r;->h()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/b/a;->a(II)V

    goto :goto_3f
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_f

    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/r;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->onPause()V

    return-void
.end method

.method public j()V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->j:Lcom/facebook/ads/internal/j/a$a;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_21

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/f;->i:J

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->j:Lcom/facebook/ads/internal/j/a$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a;->a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->onResume()V

    return-void
.end method

.method public onDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_49

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/f;->h:J

    sget-object v2, Lcom/facebook/ads/internal/j/a$a;->c:Lcom/facebook/ads/internal/j/a$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a;->a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/b/a;->getViewabilityChecker()Lcom/facebook/ads/internal/r/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/b/a;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/m/c;->h(Ljava/lang/String;Ljava/util/Map;)V

    :cond_49
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/c/b;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->destroy()V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .registers 2

    return-void
.end method

###### Class com.facebook.ads.internal.view.f.AnonymousClass1 (com.facebook.ads.internal.view.f$1)
.class Lcom/facebook/ads/internal/view/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/f;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;

.field final synthetic b:Lcom/facebook/ads/internal/m/c;

.field final synthetic c:Lcom/facebook/ads/internal/view/f;

.field private d:J


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/m/c;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/f$1;->b:Lcom/facebook/ads/internal/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f$1;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->c(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/adapters/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/s;->b()V

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "close"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-wide v2, p0, Lcom/facebook/ads/internal/view/f$1;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/ads/internal/view/f$1;->d:J

    iget-wide v4, p0, Lcom/facebook/ads/internal/view/f$1;->d:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_21

    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v1

    const-string v2, "com.facebook.ads.interstitial.clicked"

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_55
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f$1;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_69
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->a()Lcom/facebook/ads/internal/j/a$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/j/a$a;)Lcom/facebook/ads/internal/j/a$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;J)J

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7e} :catch_7f

    goto :goto_21

    :catch_7f
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/internal/view/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$1;->c:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->c(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/adapters/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/s;->a()V

    return-void
.end method

###### Class com.facebook.ads.internal.view.f.AnonymousClass2 (com.facebook.ads.internal.view.f$2)
.class Lcom/facebook/ads/internal/view/f$2;
.super Lcom/facebook/ads/internal/adapters/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/f;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    return-void
.end method
