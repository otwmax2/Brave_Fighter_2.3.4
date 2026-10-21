###### Class rx.internal.operators.OperatorSubscribeOn (rx.internal.operators.OperatorSubscribeOn)
.class public final Lrx/internal/operators/OperatorSubscribeOn;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Scheduler;)V
    .registers 3
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    .line 37
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn;->source:Lrx/Observable;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 43
    .local v0, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OperatorSubscribeOn$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 97
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1 (rx.internal.operators.OperatorSubscribeOn$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSubscribeOn;

.field final synthetic val$inner:Lrx/Scheduler$Worker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1;, "Lrx/internal/operators/OperatorSubscribeOn.1;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 50
    .local v1, "t":Ljava/lang/Thread;
    new-instance v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {v0, p0, v2, v1}, Lrx/internal/operators/OperatorSubscribeOn$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Subscriber;Ljava/lang/Thread;)V

    .line 94
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1;->this$0:Lrx/internal/operators/OperatorSubscribeOn;

    iget-object v2, v2, Lrx/internal/operators/OperatorSubscribeOn;->source:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 95
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C01911 (rx.internal.operators.OperatorSubscribeOn$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1;Lrx/Subscriber;Ljava/lang/Thread;)V
    .registers 4

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$t:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 72
    return-void

    .line 70
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 61
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 63
    return-void

    .line 61
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 91
    return-void
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C01911.C01921 (rx.internal.operators.OperatorSubscribeOn$1$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

.field final synthetic val$p:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1;Lrx/Producer;)V
    .registers 3

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$p:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->val$t:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$p:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 89
    :goto_f
    return-void

    .line 82
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->this$2:Lrx/internal/operators/OperatorSubscribeOn$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1;->this$1:Lrx/internal/operators/OperatorSubscribeOn$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1;->val$inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_f
.end method

###### Class rx.internal.operators.OperatorSubscribeOn.AnonymousClass1.C01911.C01921.C01931 (rx.internal.operators.OperatorSubscribeOn$1$1$1$1)
.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1;J)V
    .registers 4

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iput-wide p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->this$3:Lrx/internal/operators/OperatorSubscribeOn$1$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1;->val$p:Lrx/Producer;

    iget-wide v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$n:J

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    .line 86
    return-void
.end method
