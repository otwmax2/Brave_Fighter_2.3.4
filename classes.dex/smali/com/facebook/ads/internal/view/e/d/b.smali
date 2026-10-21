###### Class com.facebook.ads.internal.view.e.d.b (com.facebook.ads.internal.view.e.d.b)
.class public Lcom/facebook/ads/internal/view/e/d/b;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/internal/view/e/d/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/facebook/ads/internal/view/e/d/e;

.field private c:Landroid/view/Surface;

.field private d:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/MediaController;

.field private f:Lcom/facebook/ads/internal/view/e/d/d;

.field private g:Lcom/facebook/ads/internal/view/e/d/d;

.field private h:Lcom/facebook/ads/internal/view/e/d/d;

.field private i:Z

.field private j:Landroid/view/View;

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:I

.field private r:Z

.field private t:I

.field private u:Z

.field private v:Lcom/facebook/ads/internal/view/e/a/a;

.field private final w:Landroid/widget/MediaController$MediaPlayerControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/view/e/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$1;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->w:Landroid/widget/MediaController$MediaPlayerControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$1;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->w:Landroid/widget/MediaController$MediaPlayerControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$1;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->w:Landroid/widget/MediaController$MediaPlayerControl;

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

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->a:Lcom/facebook/ads/internal/view/e/a/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$1;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->w:Landroid/widget/MediaController$MediaPlayerControl;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a(Landroid/view/Surface;)Z
    .registers 6
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_d

    const/4 v0, 0x1

    goto :goto_5

    :catch_d
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    const-string v3, "The MediaPlayer failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/d/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    return-object v0
.end method

.method private f()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private g()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_d

    const/4 v0, 0x1

    goto :goto_5

    :catch_d
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    const-string v3, "The MediaPlayer failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private h()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private i()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq p1, v0, :cond_f

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->b:Lcom/facebook/ads/internal/view/e/d/e;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->b:Lcom/facebook/ads/internal/view/e/d/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/e/d/e;->a(Lcom/facebook/ads/internal/view/e/d/d;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Z)V

    :cond_8
    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_1f

    if-lez p1, :cond_1f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iput p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iput p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    goto :goto_1f
.end method

.method public a(Lcom/facebook/ads/internal/view/e/a/a;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_2e

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setup(Landroid/net/Uri;)V

    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/facebook/ads/internal/view/e/d/b;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_3b
    return-void

    :cond_3c
    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_2e
.end method

.method public a(Z)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->i()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    if-eqz p1, :cond_18

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_e

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_e

    :cond_29
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_e
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    return-void
.end method

.method public c()V
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_12

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->g()Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_31
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    return-void
.end method

.method public d()Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_e

    :cond_c
    move v0, v1

    :cond_d
    :goto_d
    return v0

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_16
    if-ge v2, v4, :cond_24

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1d} :catch_26

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    move v0, v1

    goto :goto_d

    :catch_26
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    const-string v3, "Couldn\'t retrieve video information"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->a(Landroid/view/Surface;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->g()Z

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    :cond_30
    return-void
.end method

.method public getCurrentPosition()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :cond_b
    return v0
.end method

.method public getDuration()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v1, v2, :cond_5

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_5
.end method

.method public getInitialBufferTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->l:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/internal/view/e/a/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/internal/view/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/internal/view/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getVolume()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_a
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->a(I)V

    iput v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->q:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    :goto_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->h:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->c()V

    goto :goto_1a
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    packed-switch p2, :pswitch_data_18

    :cond_3
    :goto_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->f:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_3

    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    goto :goto_3

    nop

    :pswitch_data_18
    .packed-switch 0x2bd
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/e/d/b;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/view/e/d/b;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    if-lez v2, :cond_3a

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

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

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_3e

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    div-int/2addr v1, v2

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setMeasuredDimension(II)V

    return-void

    :cond_3e
    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_8a

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3a

    :cond_4e
    if-ne v4, v3, :cond_5c

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_87

    if-le v1, v0, :cond_87

    move v1, v2

    goto :goto_3a

    :cond_5c
    if-ne v5, v3, :cond_6a

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_3a

    if-le v1, v2, :cond_3a

    move v1, v2

    goto :goto_3a

    :cond_6a
    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    if-ne v5, v6, :cond_84

    if-le v1, v0, :cond_84

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    div-int/2addr v1, v3

    :goto_78
    if-ne v4, v6, :cond_3a

    if-le v1, v2, :cond_3a

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

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

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    if-nez v0, :cond_30

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->j:Landroid/view/View;

    if-nez v0, :cond_66

    move-object v0, p0

    :goto_20
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->w:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_30
    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setRequestedVolume(F)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    if-lez v0, :cond_5a

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_51

    iput v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    :cond_51
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    :cond_5a
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->g:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    :cond_65
    return-void

    :cond_66
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->j:Landroid/view/View;

    goto :goto_20
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->b:Lcom/facebook/ads/internal/view/e/d/e;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->b:Lcom/facebook/ads/internal/view/e/d/e;

    iget v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->t:I

    iget v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/d/e;->a(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->k:I

    goto :goto_4
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->h:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->e()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    goto :goto_1b
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->a(Landroid/view/Surface;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/d/b;->c:Landroid/view/Surface;

    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    :goto_1a
    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Z)V

    :cond_28
    return v2

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    goto :goto_1a
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->m:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->n:I

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->requestLayout()V

    :cond_17
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->e:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_14
    if-nez p1, :cond_32

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    :goto_20
    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->a()V

    goto :goto_7

    :cond_2f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    goto :goto_20

    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->i:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->h:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->v:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

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

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    const-string v1, "Google always throw an exception with setBackgroundDrawable on Nougat above. so we silently ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->r:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->j:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$3;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

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

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    const-string v1, "Google always throw an exception with setForeground on Nougat above. so we silently ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setFullScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->p:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->u:Z

    if-nez v0, :cond_12

    new-instance v0, Lcom/facebook/ads/internal/view/e/d/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/d/b$2;-><init>(Lcom/facebook/ads/internal/view/e/d/b;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/d/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    return-void
.end method

.method public setRequestedVolume(F)V
    .registers 4

    iput p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->o:F

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->f:Lcom/facebook/ads/internal/view/e/d/d;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_17
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/view/e/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->b:Lcom/facebook/ads/internal/view/e/d/e;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_79

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/d/b;->g()Z

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/e/d/b;->a(Landroid/view/Surface;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    :goto_10
    :try_start_10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "asset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_99

    move-result v1

    if-eqz v1, :cond_11c

    :try_start_1c
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_30} :catch_12b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_bb
    .catchall {:try_start_1c .. :try_end_30} :catchall_fb

    move-result-object v6

    :try_start_31
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_40} :catch_12d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_128
    .catchall {:try_start_31 .. :try_end_40} :catchall_125

    if-eqz v6, :cond_45

    :try_start_42
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_99

    :cond_45
    :goto_45
    const/4 v1, 0x0

    :try_start_46
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b;->d:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->b:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_68} :catch_99

    :goto_68
    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/e/d/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/d/b;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v7, v7}, Lcom/facebook/ads/internal/view/e/d/b;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_78
    return-void

    :cond_79
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto :goto_10

    :catch_7f
    move-exception v1

    :try_start_80
    sget-object v2, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_98} :catch_99

    goto :goto_45

    :catch_99
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/d/d;->h:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot prepare media player with SurfaceTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :catch_bb
    move-exception v1

    :goto_bc
    :try_start_bc
    sget-object v3, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open assets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->h:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->setVideoState(Lcom/facebook/ads/internal/view/e/d/d;)V
    :try_end_d9
    .catchall {:try_start_bc .. :try_end_d9} :catchall_fb

    if-eqz v2, :cond_45

    :try_start_db
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_99

    goto/16 :goto_45

    :catch_e0
    move-exception v1

    :try_start_e1
    sget-object v2, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f9} :catch_99

    goto/16 :goto_45

    :catchall_fb
    move-exception v1

    :goto_fc
    if-eqz v2, :cond_101

    :try_start_fe
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_99

    :cond_101
    :goto_101
    :try_start_101
    throw v1

    :catch_102
    move-exception v2

    sget-object v3, Lcom/facebook/ads/internal/view/e/d/b;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    :cond_11c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_123} :catch_99

    goto/16 :goto_45

    :catchall_125
    move-exception v1

    move-object v2, v6

    goto :goto_fc

    :catch_128
    move-exception v1

    move-object v2, v6

    goto :goto_bc

    :catch_12b
    move-exception v1

    goto :goto_bc

    :catch_12d
    move-exception v1

    move-object v2, v6

    goto :goto_bc
.end method

###### Class com.facebook.ads.internal.view.e.d.b.AnonymousClass1 (com.facebook.ads.internal.view.e.d.b$1)
.class Lcom/facebook/ads/internal/view/e/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

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

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getBufferPercentage()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/d/b;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/d/b;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

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

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->a(Z)V

    return-void
.end method

.method public seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/d/b;->a(I)V

    return-void
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$1;->a:Lcom/facebook/ads/internal/view/e/d/b;

    sget-object v1, Lcom/facebook/ads/internal/view/e/a/a;->b:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/d/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.d.b.AnonymousClass2 (com.facebook.ads.internal.view.e.d.b$2)
.class Lcom/facebook/ads/internal/view/e/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/d/b;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->b(Lcom/facebook/ads/internal/view/e/d/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_9

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$2;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_9
.end method

###### Class com.facebook.ads.internal.view.e.d.b.AnonymousClass3 (com.facebook.ads.internal.view.e.d.b$3)
.class Lcom/facebook/ads/internal/view/e/d/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/d/b;->setControlsAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->b(Lcom/facebook/ads/internal/view/e/d/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_9

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/d/b$3;->a:Lcom/facebook/ads/internal/view/e/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/d/b;->c(Lcom/facebook/ads/internal/view/e/d/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_9
.end method
