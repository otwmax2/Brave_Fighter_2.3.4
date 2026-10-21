###### Class rx.internal.operators.OperatorWithLatestFromMany (rx.internal.operators.OperatorWithLatestFromMany)
.class public final Lrx/internal/operators/OperatorWithLatestFromMany;
.super Ljava/lang/Object;
.source "OperatorWithLatestFromMany.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;,
        Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation
.end field

.field final main:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field final others:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation
.end field

.field final othersIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;[Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;[",
            "Lrx/Observable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "main":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "others":[Lrx/Observable;, "[Lrx/Observable<*>;"
    .local p3, "othersIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/Observable<*>;>;"
    .local p4, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->main:Lrx/Observable;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    .line 40
    iput-object p3, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->othersIterable:Ljava/lang/Iterable;

    .line 41
    iput-object p4, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->combiner:Lrx/functions/FuncN;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWithLatestFromMany;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v7, Lrx/observers/SerializedSubscriber;

    invoke-direct {v7, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 50
    .local v7, "serial":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TR;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "n":I
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    if-eqz v9, :cond_21

    .line 53
    iget-object v8, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->others:[Lrx/Observable;

    .line 54
    .local v8, "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    array-length v3, v8

    .line 65
    :cond_d
    new-instance v6, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->combiner:Lrx/functions/FuncN;

    invoke-direct {v6, p1, v9, v3}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;I)V

    .line 67
    .local v6, "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {v7, v6}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v3, :cond_5b

    .line 71
    invoke-virtual {v7}, Lrx/observers/SerializedSubscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 83
    :goto_20
    return-void

    .line 56
    .end local v0    # "i":I
    .end local v6    # "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .end local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    :cond_21
    const/16 v9, 0x8

    new-array v8, v9, [Lrx/Observable;

    .line 57
    .restart local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->othersIterable:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observable;

    .line 58
    .local v5, "o":Lrx/Observable;, "Lrx/Observable<*>;"
    array-length v9, v8

    if-ne v3, v9, :cond_43

    .line 59
    shr-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    check-cast v8, [Lrx/Observable;

    .line 61
    .restart local v8    # "sources":[Lrx/Observable;, "[Lrx/Observable<*>;"
    :cond_43
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    aput-object v5, v8, v3

    move v3, v4

    .line 62
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_2b

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    .restart local v0    # "i":I
    .restart local v6    # "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    :cond_49
    new-instance v2, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;

    add-int/lit8 v9, v0, 0x1

    invoke-direct {v2, v6, v9}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;-><init>(Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;I)V

    .line 76
    .local v2, "inner":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;
    invoke-virtual {v6, v2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->add(Lrx/Subscription;)V

    .line 78
    aget-object v5, v8, v0

    .line 79
    .restart local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-virtual {v5, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 82
    .end local v2    # "inner":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;
    .end local v5    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_5b
    iget-object v9, p0, Lrx/internal/operators/OperatorWithLatestFromMany;->main:Lrx/Observable;

    invoke-virtual {v9, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_20
.end method

###### Class rx.internal.operators.OperatorWithLatestFromMany.WithLatestMainSubscriber (rx.internal.operators.OperatorWithLatestFromMany$WithLatestMainSubscriber)
.class final Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;
.super Lrx/Subscriber;
.source "OperatorWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithLatestMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field done:Z

.field final ready:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;I)V
    .registers 8
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->combiner:Lrx/functions/FuncN;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-gt v1, p3, :cond_19

    .line 104
    sget-object v2, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 106
    :cond_19
    iput-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->request(J)V

    .line 110
    return-void
.end method


# virtual methods
.method innerComplete(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onCompleted()V

    .line 186
    :cond_d
    return-void
.end method

.method innerError(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {p0, p2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method innerNext(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "last":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 174
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 176
    :cond_f
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 163
    :goto_4
    return-void

    .line 160
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    .line 161
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 147
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 153
    :goto_7
    return-void

    .line 150
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    .line 151
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->unsubscribe()V

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->done:Z

    if-eqz v6, :cond_5

    .line 142
    :goto_4
    return-void

    .line 117
    :cond_5
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_3d

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    .line 121
    .local v4, "n":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 124
    .local v1, "copy":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v4, :cond_29

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 131
    :cond_29
    :try_start_29
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->combiner:Lrx/functions/FuncN;

    invoke-interface {v6, v1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_35

    move-result-object v5

    .line 138
    .local v5, "result":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 132
    .end local v5    # "result":Ljava/lang/Object;, "TR;"
    :catch_35
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 140
    .end local v0    # "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v1    # "copy":[Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_3d
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->request(J)V

    goto :goto_4
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-super {p0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 168
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 169
    return-void
.end method

###### Class rx.internal.operators.OperatorWithLatestFromMany.WithLatestOtherSubscriber (rx.internal.operators.OperatorWithLatestFromMany$WithLatestOtherSubscriber)
.class final Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;
.super Lrx/Subscriber;
.source "OperatorWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithLatestOtherSubscriber"
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
.field final index:I

.field final parent:Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;I)V
    .registers 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "parent":Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<**>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 195
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->parent:Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    .line 196
    iput p2, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->index:I

    .line 197
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->parent:Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->index:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->innerComplete(I)V

    .line 212
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->parent:Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->index:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->innerError(ILjava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->parent:Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestOtherSubscriber;->index:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber;->innerNext(ILjava/lang/Object;)V

    .line 202
    return-void
.end method
