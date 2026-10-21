###### Class rx.internal.operators.BlockingOperatorMostRecent (rx.internal.operators.BlockingOperatorMostRecent)
.class public final Lrx/internal/operators/BlockingOperatorMostRecent;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$1;

    invoke-direct {v0, p1, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$1;-><init>(Ljava/lang/Object;Lrx/Observable;)V

    return-object v0
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.AnonymousClass1 (rx.internal.operators.BlockingOperatorMostRecent$1)
.class final Lrx/internal/operators/BlockingOperatorMostRecent$1;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/Observable;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v0, "mostRecentObserver":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 59
    invoke-virtual {v0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->getIterable()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.MostRecentObserver (rx.internal.operators.BlockingOperatorMostRecent$MostRecentObserver)
.class final Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MostRecentObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 65
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 69
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public getIterable()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;-><init>(Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 85
    return-void
.end method

###### Class rx.internal.operators.BlockingOperatorMostRecent.MostRecentObserver.AnonymousClass1 (rx.internal.operators.BlockingOperatorMostRecent$MostRecentObserver$1)
.class Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->getIterable()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private buf:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;


# direct methods
.method constructor <init>(Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;)V
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    const/4 v2, 0x0

    .line 109
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 110
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    .line 112
    :cond_b
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 113
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1d

    .line 121
    :catchall_1d
    move-exception v0

    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    throw v0

    .line 115
    :cond_21
    :try_start_21
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 116
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 118
    :cond_3c
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->this$0:Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v0, v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_1d

    move-result-object v0

    .line 121
    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;->buf:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver$1;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
