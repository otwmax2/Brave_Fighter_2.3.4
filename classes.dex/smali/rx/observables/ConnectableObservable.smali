###### Class rx.observables.ConnectableObservable (rx.observables.ConnectableObservable)
.class public abstract Lrx/observables/ConnectableObservable;
.super Lrx/Observable;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 39
    return-void
.end method


# virtual methods
.method public autoConnect()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/observables/ConnectableObservable;->autoConnect(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(I)Lrx/Observable;
    .registers 3
    .param p1, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/observables/ConnectableObservable;->autoConnect(ILrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(ILrx/functions/Action1;)Lrx/Observable;
    .registers 4
    .param p1, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    .local p2, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    if-gtz p1, :cond_6

    .line 125
    invoke-virtual {p0, p2}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 128
    .end local p0    # "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    :goto_5
    return-object p0

    .restart local p0    # "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    :cond_6
    new-instance v0, Lrx/internal/operators/OnSubscribeAutoConnect;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OnSubscribeAutoConnect;-><init>(Lrx/observables/ConnectableObservable;ILrx/functions/Action1;)V

    invoke-static {v0}, Lrx/observables/ConnectableObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    goto :goto_5
.end method

.method public final connect()Lrx/Subscription;
    .registers 3

    .prologue
    .line 51
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    const/4 v1, 0x1

    new-array v0, v1, [Lrx/Subscription;

    .line 52
    .local v0, "out":[Lrx/Subscription;
    new-instance v1, Lrx/observables/ConnectableObservable$1;

    invoke-direct {v1, p0, v0}, Lrx/observables/ConnectableObservable$1;-><init>(Lrx/observables/ConnectableObservable;[Lrx/Subscription;)V

    invoke-virtual {p0, v1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 58
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public abstract connect(Lrx/functions/Action1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation
.end method

.method public refCount()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRefCount;-><init>(Lrx/observables/ConnectableObservable;)V

    invoke-static {v0}, Lrx/observables/ConnectableObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.ConnectableObservable.AnonymousClass1 (rx.observables.ConnectableObservable$1)
.class Lrx/observables/ConnectableObservable$1;
.super Ljava/lang/Object;
.source "ConnectableObservable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/ConnectableObservable;->connect()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/ConnectableObservable;

.field final synthetic val$out:[Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/observables/ConnectableObservable;[Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 52
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    iput-object p1, p0, Lrx/observables/ConnectableObservable$1;->this$0:Lrx/observables/ConnectableObservable;

    iput-object p2, p0, Lrx/observables/ConnectableObservable$1;->val$out:[Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/ConnectableObservable$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 4
    .param p1, "t1"    # Lrx/Subscription;

    .prologue
    .line 55
    .local p0, "this":Lrx/observables/ConnectableObservable$1;, "Lrx/observables/ConnectableObservable.1;"
    iget-object v0, p0, Lrx/observables/ConnectableObservable$1;->val$out:[Lrx/Subscription;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    return-void
.end method
