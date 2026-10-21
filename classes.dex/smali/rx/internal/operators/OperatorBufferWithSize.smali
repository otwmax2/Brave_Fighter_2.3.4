###### Class rx.internal.operators.OperatorBufferWithSize (rx.internal.operators.OperatorBufferWithSize)
.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;,
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;,
        Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
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
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_d

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_d
    if-gtz p2, :cond_17

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_17
    iput p1, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    .line 61
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v3, v4, :cond_18

    .line 67
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;-><init>(Lrx/Subscriber;I)V

    .line 69
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 87
    .end local v0    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    :goto_17
    return-object v0

    .line 74
    :cond_18
    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-le v3, v4, :cond_33

    .line 75
    new-instance v2, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;-><init>(Lrx/Subscriber;II)V

    .line 77
    .local v2, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 78
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v2

    .line 80
    goto :goto_17

    .line 82
    .end local v2    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_33
    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;-><init>(Lrx/Subscriber;II)V

    .line 84
    .local v1, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 85
    invoke-virtual {v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v1

    .line 87
    goto :goto_17
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferExact (rx.internal.operators.OperatorBufferWithSize$BufferExact)
.class final Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    .line 98
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 127
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_9

    .line 128
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    :cond_9
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 122
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
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 105
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_d

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 110
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    if-ne v1, v2, :cond_20

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 116
    :cond_20
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferExact.AnonymousClass1 (rx.internal.operators.OperatorBufferWithSize$BufferExact$1)
.class Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->createProducer()Lrx/Producer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferExact;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;)V
    .registers 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferExact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact.1;"
    const-wide/16 v4, 0x0

    .line 137
    cmp-long v2, p1, v4

    if-gez v2, :cond_1f

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n >= required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_1f
    cmp-long v2, p1, v4

    if-eqz v2, :cond_31

    .line 141
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferExact;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v0

    .line 142
    .local v0, "u":J
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferExact;

    invoke-static {v2, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->access$000(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;J)V

    .line 144
    .end local v0    # "u":J
    :cond_31
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferOverlap (rx.internal.operators.OperatorBufferWithSize$BufferOverlap)
.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final count:I

.field index:J

.field produced:J

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final skip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 251
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    .line 252
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    .line 253
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    .line 254
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    .line 257
    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 7

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    .line 296
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_36

    .line 297
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_30

    .line 298
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More produced than requested? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 305
    :goto_2f
    return-void

    .line 301
    :cond_30
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 304
    :cond_36
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-static {v2, v3, v4}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    goto :goto_2f
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 289
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 261
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    .line 262
    .local v2, "i":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_16

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 266
    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_16
    add-long/2addr v2, v10

    .line 267
    iget v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-nez v5, :cond_36

    .line 268
    iput-wide v8, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    .line 273
    :goto_20
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 274
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_36
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->index:J

    goto :goto_20

    .line 277
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    if-ne v5, v6, :cond_5a

    .line 279
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 280
    iget-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->produced:J

    .line 281
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 283
    :cond_5a
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferOverlap.BufferOverlapProducer (rx.internal.operators.OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer)
.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37bb5316f95bb99bL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V
    .registers 2

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    .line 319
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->queue:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->actual:Lrx/Subscriber;

    invoke-static {v1, p1, p2, v6, v7}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 320
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_37

    .line 321
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->get()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 322
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 323
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->count:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .line 325
    .local v4, "v":J
    invoke-static {v0, v4, v5}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->access$300(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    .line 332
    .end local v2    # "u":J
    .end local v4    # "v":J
    :cond_37
    :goto_37
    return-void

    .line 327
    :cond_38
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->skip:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 328
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->access$400(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    goto :goto_37
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferSkip (rx.internal.operators.OperatorBufferWithSize$BufferSkip)
.class final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field index:J

.field final skip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 159
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    .line 160
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    .line 161
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    .line 163
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 207
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 199
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_c

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 203
    :cond_c
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 204
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 167
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    .line 168
    .local v2, "i":J
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 169
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    cmp-long v1, v2, v6

    if-nez v1, :cond_13

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 173
    :cond_13
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 174
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_35

    .line 175
    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    .line 180
    :goto_1f
    if-eqz v0, :cond_34

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    if-ne v1, v4, :cond_34

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 188
    :cond_34
    return-void

    .line 177
    :cond_35
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    goto :goto_1f
.end method

###### Class rx.internal.operators.OperatorBufferWithSize.BufferSkip.BufferSkipProducer (rx.internal.operators.OperatorBufferWithSize$BufferSkip$BufferSkipProducer)
.class final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferSkipProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f9355307bc4d2b2L


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;)V
    .registers 2

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>.BufferSkipProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>.BufferSkipProducer;"
    const-wide/16 v8, 0x0

    .line 218
    cmp-long v1, p1, v8

    if-gez v1, :cond_1f

    .line 219
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

    .line 221
    :cond_1f
    cmp-long v1, p1, v8

    if-eqz v1, :cond_4f

    .line 222
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    .line 223
    .local v0, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->get()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 224
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 225
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    iget v8, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v4

    .line 226
    .local v4, "v":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    .line 227
    .local v6, "w":J
    invoke-static {v0, v6, v7}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->access$100(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V

    .line 233
    .end local v0    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .end local v2    # "u":J
    .end local v4    # "v":J
    .end local v6    # "w":J
    :cond_4f
    :goto_4f
    return-void

    .line 229
    .restart local v0    # "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_50
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 230
    .restart local v2    # "u":J
    invoke-static {v0, v2, v3}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->access$200(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V

    goto :goto_4f
.end method
