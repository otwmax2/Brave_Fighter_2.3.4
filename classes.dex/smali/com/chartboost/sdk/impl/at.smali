###### Class com.chartboost.sdk.impl.at (com.chartboost.sdk.impl.at)
.class public Lcom/chartboost/sdk/impl/at;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/au$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/Surface;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:Landroid/media/MediaPlayer$OnCompletionListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:I

.field private n:Landroid/media/MediaPlayer$OnErrorListener;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v0, "VideoTextureView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->a:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 84
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 87
    iput-object v2, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/Surface;

    .line 88
    iput-object v2, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    .line 100
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->f()V

    .line 101
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    .line 348
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 349
    if-eqz p1, :cond_18

    .line 350
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 353
    :cond_18
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 115
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 116
    invoke-virtual {p0, p0}, Lcom/chartboost/sdk/impl/at;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/at;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/at;->setFocusableInTouchMode(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->requestFocus()Z

    .line 120
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 121
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 122
    return-void
.end method

.method private g()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/Surface;

    if-nez v0, :cond_c

    .line 219
    :cond_b
    :goto_b
    return-void

    .line 172
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/at;->a(Z)V

    .line 180
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()V

    .line 183
    :try_start_27
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->m:I

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_84} :catch_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_84} :catch_ab

    goto :goto_b

    .line 206
    :catch_85
    move-exception v0

    .line 207
    const-string v1, "VideoTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 209
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/at;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b

    .line 212
    :catch_ab
    move-exception v0

    .line 213
    const-string v1, "VideoTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 215
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/at;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b
.end method

.method private h()V
    .registers 4

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 225
    const/16 v1, 0x13

    .line 226
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    const/16 v2, 0x12

    .line 228
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 235
    :goto_26
    return-void

    .line 232
    :catch_27
    move-exception v0

    .line 233
    const-string v1, "play video"

    const-string v2, "read size error"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private i()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 356
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 358
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 360
    :cond_e
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 361
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    .line 400
    :goto_e
    return-void

    .line 398
    :cond_f
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->o:I

    goto :goto_e
.end method

.method public a(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 133
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    if-nez p2, :cond_f

    .line 142
    :cond_e
    :goto_e
    return-void

    .line 135
    :cond_f
    int-to-float v0, p1

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/chartboost/sdk/impl/at;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 136
    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/at;->j:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 138
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    int-to-float v3, p1

    div-float/2addr v1, v3

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/at;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_e
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 326
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnErrorListener;

    .line 338
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 315
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/at;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    .line 149
    iput-object p2, p0, Lcom/chartboost/sdk/impl/at;->c:Ljava/util/Map;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    .line 151
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->g()V

    .line 152
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->requestLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->invalidate()V

    .line 154
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 364
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 367
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 370
    :cond_16
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 371
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 376
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    if-lez v0, :cond_d

    .line 377
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 383
    :goto_c
    return v0

    .line 379
    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 380
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    goto :goto_c

    .line 382
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 383
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    goto :goto_c
.end method

.method public d()I
    .registers 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 390
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 303
    iput p2, p0, Lcom/chartboost/sdk/impl/at;->m:I

    .line 304
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 269
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 270
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eq v0, v1, :cond_14

    .line 271
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_14

    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 276
    :cond_14
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 280
    const-string v0, "VideoTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v0, 0x64

    if-ne p2, v0, :cond_2c

    .line 284
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->g()V

    .line 298
    :cond_2b
    :goto_2b
    return v3

    .line 288
    :cond_2c
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 289
    iput v4, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_2b

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2b
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 248
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 250
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 251
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_1a

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 256
    :cond_1a
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    .line 259
    if-eqz v0, :cond_21

    .line 260
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/at;->a(I)V

    .line 262
    :cond_21
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 263
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    .line 265
    :cond_29
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 419
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/Surface;

    .line 420
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->g()V

    .line 421
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x1

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/Surface;

    .line 427
    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/at;->a(Z)V

    .line 428
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 433
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    .line 434
    :goto_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    .line 435
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    if-eqz v0, :cond_15

    .line 436
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/at;->a(I)V

    .line 438
    :cond_15
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    .line 440
    :cond_18
    return-void

    .line 433
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 445
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 240
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 241
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-eqz v0, :cond_1f

    .line 242
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/at;->a(II)V

    .line 244
    :cond_1f
    return-void
.end method
