###### Class rx.internal.operators.OnSubscribeDelaySubscriptionOther (rx.internal.operators.OnSubscribeDelaySubscriptionOther)
.class public final Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final main:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "main":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->main:Lrx/Observable;

    .line 37
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 44
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    .line 49
    .local v0, "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;-><init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 78
    .local v1, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 80
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 81
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeDelaySubscriptionOther.AnonymousClass1 (rx.internal.operators.OnSubscribeDelaySubscriptionOther$1)
.class Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;
.super Lrx/Subscriber;
.source "OnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_5

    .line 75
    :goto_4
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther;->main:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_8

    .line 59
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 64
    :goto_7
    return-void

    .line 62
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->done:Z

    .line 63
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeDelaySubscriptionOther$1;->onCompleted()V

    .line 54
    return-void
.end method
