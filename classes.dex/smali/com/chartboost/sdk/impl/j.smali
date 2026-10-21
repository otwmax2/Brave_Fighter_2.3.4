###### Class com.chartboost.sdk.impl.j (com.chartboost.sdk.impl.j)
.class Lcom/chartboost/sdk/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/j;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lcom/chartboost/sdk/Libraries/i;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/impl/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:J


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Libraries/i;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/impl/h;",
            ">;J",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j;->g:Lcom/chartboost/sdk/Libraries/i;

    .line 38
    iput p2, p0, Lcom/chartboost/sdk/impl/j;->a:I

    .line 39
    iput-object p3, p0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/chartboost/sdk/impl/j;->d:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    iput-object p7, p0, Lcom/chartboost/sdk/impl/j;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    iput-wide p8, p0, Lcom/chartboost/sdk/impl/j;->i:J

    .line 45
    iput-object p10, p0, Lcom/chartboost/sdk/impl/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/j;)I
    .registers 4

    .prologue
    .line 52
    iget v0, p0, Lcom/chartboost/sdk/impl/j;->a:I

    iget v1, p1, Lcom/chartboost/sdk/impl/j;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method a(Ljava/util/concurrent/Executor;Z)V
    .registers 9

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_33

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/h;

    .line 58
    if-eqz v0, :cond_33

    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j;->g:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/j;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 60
    new-instance v2, Lcom/chartboost/sdk/impl/i;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v0, p2, v1, v3}, Lcom/chartboost/sdk/impl/i;-><init>(Lcom/chartboost/sdk/impl/h;ZII)V

    .line 64
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    :cond_33
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 10
    check-cast p1, Lcom/chartboost/sdk/impl/j;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/j;)I

    move-result v0

    return v0
.end method
