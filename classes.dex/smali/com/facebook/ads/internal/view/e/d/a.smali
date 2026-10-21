###### Class com.facebook.ads.internal.view.e.d.a (com.facebook.ads.internal.view.e.d.a)
.class public Lcom/facebook/ads/internal/view/e/d/a;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/internal/view/e/d/c;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/ads/internal/view/e/d/e;

.field private e:Landroid/view/Surface;

.field private f:Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/widget/MediaController;

.field private h:Lcom/facebook/ads/internal/view/e/d/d;

.field private i:Lcom/facebook/ads/internal/view/e/d/d;

.field private j:Lcom/facebook/ads/internal/view/e/d/d;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/facebook/ads/internal/view/e/a/a;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/view/e/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/e/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    return-object v0
.end method

.method private f()V
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    if-nez v0, :cond_5c

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->l:Landroid/view/View;

    if-nez v0, :cond_a4

    move-object v0, p0

    :goto_49
    invoke-virtual {v2, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    new-instance v2, Lcom/facebook/ads/internal/view/e/d/a$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/e/d/a$1;-><init>(Lcom/facebook/ads/internal/view/e/d/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_5c
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    if-eqz v0, :cond_91

    :cond_6c
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "ads"

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->b:Landroid/net/Uri;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_91
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v6}, Lcom/facebook/ads/internal/view/e/d/a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_a3
    return-void

    :cond_a4
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->l:Landroid/view/View;

    goto :goto_49
.end method

.method private g()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_17
    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    return-void
.end method

.method private setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq p1, v0, :cond_18

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->d:Lcom/facebook/ads/internal/view/e/d/e;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->d:Lcom/facebook/ads/internal/view/e/d/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/e/d/e;->a(Lcom/facebook/ads/internal/view/e/d/d;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Z)V

    :cond_8
    return-void
.end method

.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :goto_10
    return-void

    :cond_11
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->q:J

    goto :goto_10
.end method

.method public a(Lcom/facebook/ads/internal/view/e/a/a;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setup(Landroid/net/Uri;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_f

    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_f
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_a
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    return-void
.end method

.method public c()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_15
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/a;->g()V

    return-void
.end method

.method public getCurrentPosition()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDuration()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_5
.end method

.method public getInitialBufferTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->p:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/internal/view/e/a/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/internal/view/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/internal/view/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getVolume()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    return v0
.end method

.method public onLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/e/d/a;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/view/e/d/a;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    if-lez v2, :cond_3a

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    if-lez v2, :cond_3a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_4e

    if-ne v5, v3, :cond_4e

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_3e

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    div-int/2addr v1, v2

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setMeasuredDimension(II)V

    return-void

    :cond_3e
    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_8a

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3a

    :cond_4e
    if-ne v4, v3, :cond_5c

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_87

    if-le v1, v0, :cond_87

    move v1, v2

    goto :goto_3a

    :cond_5c
    if-ne v5, v3, :cond_6a

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_3a

    if-le v1, v2, :cond_3a

    move v1, v2

    goto :goto_3a

    :cond_6a
    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    if-ne v5, v6, :cond_84

    if-le v1, v0, :cond_84

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    div-int/2addr v1, v3

    :goto_78
    if-ne v4, v6, :cond_3a

    if-le v1, v2, :cond_3a

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3a

    :cond_84
    move v0, v1

    move v1, v3

    goto :goto_78

    :cond_87
    move v0, v1

    move v1, v2

    goto :goto_3a

    :cond_8a
    move v1, v2

    goto :goto_3a
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->h:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->printStackTrace()V

    const-string v0, "[ExoPlayer] Error during playback of ExoPlayer"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 9

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_9e

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_6

    :pswitch_d
    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->u:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->d:Lcom/facebook/ads/internal/view/e/d/e;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->getCurrentPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/internal/view/e/d/e;->a(II)V

    goto :goto_6

    :pswitch_20
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->o:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->p:J

    :cond_2f
    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setRequestedVolume(F)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->q:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4f

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->q:J

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iput-wide v4, p0, Lcom/facebook/ads/internal/view/e/d/a;->q:J

    :cond_4f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_65

    if-nez p1, :cond_65

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    if-eqz v0, :cond_65

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_6

    :cond_65
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->i:Lcom/facebook/ads/internal/view/e/d/d;

    goto :goto_6

    :pswitch_82
    if-eqz p1, :cond_89

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    :cond_89
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    if-nez p1, :cond_99

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    :cond_99
    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->m:Z

    goto/16 :goto_6

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_20
        :pswitch_82
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .registers 1

    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_9
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    goto :goto_14
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/a;->e:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_16
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    :goto_20
    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Z)V

    :cond_2e
    return v2

    :cond_2f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    goto :goto_20
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6

    iput p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    iput p2, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->r:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->s:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->requestLayout()V

    :cond_f
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->g:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_14
    if-nez p1, :cond_32

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    :goto_20
    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/a;->a()V

    goto :goto_7

    :cond_2f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    goto :goto_20

    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->k:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->j:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->x:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    goto :goto_7
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_a

    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/a;->a:Ljava/lang/String;

    const-string v1, "Google always throw an exception with setBackgroundDrawable on Nougat above. so we silently ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->w:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->l:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/a$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/a$3;-><init>(Lcom/facebook/ads/internal/view/e/d/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_a

    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/a;->a:Ljava/lang/String;

    const-string v1, "Google always throw an exception with setForeground on Nougat above. so we silently ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setFullScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->n:Z

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->v:Z

    if-nez v0, :cond_10

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/a$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/a$2;-><init>(Lcom/facebook/ads/internal/view/e/d/a;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    return-void
.end method

.method public setRequestedVolume(F)V
    .registers 4

    iput p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->t:F

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_17
    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->y:Z

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/view/e/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->d:Lcom/facebook/ads/internal/view/e/d/e;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/a;->g()V

    :cond_7
    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a;->b:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/e/d/a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/a;->f()V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.d.a.AnonymousClass1 (com.facebook.ads.internal.view.e.d.a$1)
.class Lcom/facebook/ads/internal/view/e/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/d/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getBufferPercentage()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/d/a;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/d/a;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/d/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/d/a;->a(Z)V

    return-void
.end method

.method public seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/d/a;->a(I)V

    return-void
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$1;->a:Lcom/facebook/ads/internal/view/e/d/a;

    sget-object v1, Lcom/facebook/ads/internal/view/e/a/a;->b:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/d/a;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.d.a.AnonymousClass2 (com.facebook.ads.internal.view.e.d.a$2)
.class Lcom/facebook/ads/internal/view/e/d/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/d/a;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a$2;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$2;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$2;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$2;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_24
    :goto_24
    return v1

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$2;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_24
.end method

###### Class com.facebook.ads.internal.view.e.d.a.AnonymousClass3 (com.facebook.ads.internal.view.e.d.a$3)
.class Lcom/facebook/ads/internal/view/e/d/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/d/a;->setControlsAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/a$3;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$3;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$3;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$3;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_24
    :goto_24
    return v1

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/a$3;->a:Lcom/facebook/ads/internal/view/e/d/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/a;->b(Lcom/facebook/ads/internal/view/e/d/a;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_24
.end method
