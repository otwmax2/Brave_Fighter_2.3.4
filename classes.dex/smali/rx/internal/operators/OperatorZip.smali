###### Class rx.internal.operators.OperatorZip (rx.internal.operators.OperatorZip)
.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;[",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func2;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 59
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func3;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 64
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func4;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 69
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func5;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func6;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 79
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func7;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 84
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func8;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 89
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func9;

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 94
    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "f":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v3, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 100
    .local v2, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 101
    .local v0, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v1, p0, p1, v2, v0}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 103
    .local v1, "subscriber":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 104
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 106
    return-object v1
.end method

###### Class rx.internal.operators.OperatorZip.Zip (rx.internal.operators.OperatorZip$Zip)
.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 176
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 186
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 187
    return-void
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 8
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 192
    .local v2, "subscribers":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_16

    .line 193
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 194
    .local v1, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    aput-object v1, v2, v0

    .line 195
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 198
    .end local v1    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :cond_16
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    :goto_1b
    array-length v3, p1

    if-ge v0, v3, :cond_2a

    .line 202
    aget-object v4, p1, v0

    aget-object v3, v2, v0

    check-cast v3, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v4, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 204
    :cond_2a
    return-void
.end method

.method tick()V
    .registers 21

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 216
    .local v14, "subscribers":[Ljava/lang/Object;
    if-nez v14, :cond_7

    .line 286
    :cond_6
    :goto_6
    return-void

    .line 220
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->getAndIncrement()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_6

    .line 221
    array-length v10, v14

    .line 222
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 223
    .local v5, "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v13, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1a
    :goto_1a
    new-array v15, v10, [Ljava/lang/Object;

    .line 228
    .local v15, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 229
    .local v2, "allHaveValues":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1e
    if-ge v7, v10, :cond_4c

    .line 230
    aget-object v16, v14, v7

    check-cast v16, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    move-object/from16 v0, v16

    iget-object v4, v0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 231
    .local v4, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v11

    .line 233
    .local v11, "n":Ljava/lang/Object;
    if-nez v11, :cond_32

    .line 234
    const/4 v2, 0x0

    .line 229
    :goto_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 238
    :cond_32
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 239
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_6

    .line 245
    :cond_45
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    goto :goto_2f

    .line 249
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v11    # "n":Ljava/lang/Object;
    :cond_4c
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_df

    if-eqz v2, :cond_df

    .line 252
    :try_start_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7a} :catch_a2

    .line 261
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_7d
    if-ge v8, v9, :cond_ab

    aget-object v12, v3, v8

    .line 262
    .local v12, "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v4, v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 263
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 265
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a8

    .line 267
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto/16 :goto_6

    .line 256
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catch_a2
    move-exception v6

    .line 257
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6, v5, v15}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 261
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 273
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_ab
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    sget v17, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1a

    .line 274
    move-object v3, v14

    array-length v9, v3

    const/4 v8, 0x0

    :goto_bc
    if-ge v8, v9, :cond_d5

    aget-object v12, v3, v8

    .line 275
    .restart local v12    # "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    .line 277
    :cond_d5
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1a

    .line 283
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_df
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->decrementAndGet()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1a

    goto/16 :goto_6
.end method

###### Class rx.internal.operators.OperatorZip.Zip.InnerSubscriber (rx.internal.operators.OperatorZip$Zip$InnerSubscriber)
.class final Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip$Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerSubscriber"
.end annotation


# instance fields
.field final items:Lrx/internal/util/RxRingBuffer;

.field final synthetic this$0:Lrx/internal/operators/OperatorZip$Zip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .registers 3

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 293
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 306
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 307
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_5} :catch_b

    .line 323
    :goto_5
    iget-object v1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 324
    return-void

    .line 320
    :catch_b
    move-exception v0

    .line 321
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->request(J)V

    .line 298
    return-void
.end method

.method public requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->request(J)V

    .line 302
    return-void
.end method

###### Class rx.internal.operators.OperatorZip.ZipProducer (rx.internal.operators.OperatorZip$ZipProducer)
.class final Lrx/internal/operators/OperatorZip$ZipProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10e280be328ab0acL


# instance fields
.field final zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    .local p1, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$ZipProducer;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 157
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipProducer;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 164
    return-void
.end method

###### Class rx.internal.operators.OperatorZip.ZipSubscriber (rx.internal.operators.OperatorZip$ZipSubscriber)
.class final Lrx/internal/operators/OperatorZip$ZipSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ZipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<[",
        "Lrx/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorZip$ZipProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorZip;

.field final zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;",
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p4, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->this$0:Lrx/internal/operators/OperatorZip;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 119
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    .line 120
    iput-object p3, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 121
    iput-object p4, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    .line 122
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    if-nez v0, :cond_9

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 130
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    check-cast p1, [Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip$ZipSubscriber;->onNext([Lrx/Observable;)V

    return-void
.end method

.method public onNext([Lrx/Observable;)V
    .registers 4
    .param p1, "observables"    # [Lrx/Observable;

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_b

    .line 140
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 145
    :goto_a
    return-void

    .line 142
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    .line 143
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;->start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_a
.end method
