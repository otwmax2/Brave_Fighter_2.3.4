###### Class com.facebook.ads.internal.p.b.g (com.facebook.ads.internal.p.b.g)
.class final Lcom/facebook/ads/internal/p/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/p/b/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/facebook/ads/internal/p/b/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/p/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/ads/internal/p/b/b;

.field private final f:Lcom/facebook/ads/internal/p/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/b/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/ads/internal/p/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/facebook/ads/internal/p/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->f:Lcom/facebook/ads/internal/p/b/c;

    new-instance v0, Lcom/facebook/ads/internal/p/b/g$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/g;->d:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/internal/p/b/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->e:Lcom/facebook/ads/internal/p/b/b;

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/g;->e()Lcom/facebook/ads/internal/p/b/e;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Lcom/facebook/ads/internal/p/b/e;
    .registers 5

    new-instance v0, Lcom/facebook/ads/internal/p/b/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/p/b/h;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/p/b/a/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/g;->f:Lcom/facebook/ads/internal/p/b/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/p/b/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/g;->f:Lcom/facebook/ads/internal/p/b/c;

    iget-object v3, v3, Lcom/facebook/ads/internal/p/b/c;->c:Lcom/facebook/ads/internal/p/b/a/a;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/p/b/a/b;-><init>(Ljava/io/File;Lcom/facebook/ads/internal/p/b/a/a;)V

    new-instance v2, Lcom/facebook/ads/internal/p/b/e;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/internal/p/b/e;-><init>(Lcom/facebook/ads/internal/p/b/h;Lcom/facebook/ads/internal/p/b/a/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->e:Lcom/facebook/ads/internal/p/b/b;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/p/b/e;->a(Lcom/facebook/ads/internal/p/b/b;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/p/b/e;->a(Lcom/facebook/ads/internal/p/b/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/e;->a()V

    iput-object v1, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/p/b/d;Ljava/net/Socket;)V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/g;->c()V

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->c:Lcom/facebook/ads/internal/p/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/internal/p/b/e;->a(Lcom/facebook/ads/internal/p/b/d;Ljava/net/Socket;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/g;->d()V

    return-void

    :catchall_11
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/g;->d()V

    throw v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.internal.p.b.g.a (com.facebook.ads.internal.p.b.g$a)
.class final Lcom/facebook/ads/internal/p/b/g$a;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/facebook/ads/internal/p/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/p/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/p/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/g$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/g$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/b/g$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/g$a;->a:Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/ads/internal/p/b/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_6

    :cond_1e
    return-void
.end method
