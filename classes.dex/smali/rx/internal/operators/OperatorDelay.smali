###### Class rx.internal.operators.OperatorDelay (rx.internal.operators.OperatorDelay)
.class public final Lrx/internal/operators/OperatorDelay;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final delay:J

.field final scheduler:Lrx/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 6
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/internal/operators/OperatorDelay;->delay:J

    .line 39
    iput-object p3, p0, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/internal/operators/OperatorDelay;->scheduler:Lrx/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDelay;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDelay;, "Lrx/internal/operators/OperatorDelay<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDelay;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 46
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 47
    new-instance v1, Lrx/internal/operators/OperatorDelay$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lrx/internal/operators/OperatorDelay$1;-><init>(Lrx/internal/operators/OperatorDelay;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V

    return-object v1
.end method

###### Class rx.internal.operators.OperatorDelay.AnonymousClass1 (rx.internal.operators.OperatorDelay$1)
.class Lrx/internal/operators/OperatorDelay$1;
.super Lrx/Subscriber;
.source "OperatorDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDelay;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iput-object p3, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p4, p0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorDelay$1$1;-><init>(Lrx/internal/operators/OperatorDelay$1;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-wide v2, v2, Lrx/internal/operators/OperatorDelay;->delay:J

    iget-object v4, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-object v4, v4, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorDelay$1$2;-><init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1;, "Lrx/internal/operators/OperatorDelay.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorDelay$1$3;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorDelay$1$3;-><init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Object;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-wide v2, v2, Lrx/internal/operators/OperatorDelay;->delay:J

    iget-object v4, p0, Lrx/internal/operators/OperatorDelay$1;->this$0:Lrx/internal/operators/OperatorDelay;

    iget-object v4, v4, Lrx/internal/operators/OperatorDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 92
    return-void
.end method

###### Class rx.internal.operators.OperatorDelay.AnonymousClass1.C01881 (rx.internal.operators.OperatorDelay$1$1)
.class Lrx/internal/operators/OperatorDelay$1$1;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;)V
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$1;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$1;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_12

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 61
    :cond_12
    return-void
.end method

###### Class rx.internal.operators.OperatorDelay.AnonymousClass1.AnonymousClass2 (rx.internal.operators.OperatorDelay$1$2)
.class Lrx/internal/operators/OperatorDelay$1$2;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$2;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$2;, "Lrx/internal/operators/OperatorDelay$1.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_1b

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    .line 73
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$2;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 76
    :cond_1b
    return-void
.end method

###### Class rx.internal.operators.OperatorDelay.AnonymousClass1.AnonymousClass3 (rx.internal.operators.OperatorDelay$1$3)
.class Lrx/internal/operators/OperatorDelay$1$3;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$3;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorDelay$1$3;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$3;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_f

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelay$1$3;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 89
    :cond_f
    return-void
.end method
