###### Class rx.internal.operators.CompletableOnSubscribeConcatIterable (rx.internal.operators.CompletableOnSubscribeConcatIterable)
.class public final Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->sources:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 7
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 39
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_1a

    move-result-object v2

    .line 46
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v2, :cond_26

    .line 47
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 48
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The iterator returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 55
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :goto_19
    return-void

    .line 40
    :catch_1a
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 42
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_26
    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;-><init>(Lrx/CompletableSubscriber;Ljava/util/Iterator;)V

    .line 53
    .local v1, "inner":Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    iget-object v3, v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-interface {p1, v3}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 54
    invoke-virtual {v1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    goto :goto_19
.end method

###### Class rx.internal.operators.CompletableOnSubscribeConcatIterable.ConcatInnerSubscriber (rx.internal.operators.CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber)
.class final Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field final sd:Lrx/subscriptions/SerialSubscription;

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;Ljava/util/Iterator;)V
    .registers 4
    .param p1, "actual"    # Lrx/CompletableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/CompletableSubscriber;",
            "Ljava/util/Iterator",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    .line 68
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 69
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    .line 70
    return-void
.end method


# virtual methods
.method next()V
    .registers 8

    .prologue
    .line 88
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 131
    :cond_8
    :goto_8
    return-void

    .line 92
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v4

    if-nez v4, :cond_8

    .line 96
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 98
    .local v0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_11
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 104
    :try_start_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_25

    move-result v1

    .line 110
    .local v1, "b":Z
    if-nez v1, :cond_2c

    .line 111
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v4}, Lrx/CompletableSubscriber;->onCompleted()V

    goto :goto_8

    .line 105
    .end local v1    # "b":Z
    :catch_25
    move-exception v3

    .line 106
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v4, v3}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 118
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "b":Z
    :cond_2c
    :try_start_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Completable;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_41

    .line 124
    .local v2, "c":Lrx/Completable;
    if-nez v2, :cond_48

    .line 125
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The completable returned is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 119
    .end local v2    # "c":Lrx/Completable;
    :catch_41
    move-exception v3

    .line 120
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v4, v3}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 129
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "c":Lrx/Completable;
    :cond_48
    invoke-virtual {v2, p0}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 130
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_11

    goto :goto_8
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 75
    return-void
.end method
