###### Class rx.internal.operators.OperatorWindowWithSize (rx.internal.operators.OperatorWindowWithSize)
.class public final Lrx/internal/operators/OperatorWindowWithSize;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;,
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;,
        Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "skip"    # I

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    .line 47
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
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
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-ne v3, v4, :cond_1a

    .line 53
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;-><init>(Lrx/Subscriber;I)V

    .line 55
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 56
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 74
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    :goto_19
    return-object v0

    .line 60
    :cond_1a
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-le v3, v4, :cond_37

    .line 61
    new-instance v2, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;-><init>(Lrx/Subscriber;II)V

    .line 63
    .local v2, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 64
    invoke-virtual {v2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v2

    .line 66
    goto :goto_19

    .line 69
    .end local v2    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_37
    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;-><init>(Lrx/Subscriber;II)V

    .line 71
    .local v1, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v3, v1, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 72
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v1

    .line 74
    goto :goto_19
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowExact (rx.internal.operators.OperatorWindowWithSize$WindowExact)
.class final Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lrx/Subscription;

.field index:I

.field final size:I

.field window:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    .line 93
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    .line 96
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->add(Lrx/Subscription;)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->request(J)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->unsubscribe()V

    .line 168
    :cond_b
    return-void
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 141
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 143
    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 145
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 146
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 130
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 132
    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
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
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    .line 104
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 105
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_18

    .line 106
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 108
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    invoke-static {v2, p0}, Lrx/subjects/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/subjects/UnicastSubject;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 111
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 117
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    if-ne v0, v2, :cond_2b

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 120
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    .line 124
    :goto_2a
    return-void

    .line 122
    :cond_2b
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    goto :goto_2a
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowExact.AnonymousClass1 (rx.internal.operators.OperatorWindowWithSize$WindowExact$1)
.class Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->createProducer()Lrx/Producer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;)V
    .registers 2

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact.1;"
    const-wide/16 v4, 0x0

    .line 152
    cmp-long v2, p1, v4

    if-gez v2, :cond_1f

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1f
    cmp-long v2, p1, v4

    if-eqz v2, :cond_31

    .line 156
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v0

    .line 157
    .local v0, "u":J
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    invoke-static {v2, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->access$000(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;J)V

    .line 159
    .end local v0    # "u":J
    :cond_31
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowOverlap (rx.internal.operators.OperatorWindowWithSize$WindowOverlap)
.class final Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lrx/Subscription;

.field volatile done:Z

.field final drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

.field error:Ljava/lang/Throwable;

.field index:I

.field produced:I

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final size:I

.field final skip:I

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 8
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 314
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    .line 315
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->size:I

    .line 316
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    .line 317
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    .line 322
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->add(Lrx/Subscription;)V

    .line 323
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    .line 324
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, p2

    div-int v0, v1, p3

    .line 325
    .local v0, "maxWindows":I
    new-instance v1, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    .line 326
    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 399
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->unsubscribe()V

    .line 401
    :cond_b
    return-void
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
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;",
            "Ljava/util/Queue",
            "<",
            "Lrx/subjects/Subject",
            "<TT;TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 456
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 471
    :goto_a
    return v1

    .line 459
    :cond_b
    if-eqz p1, :cond_1e

    .line 460
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->error:Ljava/lang/Throwable;

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_18

    .line 462
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 463
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 466
    :cond_18
    if-eqz p2, :cond_1e

    .line 467
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_a

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 393
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;)V

    return-object v0
.end method

.method drain()V
    .registers 15

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    .local v2, "dw":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_9

    .line 452
    :cond_8
    :goto_8
    return-void

    .line 409
    :cond_9
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    .line 410
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    iget-object v7, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    .line 412
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v6, 0x1

    .line 416
    .local v6, "missed":I
    :cond_e
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 417
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "e":J
    :goto_16
    cmp-long v11, v4, v8

    if-eqz v11, :cond_2d

    .line 420
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 421
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/subjects/Subject;

    .line 422
    .local v10, "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v10, :cond_5a

    const/4 v3, 0x1

    .line 424
    .local v3, "empty":Z
    :goto_25
    invoke-virtual {p0, v1, v3, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 428
    if-eqz v3, :cond_5c

    .line 437
    .end local v1    # "d":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_2d
    cmp-long v11, v4, v8

    if-nez v11, :cond_3d

    .line 438
    iget-boolean v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 443
    :cond_3d
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_52

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_52

    .line 444
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 447
    :cond_52
    neg-int v11, v6

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 448
    if-nez v6, :cond_e

    goto :goto_8

    .line 422
    .restart local v1    # "d":Z
    .restart local v10    # "v":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_5a
    const/4 v3, 0x0

    goto :goto_25

    .line 432
    .restart local v3    # "empty":Z
    :cond_5c
    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 434
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 435
    goto :goto_16
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    .line 384
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    goto :goto_6

    .line 386
    .end local v1    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 389
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 390
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    .line 372
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 374
    .end local v1    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->error:Ljava/lang/Throwable;

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->done:Z

    .line 378
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    .line 332
    .local v0, "i":I
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    .line 334
    .local v3, "q":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lrx/subjects/Subject<TT;TT;>;>;"
    if-nez v0, :cond_24

    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_24

    .line 335
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 337
    const/16 v5, 0x10

    invoke-static {v5, p0}, Lrx/subjects/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/subjects/UnicastSubject;

    move-result-object v4

    .line 338
    .local v4, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->queue:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 344
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_24
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 345
    .restart local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v4, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_2a

    .line 348
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_3a
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    add-int/lit8 v2, v5, 0x1

    .line 350
    .local v2, "p":I
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->size:I

    if-ne v2, v5, :cond_5d

    .line 351
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    sub-int v5, v2, v5

    iput v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/Subject;

    .line 354
    .restart local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v4, :cond_53

    .line 355
    invoke-virtual {v4}, Lrx/subjects/Subject;->onCompleted()V

    .line 361
    .end local v4    # "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    .line 362
    iget v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    if-ne v0, v5, :cond_60

    .line 363
    const/4 v5, 0x0

    iput v5, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    .line 367
    :goto_5c
    return-void

    .line 358
    :cond_5d
    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->produced:I

    goto :goto_53

    .line 365
    :cond_60
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->index:I

    goto :goto_5c
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowOverlap.WindowOverlapProducer (rx.internal.operators.OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer)
.class final Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40322bd5c2bb9bacL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;)V
    .registers 2

    .prologue
    .line 474
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>.WindowOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>.WindowOverlapProducer;"
    const-wide/16 v6, 0x0

    .line 480
    cmp-long v1, p1, v6

    if-gez v1, :cond_1f

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n >= 0 required but it was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_1f
    cmp-long v1, p1, v6

    if-eqz v1, :cond_50

    .line 485
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    .line 487
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->get()Z

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 488
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 489
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->size:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .line 491
    .local v4, "v":J
    invoke-static {v0, v4, v5}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->access$300(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V

    .line 497
    .end local v4    # "v":J
    :goto_48
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 498
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->drain()V

    .line 500
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .end local v2    # "u":J
    :cond_50
    return-void

    .line 493
    .restart local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    :cond_51
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->skip:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 494
    .restart local v2    # "u":J
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    invoke-static {v1, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->access$400(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V

    goto :goto_48
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowSkip (rx.internal.operators.OperatorWindowWithSize$WindowSkip)
.class final Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lrx/Subscription;

.field index:I

.field final size:I

.field final skip:I

.field window:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 187
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    .line 188
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    .line 189
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->add(Lrx/Subscription;)V

    .line 193
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    .line 194
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->unsubscribe()V

    .line 259
    :cond_b
    return-void
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 243
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 245
    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 247
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 248
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 232
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 234
    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 236
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 237
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
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    .line 200
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 201
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_18

    .line 202
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 204
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    invoke-static {v2, p0}, Lrx/subjects/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/subjects/UnicastSubject;

    move-result-object v1

    .line 205
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 209
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-eqz v1, :cond_1f

    .line 212
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 215
    :cond_1f
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    if-ne v0, v2, :cond_2c

    .line 216
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 218
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    .line 226
    :goto_2b
    return-void

    .line 220
    :cond_2c
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    if-ne v0, v2, :cond_34

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    goto :goto_2b

    .line 223
    :cond_34
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    goto :goto_2b
.end method

###### Class rx.internal.operators.OperatorWindowWithSize.WindowSkip.WindowSkipProducer (rx.internal.operators.OperatorWindowWithSize$WindowSkip$WindowSkipProducer)
.class final Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowSkipProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40322bd5c2bb9bacL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;)V
    .registers 2

    .prologue
    .line 261
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>.WindowSkipProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>.WindowSkipProducer;"
    const-wide/16 v8, 0x0

    .line 267
    cmp-long v1, p1, v8

    if-gez v1, :cond_1f

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "n >= 0 required but it was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1f
    cmp-long v1, p1, v8

    if-eqz v1, :cond_4f

    .line 271
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    .line 272
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->get()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 273
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 274
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    iget v8, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v4

    .line 275
    .local v4, "v":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    .line 276
    .local v6, "w":J
    invoke-static {v0, v6, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->access$100(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V

    .line 282
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .end local v2    # "u":J
    .end local v4    # "v":J
    .end local v6    # "w":J
    :cond_4f
    :goto_4f
    return-void

    .line 278
    .restart local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_50
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 279
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->access$200(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V

    goto :goto_4f
.end method
