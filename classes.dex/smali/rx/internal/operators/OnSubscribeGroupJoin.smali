###### Class rx.internal.operators.OnSubscribeGroupJoin (rx.internal.operators.OnSubscribeGroupJoin)
.class public final Lrx/internal/operators/OnSubscribeGroupJoin;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "D1:",
        "Ljava/lang/Object;",
        "D2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final left:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT1;>;"
        }
    .end annotation
.end field

.field final leftDuration:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT1;+",
            "Lrx/Observable",
            "<TD1;>;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT1;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;"
        }
    .end annotation
.end field

.field final right:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation
.end field

.field final rightDuration:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/functions/Func1",
            "<-TT1;+",
            "Lrx/Observable",
            "<TD1;>;>;",
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;",
            "Lrx/functions/Func2",
            "<-TT1;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "left":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "leftDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT1;+Lrx/Observable<TD1;>;>;"
    .local p4, "rightDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p5, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-Lrx/Observable<TT2;>;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->left:Lrx/Observable;

    .line 54
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->right:Lrx/Observable;

    .line 55
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->leftDuration:Lrx/functions/Func1;

    .line 56
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->rightDuration:Lrx/functions/Func1;

    .line 57
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->resultSelector:Lrx/functions/Func2;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin;Lrx/Subscriber;)V

    .line 63
    .local v0, "ro":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 64
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->init()V

    .line 65
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.ResultManager (rx.internal.operators.OnSubscribeGroupJoin$ResultManager)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.super Ljava/util/HashMap;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lrx/Observer",
        "<TT2;>;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a1f0a50492e2277L


# instance fields
.field final cancel:Lrx/subscriptions/RefCountSubscription;

.field final group:Lrx/subscriptions/CompositeSubscription;

.field leftDone:Z

.field leftIds:I

.field rightDone:Z

.field rightIds:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    .line 90
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    .line 91
    new-instance v0, Lrx/subscriptions/RefCountSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, v1}, Lrx/subscriptions/RefCountSubscription;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    .line 92
    return-void
.end method


# virtual methods
.method complete(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/Observer",
            "<TT2;>;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    if-eqz p1, :cond_20

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    .line 152
    .local v1, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_6

    .line 154
    .end local v1    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 155
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    return-void
.end method

.method errorAll(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    monitor-enter p0

    .line 127
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 130
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2f

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observer;

    .line 132
    .local v2, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v2, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v2    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3

    .line 134
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_32
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 136
    return-void
.end method

.method errorMain(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    .line 146
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 148
    return-void

    .line 145
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public init()V
    .registers 4

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 97
    .local v0, "s1":Lrx/Subscriber;, "Lrx/Subscriber<TT1;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 99
    .local v1, "s2":Lrx/Subscriber;, "Lrx/Subscriber<TT2;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 102
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->left:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->right:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method leftMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrx/Observer",
            "<TT2;>;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    return-object p0
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 109
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.ResultManager.LeftDurationObserver (rx.internal.operators.OnSubscribeGroupJoin$ResultManager$LeftDurationObserver)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TD1;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    .line 275
    iput p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->id:I

    .line 276
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    if-eqz v1, :cond_29

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    .line 283
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v2

    .line 284
    :try_start_a
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    .line 285
    .local v0, "gr":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_2a

    .line 286
    if-eqz v0, :cond_22

    .line 287
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 289
    :cond_22
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 291
    .end local v0    # "gr":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :cond_29
    return-void

    .line 285
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorMain(Ljava/lang/Throwable;)V

    .line 296
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD1;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD1;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->onCompleted()V

    .line 301
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.ResultManager.LeftObserver (rx.internal.operators.OnSubscribeGroupJoin$ResultManager$LeftObserver)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V
    .registers 2

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    const/4 v0, 0x0

    .line 202
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v3

    .line 203
    :try_start_4
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftDone:Z

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightDone:Z

    if-eqz v2, :cond_2f

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_36

    .line 206
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1e
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_39

    move-object v0, v1

    .line 209
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_36

    .line 210
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->complete(Ljava/util/List;)V

    .line 211
    return-void

    .line 209
    :catchall_36
    move-exception v2

    :goto_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :catchall_39
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    goto :goto_37
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorAll(Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT1;"
    :try_start_0
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v6

    .line 166
    .local v6, "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    new-instance v7, Lrx/observers/SerializedObserver;

    invoke-direct {v7, v6}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    .line 168
    .local v7, "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    iget-object v12, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v12
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_80

    .line 169
    :try_start_c
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget v3, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    .line 170
    .local v3, "id":I
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v11}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v12
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_85

    .line 173
    :try_start_22
    new-instance v11, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;

    iget-object v12, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v12, v12, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-direct {v11, v6, v12}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;-><init>(Lrx/Observable;Lrx/subscriptions/RefCountSubscription;)V

    invoke-static {v11}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v10

    .line 175
    .local v10, "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin;->leftDuration:Lrx/functions/Func1;

    invoke-interface {v11, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 177
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;

    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {v0, v11, v3}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V

    .line 178
    .local v0, "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 179
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 181
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v11, p1, v10}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/lang/Object;, "TR;"
    iget-object v12, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v12
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_59} :catch_80

    .line 185
    :try_start_59
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v5, "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    monitor-exit v12
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_88

    .line 188
    :try_start_67
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v11, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 190
    .local v9, "t2":Ljava/lang/Object;, "TT2;"
    invoke-interface {v7, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_72

    .line 194
    .end local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    .end local v5    # "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    .end local v6    # "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .end local v7    # "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    .end local v9    # "t2":Ljava/lang/Object;, "TT2;"
    .end local v10    # "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    :catch_80
    move-exception v8

    .line 195
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 197
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_84
    return-void

    .line 171
    .restart local v6    # "subj":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .restart local v7    # "subjSerial":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catchall_85
    move-exception v11

    :try_start_86
    monitor-exit v12
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v11
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_88} :catch_80

    .line 186
    .restart local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TD1;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD1;>;"
    .restart local v3    # "id":I
    .restart local v4    # "result":Ljava/lang/Object;, "TR;"
    .restart local v10    # "window":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    :catchall_88
    move-exception v11

    :try_start_89
    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v11
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8b} :catch_80
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.ResultManager.RightDurationObserver (rx.internal.operators.OnSubscribeGroupJoin$ResultManager$RightDurationObserver)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TD2;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 309
    iput p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    .line 310
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    if-eqz v0, :cond_1f

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 316
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v1

    .line 317
    :try_start_a
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    iget v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_20

    .line 319
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 321
    :cond_1f
    return-void

    .line 318
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 325
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorMain(Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD2;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->onCompleted()V

    .line 331
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.ResultManager.RightObserver (rx.internal.operators.OnSubscribeGroupJoin$ResultManager$RightObserver)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V
    .registers 2

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    const/4 v0, 0x0

    .line 252
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v3

    .line 253
    :try_start_4
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightDone:Z

    .line 254
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftDone:Z

    if-eqz v2, :cond_2f

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_36

    .line 256
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1e
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 257
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_39

    move-object v0, v1

    .line 259
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_36

    .line 260
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->complete(Ljava/util/List;)V

    .line 261
    return-void

    .line 259
    :catchall_36
    move-exception v2

    :goto_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :catchall_39
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    goto :goto_37
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorAll(Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT2;"
    :try_start_0
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5b

    .line 227
    :try_start_3
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget v3, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightIds:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightIds:I

    .line 228
    .local v3, "id":I
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_60

    .line 230
    :try_start_17
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin;->rightDuration:Lrx/functions/Func1;

    invoke-interface {v7, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 232
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {v0, v7, v3}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V

    .line 234
    .local v0, "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v7, v7, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v7, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 235
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 238
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v8
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_37} :catch_5b

    .line 239
    :try_start_37
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v7}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    monitor-exit v8
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_63

    .line 241
    :try_start_47
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observer;

    .line 242
    .local v5, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v5, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_5a} :catch_5b

    goto :goto_4b

    .line 244
    .end local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v5    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catch_5b
    move-exception v6

    .line 245
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v6, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 247
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_5f
    return-void

    .line 229
    :catchall_60
    move-exception v7

    :try_start_61
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v7
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_63} :catch_5b

    .line 240
    .restart local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TD2;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TD2;>;"
    .restart local v3    # "id":I
    :catchall_63
    move-exception v7

    :try_start_64
    monitor-exit v8
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v7
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_66} :catch_5b
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.WindowObservableFunc (rx.internal.operators.OnSubscribeGroupJoin$WindowObservableFunc)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowObservableFunc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final refCount:Lrx/subscriptions/RefCountSubscription;

.field final underlying:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/subscriptions/RefCountSubscription;)V
    .registers 3
    .param p2, "refCount"    # Lrx/subscriptions/RefCountSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/subscriptions/RefCountSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "underlying":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->refCount:Lrx/subscriptions/RefCountSubscription;

    .line 347
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->underlying:Lrx/Observable;

    .line 348
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->refCount:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->get()Lrx/Subscription;

    move-result-object v0

    .line 353
    .local v0, "ref":Lrx/Subscription;
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;Lrx/Subscriber;Lrx/Subscription;)V

    .line 354
    .local v1, "wo":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->add(Lrx/Subscription;)V

    .line 356
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->underlying:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 357
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeGroupJoin.WindowObservableFunc.WindowSubscriber (rx.internal.operators.OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber)
.class final Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Lrx/Subscription;

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;Lrx/Subscriber;Lrx/Subscription;)V
    .registers 4
    .param p3, "ref"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;

    .line 365
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 366
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    .line 367
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    .line 368
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 384
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 385
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 378
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 373
    return-void
.end method
