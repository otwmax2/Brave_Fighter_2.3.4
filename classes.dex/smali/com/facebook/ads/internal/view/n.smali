###### Class com.facebook.ads.internal.view.n (com.facebook.ads.internal.view.n)
.class public Lcom/facebook/ads/internal/view/n;
.super Lcom/facebook/ads/internal/view/e/b;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/ads/internal/view/e/b/k;

.field private final d:Lcom/facebook/ads/internal/view/e/b/i;

.field private final e:Lcom/facebook/ads/internal/view/e/b/c;

.field private final f:Lcom/facebook/ads/internal/adapters/ah;

.field private g:Lcom/facebook/ads/internal/m/c;

.field private h:Lcom/facebook/ads/internal/view/e/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/view/o;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/ads/NativeAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/n$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$1;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->c:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/n$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$2;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/n$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$3;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/ah;-><init>(Lcom/facebook/ads/internal/view/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/n$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$1;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->c:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/n$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$2;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/n$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$3;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/ah;-><init>(Lcom/facebook/ads/internal/view/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/n$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$1;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->c:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/n$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$2;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/n$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$3;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/ah;-><init>(Lcom/facebook/ads/internal/view/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/n$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$1;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->c:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/n$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$2;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/n$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/n$3;-><init>(Lcom/facebook/ads/internal/view/n;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/ah;-><init>(Lcom/facebook/ads/internal/view/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/n;->m()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/view/o;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must setVideoReportUri first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->j:Landroid/net/Uri;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->l:Ljava/lang/String;

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must setVideoURI or setVideoMPD first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string v0, "useNativeCtaButton"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "viewType"

    sget-object v1, Lcom/facebook/ads/internal/settings/a$a;->e:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "videoURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->j:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clientToken"

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->k:Ljava/lang/String;

    if-nez v0, :cond_73

    const-string v0, ""

    :goto_41
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoMPD"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "predefinedOrientationKey"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "videoSeekTime"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "uniqueId"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoLogger"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c;->g()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void

    :cond_73
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->k:Ljava/lang/String;

    goto :goto_41
.end method

.method private m()V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/n;->c:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/n;->d:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/n;->a(Landroid/content/Intent;)V

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/n;->a(Z)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/n;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_30

    :goto_1a
    return-void

    :catch_1b
    move-exception v2

    :try_start_1c
    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_1a

    :catch_25
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    goto :goto_1a

    :catch_30
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c;->a()V

    :cond_9
    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->i:Ljava/lang/String;

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    new-instance v0, Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/n;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/n;->g:Lcom/facebook/ads/internal/m/c;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/facebook/ads/internal/view/e/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/e/b;Ljava/lang/String;)V

    :goto_1c
    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    :cond_9
    return-void
.end method

.method public getListener()Lcom/facebook/ads/internal/view/o;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/view/o;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/b;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ah;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->f:Lcom/facebook/ads/internal/adapters/ah;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ah;->b()V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/b;->onDetachedFromWindow()V

    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/internal/m/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->g:Lcom/facebook/ads/internal/m/c;

    return-void
.end method

.method public setEnableBackgroundVideo(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->a:Lcom/facebook/ads/internal/view/e/d/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/e/d/c;->setBackgroundPlaybackEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/o;)V
    .registers 2
    .param p1    # Lcom/facebook/ads/internal/view/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->n:Lcom/facebook/ads/internal/view/o;

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .registers 2
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->o:Lcom/facebook/ads/NativeAd;

    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->m:Ljava/lang/String;

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must setVideoReportUri first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->l:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/e/b;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->h:Lcom/facebook/ads/internal/view/e/c;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must setVideoReportUri first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->j:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/e/b;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.n.AnonymousClass1 (com.facebook.ads.internal.view.n$1)
.class Lcom/facebook/ads/internal/view/n$1;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/n;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$1;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/n$1;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$1;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$1;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/o;->c()V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.n.AnonymousClass2 (com.facebook.ads.internal.view.n$2)
.class Lcom/facebook/ads/internal/view/n$2;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/n;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/n$2;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/o;->b()V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.n.AnonymousClass3 (com.facebook.ads.internal.view.n$3)
.class Lcom/facebook/ads/internal/view/n$3;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/n;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$3;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/n$3;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$3;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$3;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/o;->h()V

    goto :goto_8
.end method
