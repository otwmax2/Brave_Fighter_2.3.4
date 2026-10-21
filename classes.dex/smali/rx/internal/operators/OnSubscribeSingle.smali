###### Class rx.internal.operators.OnSubscribeSingle (rx.internal.operators.OnSubscribeSingle)
.class public Lrx/internal/operators/OnSubscribeSingle;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
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
.field private final observable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle;->observable:Lrx/Observable;

    .line 33
    return-void
.end method

.method public static create(Lrx/Observable;)Lrx/internal/operators/OnSubscribeSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/internal/operators/OnSubscribeSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeSingle;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeSingle;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeSingle;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeSingle$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeSingle$1;-><init>(Lrx/internal/operators/OnSubscribeSingle;Lrx/SingleSubscriber;)V

    .line 80
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 81
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeSingle;->observable:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 82
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeSingle.AnonymousClass1 (rx.internal.operators.OnSubscribeSingle$1)
.class Lrx/internal/operators/OnSubscribeSingle$1;
.super Lrx/Subscriber;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeSingle;->call(Lrx/SingleSubscriber;)V
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
.field private emission:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private emittedTooMany:Z

.field private itemEmitted:Z

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeSingle;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeSingle;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->this$0:Lrx/internal/operators/OnSubscribeSingle;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emittedTooMany:Z

    if-eqz v0, :cond_5

    .line 60
    :goto_4
    return-void

    .line 54
    :cond_5
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emission:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_4

    .line 57
    :cond_11
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeSingle$1;->unsubscribe()V

    .line 66
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 70
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    if-eqz v0, :cond_17

    .line 71
    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emittedTooMany:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Observable emitted too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeSingle$1;->unsubscribe()V

    .line 78
    :goto_16
    return-void

    .line 75
    :cond_17
    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    .line 76
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emission:Ljava/lang/Object;

    goto :goto_16
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeSingle$1;->request(J)V

    .line 47
    return-void
.end method
