###### Class rx.internal.operators.OperatorTakeUntilPredicate (rx.internal.operators.OperatorTakeUntilPredicate)
.class public final Lrx/internal/operators/OperatorTakeUntilPredicate;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;
    }
.end annotation

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
.field final stopPredicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    .local p1, "stopPredicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate;->stopPredicate:Lrx/functions/Func1;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeUntilPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;-><init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;)V

    .line 39
    .local v0, "parent":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 40
    new-instance v1, Lrx/internal/operators/OperatorTakeUntilPredicate$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorTakeUntilPredicate$1;-><init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 47
    return-object v0
.end method

###### Class rx.internal.operators.OperatorTakeUntilPredicate.AnonymousClass1 (rx.internal.operators.OperatorTakeUntilPredicate$1)
.class Lrx/internal/operators/OperatorTakeUntilPredicate$1;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntilPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;)V
    .registers 3

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$1;, "Lrx/internal/operators/OperatorTakeUntilPredicate.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$1;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$1;->val$parent:Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$1;, "Lrx/internal/operators/OperatorTakeUntilPredicate.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$1;->val$parent:Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->downstreamRequest(J)V

    .line 44
    return-void
.end method

###### Class rx.internal.operators.OperatorTakeUntilPredicate.ParentSubscriber (rx.internal.operators.OperatorTakeUntilPredicate$ParentSubscriber)
.class final Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeUntilPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeUntilPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 56
    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    .line 57
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->request(J)V

    .line 94
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 82
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 84
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 89
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 91
    :cond_9
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 61
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 65
    :try_start_6
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->this$0:Lrx/internal/operators/OperatorTakeUntilPredicate;

    iget-object v2, v2, Lrx/internal/operators/OperatorTakeUntilPredicate;->stopPredicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_21

    move-result v1

    .line 72
    .local v1, "stop":Z
    if-eqz v1, :cond_20

    .line 73
    iput-boolean v3, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 74
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    .line 77
    .end local v1    # "stop":Z
    :cond_20
    :goto_20
    return-void

    .line 66
    :catch_21
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->done:Z

    .line 68
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;->unsubscribe()V

    goto :goto_20
.end method
