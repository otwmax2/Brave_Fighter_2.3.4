###### Class com.chartboost.sdk.impl.as (com.chartboost.sdk.impl.as)
.class public Lcom/chartboost/sdk/impl/as;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
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

.field private g:Landroid/view/SurfaceHolder;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "VideoSurfaceView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 78
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 81
    iput-object v2, p0, Lcom/chartboost/sdk/impl/as;->g:Landroid/view/SurfaceHolder;

    .line 82
    iput-object v2, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    .line 96
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->f()V

    .line 97
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    .line 394
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 395
    if-eqz p1, :cond_18

    .line 396
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 399
    :cond_18
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iput v2, p0, Lcom/chartboost/sdk/impl/as;->i:I

    .line 158
    iput v2, p0, Lcom/chartboost/sdk/impl/as;->j:I

    .line 159
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 160
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/as;->setFocusable(Z)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/as;->setFocusableInTouchMode(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->requestFocus()Z

    .line 164
    iput v2, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 165
    iput v2, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 166
    return-void
.end method

.method private g()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_c

    .line 248
    :cond_b
    :goto_b
    return-void

    .line 204
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/as;->a(Z)V

    .line 212
    :try_start_24
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    .line 213
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 214
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->o:I

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 221
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 225
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->e:I
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_81} :catch_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_81} :catch_a8

    goto :goto_b

    .line 235
    :catch_82
    move-exception v0

    .line 236
    const-string v1, "VideoSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iput v4, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 238
    iput v4, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/as;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b

    .line 241
    :catch_a8
    move-exception v0

    .line 242
    const-string v1, "VideoSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    iput v4, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 244
    iput v4, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/as;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_b
.end method

.method private h()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

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

    .line 402
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 404
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 406
    :cond_e
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 407
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->q:I

    .line 446
    :goto_e
    return-void

    .line 444
    :cond_f
    iput p1, p0, Lcom/chartboost/sdk/impl/as;->q:I

    goto :goto_e
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 466
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 347
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->p:Landroid/media/MediaPlayer$OnErrorListener;

    .line 359
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 336
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/as;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 174
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
    .line 180
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/net/Uri;

    .line 181
    iput-object p2, p0, Lcom/chartboost/sdk/impl/as;->c:Ljava/util/Map;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->q:I

    .line 183
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->g()V

    .line 184
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->invalidate()V

    .line 186
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 410
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 413
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 416
    :cond_16
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 417
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 422
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    if-lez v0, :cond_d

    .line 423
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    .line 429
    :goto_c
    return v0

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    .line 426
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    goto :goto_c

    .line 428
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    .line 429
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->d:I

    goto :goto_c
.end method

.method public d()I
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 436
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

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
    .line 324
    iput p2, p0, Lcom/chartboost/sdk/impl/as;->o:I

    .line 325
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 298
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 299
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->e:I

    if-eq v0, v1, :cond_14

    .line 300
    iput v1, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_14

    .line 302
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 305
    :cond_14
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 309
    const-string v0, "VideoSurfaceView"

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

    .line 310
    iput v3, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 311
    iput v3, p0, Lcom/chartboost/sdk/impl/as;->f:I

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->p:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_36

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->p:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 319
    :cond_36
    return v4
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/as;->getDefaultSize(II)I

    move-result v2

    .line 112
    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/as;->getDefaultSize(II)I

    move-result v1

    .line 114
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->i:I

    if-lez v0, :cond_37

    iget v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    if-lez v0, :cond_37

    .line 115
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    int-to-float v0, v0

    iget v3, p0, Lcom/chartboost/sdk/impl/as;->i:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, v2

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    iget v3, p0, Lcom/chartboost/sdk/impl/as;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/chartboost/sdk/impl/as;->j:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 121
    :goto_33
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/as;->setMeasuredDimension(II)V

    .line 122
    return-void

    :cond_37
    move v0, v1

    move v1, v2

    goto :goto_33
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x3

    .line 261
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->e:I

    .line 263
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->i:I

    .line 264
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_1b

    .line 266
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 269
    :cond_1b
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->q:I

    .line 272
    if-eqz v0, :cond_22

    .line 273
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->a(I)V

    .line 275
    :cond_22
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->i:I

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    if-eqz v0, :cond_49

    .line 278
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->i:I

    iget v2, p0, Lcom/chartboost/sdk/impl/as;->j:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 279
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->k:I

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->i:I

    if-ne v0, v1, :cond_48

    iget v0, p0, Lcom/chartboost/sdk/impl/as;->l:I

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->j:I

    if-ne v0, v1, :cond_48

    .line 283
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->f:I

    if-ne v0, v3, :cond_48

    .line 284
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()V

    .line 294
    :cond_48
    :goto_48
    return-void

    .line 290
    :cond_49
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->f:I

    if-ne v0, v3, :cond_48

    .line 291
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()V

    goto :goto_48
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->i:I

    .line 253
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    .line 254
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->i:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/chartboost/sdk/impl/as;->j:I

    if-eqz v0, :cond_1f

    .line 255
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->i:I

    iget v2, p0, Lcom/chartboost/sdk/impl/as;->j:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 257
    :cond_1f
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    iput p3, p0, Lcom/chartboost/sdk/impl/as;->k:I

    .line 364
    iput p4, p0, Lcom/chartboost/sdk/impl/as;->l:I

    .line 365
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->f:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_29

    move v0, v1

    .line 366
    :goto_c
    iget v3, p0, Lcom/chartboost/sdk/impl/as;->i:I

    if-ne v3, p3, :cond_2b

    iget v3, p0, Lcom/chartboost/sdk/impl/as;->j:I

    if-ne v3, p4, :cond_2b

    .line 367
    :goto_14
    iget-object v2, p0, Lcom/chartboost/sdk/impl/as;->h:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    if-eqz v1, :cond_28

    .line 368
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->q:I

    if-eqz v0, :cond_25

    .line 369
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->q:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->a(I)V

    .line 371
    :cond_25
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()V

    .line 373
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 365
    goto :goto_c

    :cond_2b
    move v1, v2

    .line 366
    goto :goto_14
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->g:Landroid/view/SurfaceHolder;

    .line 377
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->g()V

    .line 378
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Landroid/view/SurfaceHolder;

    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/as;->a(Z)V

    .line 384
    return-void
.end method
