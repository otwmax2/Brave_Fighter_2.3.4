###### Class com.vungle.publisher.yd (com.vungle.publisher.yd)
.class public Lcom/vungle/publisher/yd;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lrx/Scheduler;


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/yd;->a:Lrx/Scheduler;

    .line 37
    return-void
.end method


# virtual methods
.method synthetic a(ILjava/lang/String;Lrx/Observable;)Lrx/Observable;
    .registers 6

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lrx/Observable;->range(II)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/yd$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/yd$2;-><init>(Lcom/vungle/publisher/yd;I)V

    invoke-virtual {p3, v0, v1}, Lrx/Observable;->zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/yd$1;

    invoke-direct {v1, p0, p2}, Lcom/vungle/publisher/yd$1;-><init>(Lcom/vungle/publisher/yd;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public a(ILjava/lang/String;)Lrx/functions/Func1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    .line 45
    invoke-static {p0, v0, p2}, Lcom/vungle/publisher/ye;->a(Lcom/vungle/publisher/yd;ILjava/lang/String;)Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lrx/functions/Func1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 40
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lcom/vungle/publisher/yd;->a(ILjava/lang/String;)Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.yd.AnonymousClass1 (com.vungle.publisher.yd$1)
.class Lcom/vungle/publisher/yd$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yd;->a(ILjava/lang/String;Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Integer;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/yd;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yd;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vungle/publisher/yd$1;->b:Lcom/vungle/publisher/yd;

    iput-object p2, p0, Lcom/vungle/publisher/yd$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lrx/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    const v2, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/zn;->a(III)I

    move-result v0

    .line 61
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/yd$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/vungle/publisher/yd$1;->b:Lcom/vungle/publisher/yd;

    iget-object v3, v3, Lcom/vungle/publisher/yd;->a:Lrx/Scheduler;

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/yd$1;->a(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.yd.AnonymousClass2 (com.vungle.publisher.yd$2)
.class Lcom/vungle/publisher/yd$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yd;->a(ILjava/lang/String;Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/vungle/publisher/yd;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yd;I)V
    .registers 3

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vungle/publisher/yd$2;->b:Lcom/vungle/publisher/yd;

    iput p2, p0, Lcom/vungle/publisher/yd$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5

    .prologue
    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/vungle/publisher/yd$2;->a:I

    if-lt v0, v1, :cond_d

    .line 50
    invoke-static {p1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 52
    :cond_d
    return-object p2
.end method

.method public synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/yd$2;->a(Ljava/lang/Throwable;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
