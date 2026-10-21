###### Class rx.internal.operators.OperatorGroupBy (rx.internal.operators.OperatorGroupBy)
.class public final Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$State;,
        Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;,
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;,
        Lrx/internal/operators/OperatorGroupBy$GroupByProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/observables/GroupedObservable",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final mapFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action1",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    sget v3, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    sget v3, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V
    .registers 6
    .param p3, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;IZ",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action1",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p5, "mapFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    .line 68
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    .line 69
    iput p3, p0, Lrx/internal/operators/OperatorGroupBy;->bufferSize:I

    .line 70
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy;->delayError:Z

    .line 71
    iput-object p5, p0, Lrx/internal/operators/OperatorGroupBy;->mapFactory:Lrx/functions/Func1;

    .line 72
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action1",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    sget v3, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :try_start_0
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    iget v4, p0, Lrx/internal/operators/OperatorGroupBy;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy;->delayError:Z

    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy;->mapFactory:Lrx/functions/Func1;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_22

    .line 87
    .local v0, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$1;-><init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 94
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 96
    .end local v0    # "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    :goto_21
    return-object v0

    .line 79
    :catch_22
    move-exception v7

    .line 81
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 82
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v8

    .line 83
    .local v8, "parent2":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v8}, Lrx/Subscriber;->unsubscribe()V

    move-object v0, v8

    .line 84
    goto :goto_21
.end method

###### Class rx.internal.operators.OperatorGroupBy.AnonymousClass1 (rx.internal.operators.OperatorGroupBy$1)
.class Lrx/internal/operators/OperatorGroupBy$1;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorGroupBy;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorGroupBy;

.field final synthetic val$parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V
    .registers 3

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$1;, "Lrx/internal/operators/OperatorGroupBy.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$1;->this$0:Lrx/internal/operators/OperatorGroupBy;

    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$1;->val$parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$1;, "Lrx/internal/operators/OperatorGroupBy.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$1;->val$parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancel()V

    .line 91
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupByProducer (rx.internal.operators.OperatorGroupBy$GroupByProducer)
.class public final Lrx/internal/operators/OperatorGroupBy$GroupByProducer;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupByProducer"
.end annotation


# instance fields
.field final parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 104
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMore(J)V

    .line 108
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber (rx.internal.operators.OperatorGroupBy$GroupBySubscriber)
.class public final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final s:Lrx/internal/producers/ProducerArbiter;

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V
    .registers 11
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;IZ",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action1",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p6, "mapFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 142
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 143
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    .line 144
    iput p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    .line 145
    iput-boolean p5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 147
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    .line 148
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 149
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    if-nez p6, :cond_52

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    .line 161
    :goto_51
    return-void

    .line 158
    :cond_52
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    .line 159
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;-><init>(Ljava/util/Queue;)V

    invoke-direct {p0, p6, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->createMap(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    goto :goto_51
.end method

.method private createMap(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action1",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lrx/functions/Action1",
            "<TK;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "mapFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    .local p2, "evictionAction":Lrx/functions/Action1;, "Lrx/functions/Action1<TK;>;"
    invoke-interface {p1, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 295
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_15

    .line 296
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 299
    :cond_15
    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_17

    move-object v0, p1

    .line 303
    .local v0, "mapKey":Ljava/lang/Object;
    :goto_3
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 304
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_16

    .line 305
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 308
    :cond_16
    return-void

    .line 302
    .end local v0    # "mapKey":Ljava/lang/Object;
    :cond_17
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    goto :goto_3
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .registers 8
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 380
    if-eqz p1, :cond_13

    .line 381
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    .line 382
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_b

    .line 383
    invoke-virtual {p0, p3, p4, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "err":Ljava/lang/Throwable;
    :goto_a
    return v1

    .line 386
    .restart local v0    # "err":Ljava/lang/Throwable;
    :cond_b
    if-eqz p2, :cond_13

    .line 387
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_a

    .line 391
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method drain()V
    .registers 13

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-eqz v10, :cond_9

    .line 361
    :cond_8
    :goto_8
    return-void

    .line 315
    :cond_9
    const/4 v5, 0x1

    .line 317
    .local v5, "missed":I
    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 318
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 322
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :cond_e
    iget-boolean v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v6}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 326
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 327
    .local v8, "r":J
    const-wide/16 v2, 0x0

    .line 329
    .local v2, "e":J
    :goto_22
    cmp-long v10, v2, v8

    if-eqz v10, :cond_39

    .line 330
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 332
    .local v1, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/observables/GroupedObservable;

    .line 334
    .local v7, "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    if-nez v7, :cond_5c

    const/4 v4, 0x1

    .line 336
    .local v4, "empty":Z
    :goto_31
    invoke-virtual {p0, v1, v4, v0, v6}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 340
    if-eqz v4, :cond_5e

    .line 349
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    :cond_39
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_52

    .line 350
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-eqz v10, :cond_4d

    .line 351
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v10, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 353
    :cond_4d
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v10, v2, v3}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 356
    :cond_52
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v11, v5

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    .line 357
    if-nez v5, :cond_e

    goto :goto_8

    .line 334
    .restart local v1    # "d":Z
    .restart local v7    # "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    :cond_5c
    const/4 v4, 0x0

    goto :goto_31

    .line 344
    .restart local v4    # "empty":Z
    :cond_5e
    invoke-virtual {v0, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 346
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 347
    goto :goto_22
.end method

.method errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .registers 8
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 367
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz v3, :cond_1c

    .line 368
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 371
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 372
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onError(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 375
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_30
    invoke-virtual {p1, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 376
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v2, :cond_5

    .line 280
    :goto_4
    return-void

    .line 269
    :cond_5
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 270
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_f

    .line 272
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_1f
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 273
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz v2, :cond_2d

    .line 274
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 277
    :cond_2d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 278
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 279
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 254
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 261
    :goto_7
    return-void

    .line 257
    :cond_8
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 259
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 260
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v10, :cond_5

    .line 249
    :cond_4
    :goto_4
    return-void

    .line 193
    :cond_5
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 194
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 198
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :try_start_9
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v10, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_61

    move-result-object v5

    .line 205
    .local v5, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x1

    .line 206
    .local v7, "notNew":Z
    if-eqz v5, :cond_69

    move-object v6, v5

    .line 207
    .local v6, "mapKey":Ljava/lang/Object;
    :goto_13
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 208
    .local v4, "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    if-nez v4, :cond_3e

    .line 211
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_4

    .line 212
    iget v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    iget-boolean v11, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    invoke-static {v5, v10, p0, v11}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    move-result-object v4

    .line 213
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-interface {v8, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    .line 227
    :cond_3e
    :try_start_3e
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v10, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_43} :catch_6c

    move-result-object v9

    .line 234
    .local v9, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v4, v9}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onNext(Ljava/lang/Object;)V

    .line 236
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz v10, :cond_74

    .line 238
    :cond_4b
    :goto_4b
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "evictedKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_74

    .line 239
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 240
    .local v3, "g":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    if-eqz v3, :cond_4b

    .line 241
    invoke-virtual {v3}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_4b

    .line 199
    .end local v1    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "g":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .end local v4    # "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mapKey":Ljava/lang/Object;
    .end local v7    # "notNew":Z
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :catch_61
    move-exception v2

    .line 200
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 201
    invoke-virtual {p0, v0, v8, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 206
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "notNew":Z
    :cond_69
    sget-object v6, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    goto :goto_13

    .line 228
    .restart local v4    # "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .restart local v6    # "mapKey":Ljava/lang/Object;
    :catch_6c
    move-exception v2

    .line 229
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 230
    invoke-virtual {p0, v0, v8, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 246
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_74
    if-eqz v7, :cond_4

    .line 247
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v12, 0x1

    invoke-virtual {v10, v12, v13}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    goto :goto_4
.end method

.method public requestMore(J)V
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 283
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1f
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 288
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    .line 289
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "s"    # Lrx/Producer;

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 185
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupBySubscriber.EvictionAction (rx.internal.operators.OperatorGroupBy$GroupBySubscriber$EvictionAction)
.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EvictionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "evictedKeys":Ljava/util/Queue;, "Ljava/util/Queue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;->evictedKeys:Ljava/util/Queue;

    .line 169
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.GroupedUnicast (rx.internal.operators.OperatorGroupBy$GroupedUnicast)
.class final Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;
.super Lrx/observables/GroupedObservable;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/GroupedObservable",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/OperatorGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    .line 406
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    .line 407
    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;
    .registers 6
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;Z)",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<*TK;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/OperatorGroupBy$State;-><init>(ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    .line 401
    .local v0, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .prologue
    .line 418
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$State;->onComplete()V

    .line 419
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 414
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 415
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
    .line 410
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 411
    return-void
.end method

###### Class rx.internal.operators.OperatorGroupBy.State (rx.internal.operators.OperatorGroupBy$State)
.class final Lrx/internal/operators/OperatorGroupBy$State;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 444
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 445
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 446
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    .line 447
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 448
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 449
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 450
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 451
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 452
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 422
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->call(Lrx/Subscriber;)V

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
    .line 481
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 482
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 483
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 484
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 489
    :goto_18
    return-void

    .line 487
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method checkTerminated(ZZLrx/Subscriber;Z)Z
    .registers 9
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 568
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 569
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 570
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 599
    :goto_15
    return v1

    .line 574
    :cond_16
    if-eqz p1, :cond_3b

    .line 575
    if-eqz p4, :cond_28

    .line 576
    if-eqz p2, :cond_3b

    .line 577
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 578
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_24

    .line 579
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 581
    :cond_24
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_15

    .line 586
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_28
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 587
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_35

    .line 588
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 589
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 592
    :cond_35
    if-eqz p2, :cond_3b

    .line 593
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_15

    .line 599
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_15
.end method

.method drain()V
    .registers 15

    .prologue
    .line 513
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v12

    if-eqz v12, :cond_7

    .line 565
    :cond_6
    return-void

    .line 516
    :cond_7
    const/4 v6, 0x1

    .line 518
    .local v6, "missed":I
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 519
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 520
    .local v2, "delayError":Z
    iget-object v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 521
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v7

    .line 523
    .local v7, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :cond_18
    :goto_18
    if-eqz v0, :cond_5e

    .line 524
    iget-boolean v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v13

    invoke-virtual {p0, v12, v13, v0, v2}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLrx/Subscriber;Z)Z

    move-result v12

    if-nez v12, :cond_6

    .line 528
    iget-object v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 529
    .local v10, "r":J
    const-wide/16 v4, 0x0

    .line 531
    .local v4, "e":J
    :goto_2e
    cmp-long v12, v4, v10

    if-eqz v12, :cond_43

    .line 532
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 533
    .local v1, "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 534
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_70

    const/4 v3, 0x1

    .line 536
    .local v3, "empty":Z
    :goto_3b
    invoke-virtual {p0, v1, v3, v0, v2}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLrx/Subscriber;Z)Z

    move-result v12

    if-nez v12, :cond_6

    .line 540
    if-eqz v3, :cond_72

    .line 549
    .end local v1    # "d":Z
    .end local v3    # "empty":Z
    .end local v9    # "v":Ljava/lang/Object;
    :cond_43
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_5e

    .line 550
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v10, v12

    if-eqz v12, :cond_57

    .line 551
    iget-object v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v12, v4, v5}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 553
    :cond_57
    iget-object v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v12, v12, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v12, v4, v5}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 557
    .end local v4    # "e":J
    .end local v10    # "r":J
    :cond_5e
    neg-int v12, v6

    invoke-virtual {p0, v12}, Lrx/internal/operators/OperatorGroupBy$State;->addAndGet(I)I

    move-result v6

    .line 558
    if-eqz v6, :cond_6

    .line 561
    if-nez v0, :cond_18

    .line 562
    iget-object v12, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    check-cast v0, Lrx/Subscriber;

    .restart local v0    # "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    goto :goto_18

    .line 534
    .restart local v1    # "d":Z
    .restart local v4    # "e":J
    .restart local v9    # "v":Ljava/lang/Object;
    .restart local v10    # "r":J
    :cond_70
    const/4 v3, 0x0

    goto :goto_3b

    .line 544
    .restart local v3    # "empty":Z
    :cond_72
    invoke-virtual {v7, v9}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 546
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 547
    goto :goto_2e
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 467
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    .prologue
    .line 508
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 509
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 510
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 502
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 504
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 505
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_10

    .line 493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 498
    :goto_c
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 499
    return-void

    .line 496
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const-wide/16 v2, 0x0

    .line 456
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 460
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 461
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 463
    :cond_2b
    return-void
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 472
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 473
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_17

    .line 474
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 477
    :cond_17
    return-void
.end method
