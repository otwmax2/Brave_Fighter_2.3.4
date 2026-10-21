###### Class rx.internal.operators.OnSubscribeOnAssemblyCompletable (rx.internal.operators.OnSubscribeOnAssemblyCompletable)
.class public final Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;
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


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lrx/Completable$OnSubscribe;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Completable$OnSubscribe;)V
    .registers 3
    .param p1, "source"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->source:Lrx/Completable$OnSubscribe;

    .line 42
    invoke-static {}, Lrx/internal/operators/OnSubscribeOnAssembly;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->stacktrace:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "t"    # Lrx/CompletableSubscriber;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->source:Lrx/Completable$OnSubscribe;

    new-instance v1, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;-><init>(Lrx/CompletableSubscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Completable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeOnAssemblyCompletable.OnAssemblyCompletableSubscriber (rx.internal.operators.OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber)
.class final Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnAssemblyCompletableSubscriber"
.end annotation


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;Ljava/lang/String;)V
    .registers 3
    .param p1, "actual"    # Lrx/CompletableSubscriber;
    .param p2, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->stacktrace:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 64
    return-void
.end method
