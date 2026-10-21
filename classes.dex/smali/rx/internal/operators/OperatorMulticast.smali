###### Class rx.internal.operators.OperatorMulticast (rx.internal.operators.OperatorMulticast)
.class public final Lrx/internal/operators/OperatorMulticast;
.super Lrx/observables/ConnectableObservable;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final guard:Ljava/lang/Object;

.field guardedSubscription:Lrx/Subscription;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field subscription:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final waitingForConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
    .registers 7
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p2, "connectedSubject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;"
    .local p3, "waitingForConnect":Ljava/util/List;, "Ljava/util/List<Lrx/Subscriber<-TR;>;>;"
    .local p4, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMulticast$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 68
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    .line 72
    iput-object p5, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorMulticast;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V

    .line 51
    return-void
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 82
    :try_start_3
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    if-eqz v5, :cond_e

    .line 84
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    invoke-interface {p1, v5}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 85
    monitor-exit v6

    .line 152
    :cond_d
    :goto_d
    return-void

    .line 88
    :cond_e
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    invoke-interface {v5}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 91
    .local v4, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    invoke-static {v4}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v5

    iput-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 93
    .local v0, "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    new-instance v5, Lrx/internal/operators/OperatorMulticast$2;

    invoke-direct {v5, p0, v0}, Lrx/internal/operators/OperatorMulticast$2;-><init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v5}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Subscription;

    iput-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    .line 115
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscriber;

    .line 116
    .local v2, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v5, Lrx/internal/operators/OperatorMulticast$3;

    invoke-direct {v5, p0, v2, v2}, Lrx/internal/operators/OperatorMulticast$3;-><init>(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v4, v5}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_3b

    .line 137
    .end local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .end local v4    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v5

    .line 132
    .restart local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :cond_53
    :try_start_53
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 134
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_50

    .line 141
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    invoke-interface {p1, v5}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 146
    iget-object v6, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 147
    :try_start_66
    iget-object v3, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 148
    .local v3, "sub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_71

    .line 149
    if-eqz v3, :cond_d

    .line 150
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    invoke-virtual {v5, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_d

    .line 148
    .end local v3    # "sub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    :catchall_71
    move-exception v5

    :try_start_72
    monitor-exit v6
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v5
.end method

###### Class rx.internal.operators.OperatorMulticast.AnonymousClass1 (rx.internal.operators.OperatorMulticast$1)
.class Lrx/internal/operators/OperatorMulticast$1;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$guard:Ljava/lang/Object;

.field final synthetic val$waitingForConnect:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$1;->val$guard:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast$1;->val$waitingForConnect:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMulticast$1;->call(Lrx/Subscriber;)V

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
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$1;->val$guard:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$waitingForConnect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_10
    monitor-exit v1

    .line 66
    return-void

    .line 63
    :cond_12
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_10

    .line 65
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

###### Class rx.internal.operators.OperatorMulticast.AnonymousClass2 (rx.internal.operators.OperatorMulticast$2)
.class Lrx/internal/operators/OperatorMulticast$2;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$gs:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$2;, "Lrx/internal/operators/OperatorMulticast.2;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v2, v1, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_2e

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v0, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 100
    .local v0, "s":Lrx/Subscription;
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 101
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    .line 102
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 106
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 107
    if-eqz v0, :cond_2d

    .line 108
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 110
    .end local v0    # "s":Lrx/Subscription;
    :cond_2d
    :goto_2d
    return-void

    .line 104
    :cond_2e
    :try_start_2e
    monitor-exit v2

    goto :goto_2d

    .line 106
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v1
.end method

###### Class rx.internal.operators.OperatorMulticast.AnonymousClass3 (rx.internal.operators.OperatorMulticast$3)
.class Lrx/internal/operators/OperatorMulticast$3;
.super Lrx/Subscriber;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 128
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
