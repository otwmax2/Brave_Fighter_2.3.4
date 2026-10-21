###### Class rx.internal.operators.SingleDoOnEvent (rx.internal.operators.SingleDoOnEvent)
.class public final Lrx/internal/operators/SingleDoOnEvent;
.super Ljava/lang/Object;
.source "SingleDoOnEvent.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;
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


# instance fields
.field final onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onSuccess:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TT;>;"
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
.method public constructor <init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent;, "Lrx/internal/operators/SingleDoOnEvent<TT;>;"
    .local p1, "source":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p2, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p3, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/SingleDoOnEvent;->source:Lrx/Single;

    .line 32
    iput-object p2, p0, Lrx/internal/operators/SingleDoOnEvent;->onSuccess:Lrx/functions/Action1;

    .line 33
    iput-object p3, p0, Lrx/internal/operators/SingleDoOnEvent;->onError:Lrx/functions/Action1;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent;, "Lrx/internal/operators/SingleDoOnEvent<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleDoOnEvent;->call(Lrx/SingleSubscriber;)V

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
    .line 38
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent;, "Lrx/internal/operators/SingleDoOnEvent<TT;>;"
    .local p1, "actual":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;

    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent;->onSuccess:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/internal/operators/SingleDoOnEvent;->onError:Lrx/functions/Action1;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;-><init>(Lrx/SingleSubscriber;Lrx/functions/Action1;Lrx/functions/Action1;)V

    .line 39
    .local v0, "parent":Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;, "Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 40
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent;->source:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 41
    return-void
.end method

###### Class rx.internal.operators.SingleDoOnEvent.SingleDoOnEventSubscriber (rx.internal.operators.SingleDoOnEvent$SingleDoOnEventSubscriber)
.class final Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;
.super Lrx/SingleSubscriber;
.source "SingleDoOnEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/SingleDoOnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleDoOnEventSubscriber"
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

.field final onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onSuccess:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/SingleSubscriber;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;, "Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber<TT;>;"
    .local p1, "actual":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p3, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->actual:Lrx/SingleSubscriber;

    .line 50
    iput-object p2, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->onSuccess:Lrx/functions/Action1;

    .line 51
    iput-object p3, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->onError:Lrx/functions/Action1;

    .line 52
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;, "Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->onError:Lrx/functions/Action1;

    invoke-interface {v1, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 76
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v1, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
    :goto_a
    return-void

    .line 70
    :catch_b
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->actual:Lrx/SingleSubscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;, "Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->onSuccess:Lrx/functions/Action1;

    invoke-interface {v1, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 63
    iget-object v1, p0, Lrx/internal/operators/SingleDoOnEvent$SingleDoOnEventSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v1, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 64
    :goto_a
    return-void

    .line 58
    :catch_b
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/SingleSubscriber;Ljava/lang/Object;)V

    goto :goto_a
.end method
