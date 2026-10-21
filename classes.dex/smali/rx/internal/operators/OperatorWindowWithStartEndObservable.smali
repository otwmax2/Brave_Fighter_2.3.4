###### Class rx.internal.operators.OperatorWindowWithStartEndObservable (rx.internal.operators.OperatorWindowWithStartEndObservable)
.class public final Lrx/internal/operators/OperatorWindowWithStartEndObservable;
.super Ljava/lang/Object;
.source "OperatorWindowWithStartEndObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;,
        Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final windowClosingSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TU;+",
            "Lrx/Observable",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final windowOpenings:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func1",
            "<-TU;+",
            "Lrx/Observable",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "windowOpenings":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "windowClosingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TU;+Lrx/Observable<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowOpenings:Lrx/Observable;

    .line 45
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowClosingSelector:Lrx/functions/Func1;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 51
    .local v0, "composite":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 53
    new-instance v2, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-direct {v2, p0, p1, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    .line 55
    .local v2, "sub":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;)V

    .line 78
    .local v1, "open":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v0, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 79
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 81
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowOpenings:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 83
    return-object v2
.end method

###### Class rx.internal.operators.OperatorWindowWithStartEndObservable.AnonymousClass1 (rx.internal.operators.OperatorWindowWithStartEndObservable$1)
.class Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;
.super Lrx/Subscriber;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

.field final synthetic val$sub:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;)V
    .registers 3

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->val$sub:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->val$sub:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->onCompleted()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->val$sub:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->val$sub:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->beginWindow(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$1;->request(J)V

    .line 60
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithStartEndObservable.SerializedSubject (rx.internal.operators.OperatorWindowWithStartEndObservable$SerializedSubject)
.class final Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;
.super Ljava/lang/Object;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedSubject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    .line 92
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->producer:Lrx/Observable;

    .line 93
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber (rx.internal.operators.OperatorWindowWithStartEndObservable$SourceSubscriber)
.class final Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final composite:Lrx/subscriptions/CompositeSubscription;

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5
    .param p3, "composite"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 105
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p2}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    .line 108
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    .line 109
    return-void
.end method


# virtual methods
.method beginWindow(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "token":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->createSerializedSubject()Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    move-result-object v2

    .line 174
    .local v2, "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 175
    :try_start_7
    iget-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v4, :cond_d

    .line 176
    monitor-exit v5

    .line 215
    :goto_c
    return-void

    .line 178
    :cond_d
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_32

    .line 180
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    iget-object v5, v2, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->producer:Lrx/Observable;

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 184
    :try_start_1a
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    iget-object v4, v4, Lrx/internal/operators/OperatorWindowWithStartEndObservable;->windowClosingSelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_35

    .line 190
    .local v1, "end":Lrx/Observable;, "Lrx/Observable<+TV;>;"
    new-instance v3, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;

    invoke-direct {v3, p0, v2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V

    .line 212
    .local v3, "v":Lrx/Subscriber;, "Lrx/Subscriber<TV;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 214
    invoke-virtual {v1, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_c

    .line 179
    .end local v1    # "end":Lrx/Observable;, "Lrx/Observable<+TV;>;"
    .end local v3    # "v":Lrx/Subscriber;, "Lrx/Subscriber<TV;>;"
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4

    .line 185
    :catch_35
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method createSerializedSubject()Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v0

    .line 238
    .local v0, "bus":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method endWindow(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "window":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, "terminate":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    :try_start_4
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_a

    .line 220
    monitor-exit v4

    .line 235
    :cond_9
    :goto_9
    return-void

    .line 222
    :cond_a
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 225
    .local v1, "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    if-ne v1, p1, :cond_10

    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 231
    .end local v1    # "s":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    :cond_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2b

    .line 232
    if-eqz v2, :cond_9

    .line 233
    iget-object v3, p1, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_9

    .line 231
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_34

    .line 156
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_e

    .line 157
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3b

    .line 168
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 170
    :goto_d
    return-void

    .line 159
    :cond_e
    const/4 v3, 0x1

    :try_start_f
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 162
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_3b

    .line 163
    :try_start_1e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 164
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    goto :goto_22

    .line 168
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_34
    move-exception v3

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v3

    .line 162
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v3

    .line 166
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_3e
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_34

    .line 168
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_34

    .line 135
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_e

    .line 136
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3b

    .line 147
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 149
    :goto_d
    return-void

    .line 138
    :cond_e
    const/4 v3, 0x1

    :try_start_f
    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_3b

    .line 142
    :try_start_1e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 143
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    goto :goto_22

    .line 147
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_34
    move-exception v3

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v3

    .line 141
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v3

    .line 145
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_3e
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_34

    .line 147
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_d
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 120
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->done:Z

    if-eqz v3, :cond_9

    .line 121
    monitor-exit v4

    .line 128
    :cond_8
    return-void

    .line 123
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_27

    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    .line 126
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_15

    .line 124
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v3
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->request(J)V

    .line 114
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.AnonymousClass1 (rx.internal.operators.OperatorWindowWithStartEndObservable$SourceSubscriber$1)
.class Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;
.super Lrx/Subscriber;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->beginWindow(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TV;>;"
    }
.end annotation


# instance fields
.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

.field final synthetic val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V
    .registers 4

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    if-eqz v0, :cond_15

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    .line 206
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->endWindow(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V

    .line 207
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->composite:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 209
    :cond_15
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->onCompleted()V

    .line 195
    return-void
.end method
