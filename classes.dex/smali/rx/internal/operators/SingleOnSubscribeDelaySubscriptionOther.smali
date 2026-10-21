###### Class rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther (rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther)
.class public final Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;
.super Ljava/lang/Object;
.source "SingleOnSubscribeDelaySubscriptionOther.java"

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
.field final main:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/Observable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Observable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "main":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->main:Lrx/Single;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;-><init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;)V

    .line 53
    .local v0, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 54
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v2}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 56
    new-instance v1, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;-><init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 85
    .local v1, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 87
    iget-object v3, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->other:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 88
    return-void
.end method

###### Class rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther.AnonymousClass1 (rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther$1)
.class Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;
.super Lrx/SingleSubscriber;
.source "SingleOnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

.field final synthetic val$subscriber:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 50
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
    .line 44
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

###### Class rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther.AnonymousClass2 (rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther$2)
.class Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;
.super Lrx/Subscriber;
.source "SingleOnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

.field final synthetic val$child:Lrx/SingleSubscriber;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;Lrx/SingleSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$child:Lrx/SingleSubscriber;

    iput-object p3, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iget-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->done:Z

    if-eqz v0, :cond_5

    .line 82
    :goto_4
    return-void

    .line 78
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->done:Z

    .line 79
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$serial:Lrx/subscriptions/SerialSubscription;

    iget-object v1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 81
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->this$0:Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    iget-object v0, v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;->main:Lrx/Single;

    iget-object v1, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, v1}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iget-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->done:Z

    if-eqz v0, :cond_8

    .line 66
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_7
    return-void

    .line 69
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->done:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    invoke-virtual {p0}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther$2;->onCompleted()V

    .line 61
    return-void
.end method
