###### Class com.facebook.ads.MediaViewVideoRenderer (com.facebook.ads.MediaViewVideoRenderer)
.class public abstract Lcom/facebook/ads/MediaViewVideoRenderer;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/facebook/ads/NativeAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected b:Lcom/facebook/ads/VideoAutoplayBehavior;

.field final c:Lcom/facebook/ads/internal/view/n;

.field private final e:Lcom/facebook/ads/internal/view/e/b/m;

.field private final f:Lcom/facebook/ads/internal/view/e/b/k;

.field private final g:Lcom/facebook/ads/internal/view/e/b/i;

.field private final h:Lcom/facebook/ads/internal/view/e/b/q;

.field private final i:Lcom/facebook/ads/internal/view/e/b/c;

.field private final j:Lcom/facebook/ads/internal/view/e/b/w;

.field private final k:Lcom/facebook/ads/internal/view/e/b/e;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/MediaViewVideoRenderer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$1;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$2;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$3;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$4;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/e/b/q;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$5;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$6;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/e/b/w;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$7;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/e/b/e;

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    new-instance v0, Lcom/facebook/ads/internal/view/n;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$1;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$2;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$3;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$4;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/e/b/q;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$5;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$6;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/e/b/w;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$7;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/e/b/e;

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    new-instance v0, Lcom/facebook/ads/internal/view/n;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/view/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$1;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$2;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$3;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$4;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/e/b/q;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$5;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$6;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/e/b/w;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$7;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/e/b/e;

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    new-instance v0, Lcom/facebook/ads/internal/view/n;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$1;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$2;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$3;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$4;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/e/b/q;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$5;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$6;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/e/b/w;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$7;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/e/b/e;

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    new-instance v0, Lcom/facebook/ads/internal/view/n;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setEnableBackgroundVideo(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    sget-object v1, Lcom/facebook/ads/internal/q/a/i;->n:Lcom/facebook/ads/internal/q/a/i;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/i;->a(Landroid/view/View;Lcom/facebook/ads/internal/q/a/i;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/e/b/m;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/e/b/q;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/e/b/w;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/e/b/e;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->k()V

    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/facebook/ads/MediaViewVideoRenderer;->d:Ljava/lang/String;

    const-string v1, "disengageSeek called without engageSeek."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    iget-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->m:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/VideoStartReason;->a()Lcom/facebook/ads/internal/view/e/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    goto :goto_b
.end method

.method public final engageSeek()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/facebook/ads/MediaViewVideoRenderer;->d:Ljava/lang/String;

    const-string v1, "engageSeek called without disengageSeek."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/n;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/d/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->m:Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->a(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    goto :goto_b
.end method

.method public final getCurrentTimeMs()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVolume()F
    .registers 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 0.0
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getVolume()F

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 1

    return-void
.end method

.method public onError()V
    .registers 1

    return-void
.end method

.method public onPaused()V
    .registers 1

    return-void
.end method

.method public onPlayed()V
    .registers 1

    return-void
.end method

.method public onPrepared()V
    .registers 1

    return-void
.end method

.method public onSeek()V
    .registers 1

    return-void
.end method

.method public onSeekDisengaged()V
    .registers 1

    return-void
.end method

.method public onSeekEngaged()V
    .registers 1

    return-void
.end method

.method public onVolumeChanged()V
    .registers 1

    return-void
.end method

.method public final pause(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->a(Z)V

    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/VideoStartReason;->a()Lcom/facebook/ads/internal/view/e/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    return-void
.end method

.method public final seekTo(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/facebook/ads/MediaViewVideoRenderer;->d:Ljava/lang/String;

    const-string v1, "Seeking must be preceded by a call to engageSeek, and followed by a call to disengageSeek."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->a(I)V

    goto :goto_b
.end method

.method final setAdEventManager(Lcom/facebook/ads/internal/m/c;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->setAdEventManager(Lcom/facebook/ads/internal/m/c;)V

    return-void
.end method

.method setAutoplay(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    return-void
.end method

.method setAutoplayOnMobile(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    return-void
.end method

.method final setListener(Lcom/facebook/ads/internal/view/o;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->setListener(Lcom/facebook/ads/internal/view/o;)V

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->a:Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setVideoURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setVideoCTA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->e()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-void
.end method

.method public final setVolume(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/n;->setVolume(F)V

    return-void
.end method

.method public shouldAllowBackgroundPlayback()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAutoplay()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/n;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v2, v3, :cond_12

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v3, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v2, v3, :cond_2e

    iget-boolean v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->n:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->o:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/c/d;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/q/c/d$a;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/q/c/d$a;->c:Lcom/facebook/ads/internal/q/c/d$a;

    if-eq v2, v3, :cond_11

    :cond_2c
    move v0, v1

    goto :goto_11

    :cond_2e
    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v3, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method public unsetNativeAd()V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/internal/view/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setVideoMPD(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/view/n;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setVideoCTA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/n;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->a:Lcom/facebook/ads/NativeAd;

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass1 (com.facebook.ads.MediaViewVideoRenderer$1)
.class Lcom/facebook/ads/MediaViewVideoRenderer$1;
.super Lcom/facebook/ads/internal/view/e/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$1;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$1;->a(Lcom/facebook/ads/internal/view/e/b/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$1;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass2 (com.facebook.ads.MediaViewVideoRenderer$2)
.class Lcom/facebook/ads/MediaViewVideoRenderer$2;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$2;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass3 (com.facebook.ads.MediaViewVideoRenderer$3)
.class Lcom/facebook/ads/MediaViewVideoRenderer$3;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPaused()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass4 (com.facebook.ads.MediaViewVideoRenderer$4)
.class Lcom/facebook/ads/MediaViewVideoRenderer$4;
.super Lcom/facebook/ads/internal/view/e/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$4;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/p;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$4;->a(Lcom/facebook/ads/internal/view/e/b/p;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/p;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$4;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeek()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass5 (com.facebook.ads.MediaViewVideoRenderer$5)
.class Lcom/facebook/ads/MediaViewVideoRenderer$5;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$5;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$5;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$5;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onCompleted()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass6 (com.facebook.ads.MediaViewVideoRenderer$6)
.class Lcom/facebook/ads/MediaViewVideoRenderer$6;
.super Lcom/facebook/ads/internal/view/e/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$6;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/v;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$6;->a(Lcom/facebook/ads/internal/view/e/b/v;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/v;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$6;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onVolumeChanged()V

    return-void
.end method

###### Class com.facebook.ads.MediaViewVideoRenderer.AnonymousClass7 (com.facebook.ads.MediaViewVideoRenderer$7)
.class Lcom/facebook/ads/MediaViewVideoRenderer$7;
.super Lcom/facebook/ads/internal/view/e/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$7;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/d;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$7;->a(Lcom/facebook/ads/internal/view/e/b/d;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/d;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer$7;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onError()V

    return-void
.end method
