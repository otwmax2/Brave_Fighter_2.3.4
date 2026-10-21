###### Class rx.internal.operators.CompletableFlatMapSingleToCompletable (rx.internal.operators.CompletableFlatMapSingleToCompletable)
.class public final Lrx/internal/operators/CompletableFlatMapSingleToCompletable;
.super Ljava/lang/Object;
.source "CompletableFlatMapSingleToCompletable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Completable$OnSubscribe;"
    }
.end annotation


# instance fields
.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field

.field final source:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable<TT;>;"
    .local p1, "source":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;->source:Lrx/Single;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;->mapper:Lrx/functions/Func1;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable<TT;>;"
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "t"    # Lrx/CompletableSubscriber;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable<TT;>;"
    new-instance v0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;

    iget-object v1, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;->mapper:Lrx/functions/Func1;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;-><init>(Lrx/CompletableSubscriber;Lrx/functions/Func1;)V

    .line 42
    .local v0, "parent":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 43
    iget-object v1, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;->source:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 44
    return-void
.end method

###### Class rx.internal.operators.CompletableFlatMapSingleToCompletable.SourceSubscriber (rx.internal.operators.CompletableFlatMapSingleToCompletable$SourceSubscriber)
.class final Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;
.super Lrx/SingleSubscriber;
.source "CompletableFlatMapSingleToCompletable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableFlatMapSingleToCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/SingleSubscriber",
        "<TT;>;",
        "Lrx/CompletableSubscriber;"
    }
.end annotation


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;Lrx/functions/Func1;)V
    .registers 3
    .param p1, "actual"    # Lrx/CompletableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/CompletableSubscriber;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Completable;>;"
    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->actual:Lrx/CompletableSubscriber;

    .line 53
    iput-object p2, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->mapper:Lrx/functions/Func1;

    .line 54
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 84
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->add(Lrx/Subscription;)V

    .line 89
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;, "Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_15

    .line 68
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_1d

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The mapper returned a null Completable"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "c":Lrx/Completable;
    :goto_14
    return-void

    .line 62
    :catch_15
    move-exception v1

    .line 63
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0, v1}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 73
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/Completable;
    :cond_1d
    invoke-virtual {v0, p0}, Lrx/Completable;->subscribe(Lrx/CompletableSubscriber;)V

    goto :goto_14
.end method
