###### Class com.facebook.ads.internal.d.b (com.facebook.ads.internal.d.b)
.class public Lcom/facebook/ads/internal/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/d/b$b;,
        Lcom/facebook/ads/internal/d/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:Lcom/facebook/ads/internal/d/c;

.field private final f:Lcom/facebook/ads/internal/d/d;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/b;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/b;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/facebook/ads/internal/d/c;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->e:Lcom/facebook/ads/internal/d/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/d/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Lcom/facebook/ads/internal/d/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/d/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/d/b;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/d/b;)Lcom/facebook/ads/internal/d/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->e:Lcom/facebook/ads/internal/d/c;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/d/b;)Lcom/facebook/ads/internal/d/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Lcom/facebook/ads/internal/d/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/d/a;)V
    .registers 5
    .param p1    # Lcom/facebook/ads/internal/d/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/ads/internal/d/b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/facebook/ads/internal/d/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/ads/internal/d/b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/ads/internal/d/b$1;-><init>(Lcom/facebook/ads/internal/d/b;Ljava/util/ArrayList;Lcom/facebook/ads/internal/d/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->g:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/internal/d/b$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/d/b$b;-><init>(Lcom/facebook/ads/internal/d/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->g:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/internal/d/b$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/ads/internal/d/b$a;-><init>(Lcom/facebook/ads/internal/d/b;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->f:Lcom/facebook/ads/internal/d/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/d/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.d.b.AnonymousClass1 (com.facebook.ads.internal.d.b$1)
.class Lcom/facebook/ads/internal/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/ads/internal/d/a;

.field final synthetic c:Lcom/facebook/ads/internal/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/b;Ljava/util/ArrayList;Lcom/facebook/ads/internal/d/a;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b$1;->c:Lcom/facebook/ads/internal/d/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/d/b$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/internal/d/b$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {}, Lcom/facebook/ads/internal/d/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    :try_start_29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_3c} :catch_3d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_3c} :catch_65

    goto :goto_2d

    :catch_3d
    move-exception v0

    :goto_3e
    invoke-static {}, Lcom/facebook/ads/internal/d/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while executing cache downloads."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1;->c:Lcom/facebook/ads/internal/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/d/b$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/d/b$1$1;-><init>(Lcom/facebook/ads/internal/d/b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1;->c:Lcom/facebook/ads/internal/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/d/b$1$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/d/b$1$2;-><init>(Lcom/facebook/ads/internal/d/b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    :catch_65
    move-exception v0

    goto :goto_3e
.end method

###### Class com.facebook.ads.internal.d.b.AnonymousClass1.RunnableC00101 (com.facebook.ads.internal.d.b$1$1)
.class Lcom/facebook/ads/internal/d/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/d/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b$1$1;->a:Lcom/facebook/ads/internal/d/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1$1;->a:Lcom/facebook/ads/internal/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/d/b$1;->b:Lcom/facebook/ads/internal/d/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1$1;->a:Lcom/facebook/ads/internal/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/d/b$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/d/a;->b()V

    :cond_d
    return-void
.end method

###### Class com.facebook.ads.internal.d.b.AnonymousClass1.AnonymousClass2 (com.facebook.ads.internal.d.b$1$2)
.class Lcom/facebook/ads/internal/d/b$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/d/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b$1$2;->a:Lcom/facebook/ads/internal/d/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1$2;->a:Lcom/facebook/ads/internal/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/d/b$1;->b:Lcom/facebook/ads/internal/d/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$1$2;->a:Lcom/facebook/ads/internal/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/d/b$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/d/a;->a()V

    :cond_d
    return-void
.end method

###### Class com.facebook.ads.internal.d.b.a (com.facebook.ads.internal.d.b$a)
.class Lcom/facebook/ads/internal/d/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/d/b;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/d/b;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b$a;->a:Lcom/facebook/ads/internal/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/d/b$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/internal/d/b$a;->c:I

    iput p4, p0, Lcom/facebook/ads/internal/d/b$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$a;->a:Lcom/facebook/ads/internal/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/b;->b(Lcom/facebook/ads/internal/d/b;)Lcom/facebook/ads/internal/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/d/b$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/ads/internal/d/b$a;->c:I

    iget v3, p0, Lcom/facebook/ads/internal/d/b$a;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/d/b$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.d.b.CallableC0011b (com.facebook.ads.internal.d.b$b)
.class Lcom/facebook/ads/internal/d/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/d/b;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/d/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b$b;->a:Lcom/facebook/ads/internal/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/d/b$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b$b;->a:Lcom/facebook/ads/internal/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/b;->c(Lcom/facebook/ads/internal/d/b;)Lcom/facebook/ads/internal/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/d/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/d/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/d/b$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
