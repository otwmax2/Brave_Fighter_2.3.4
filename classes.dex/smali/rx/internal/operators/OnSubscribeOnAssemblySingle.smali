###### Class rx.internal.operators.OnSubscribeOnAssemblySingle (rx.internal.operators.OnSubscribeOnAssemblySingle)
.class public final Lrx/internal/operators/OnSubscribeOnAssemblySingle;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblySingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Single$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    .local p1, "source":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;->source:Lrx/Single$OnSubscribe;

    .line 42
    invoke-static {}, Lrx/internal/operators/OnSubscribeOnAssembly;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;->stacktrace:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblySingle;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    .local p1, "t":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;->source:Lrx/Single$OnSubscribe;

    new-instance v1, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;-><init>(Lrx/SingleSubscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Single$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeOnAssemblySingle.OnAssemblySingleSubscriber (rx.internal.operators.OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber)
.class final Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;
.super Lrx/SingleSubscriber;
.source "OnSubscribeOnAssemblySingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeOnAssemblySingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnAssemblySingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/SingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/SingleSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/SingleSubscriber;Ljava/lang/String;)V
    .registers 3
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    .local p1, "actual":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;->actual:Lrx/SingleSubscriber;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;->stacktrace:Ljava/lang/String;

    .line 59
    invoke-virtual {p1, p0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
