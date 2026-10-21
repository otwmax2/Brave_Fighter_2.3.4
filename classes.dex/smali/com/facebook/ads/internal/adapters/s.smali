###### Class com.facebook.ads.internal.adapters.s (com.facebook.ads.internal.adapters.s)
.class public Lcom/facebook/ads/internal/adapters/s;
.super Lcom/facebook/ads/internal/adapters/b;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/facebook/ads/internal/q/c/a;

.field private final e:Lcom/facebook/ads/internal/m/c;

.field private f:Lcom/facebook/ads/internal/adapters/r;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/adapters/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/s;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/c/a;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/adapters/c;)V
    .registers 6

    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/internal/adapters/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/r/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/s;->e:Lcom/facebook/ads/internal/m/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/s;->d:Lcom/facebook/ads/internal/q/c/a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/s;)Lcom/facebook/ads/internal/q/c/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->d:Lcom/facebook/ads/internal/q/c/a;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/s;)Lcom/facebook/ads/internal/adapters/r;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/s;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/r;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->e:Lcom/facebook/ads/internal/m/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/m/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1b
    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/s;->g:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/s;->g:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->d:Lcom/facebook/ads/internal/q/c/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->f:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s;->d:Lcom/facebook/ads/internal/q/c/a;

    new-instance v1, Lcom/facebook/ads/internal/adapters/s$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/adapters/s$1;-><init>(Lcom/facebook/ads/internal/adapters/s;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/c/a;->post(Ljava/lang/Runnable;)Z
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    goto :goto_9

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.ads.internal.adapters.s.AnonymousClass1 (com.facebook.ads.internal.adapters.s$1)
.class Lcom/facebook/ads/internal/adapters/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/s;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/s;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/s;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/s$1;->a:Lcom/facebook/ads/internal/adapters/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s$1;->a:Lcom/facebook/ads/internal/adapters/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/internal/adapters/s;)Lcom/facebook/ads/internal/q/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/facebook/ads/internal/adapters/s;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview already destroyed, cannot activate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/s$1;->a:Lcom/facebook/ads/internal/adapters/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/internal/adapters/s;)Lcom/facebook/ads/internal/q/c/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/s$1;->a:Lcom/facebook/ads/internal/adapters/s;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/s;->b(Lcom/facebook/ads/internal/adapters/s;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/c/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_15
.end method
