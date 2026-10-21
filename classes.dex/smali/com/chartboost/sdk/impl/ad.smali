###### Class com.chartboost.sdk.impl.ad (com.chartboost.sdk.impl.ad)
.class public Lcom/chartboost/sdk/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/io/File;

.field public g:J

.field public h:J

.field public i:J

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ad;->c:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/chartboost/sdk/impl/ad;->d:I

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ad;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    .line 47
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/ad;->g:J

    .line 48
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/ad;->h:J

    .line 49
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/ad;->i:J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ad;->j:I

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/ae;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Lcom/chartboost/sdk/impl/ae;

    invoke-direct {v0, v1, v1, v1}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/ag;)Lcom/chartboost/sdk/impl/af;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ag;",
            ")",
            "Lcom/chartboost/sdk/impl/af",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/ag;)V
    .registers 3

    .prologue
    .line 79
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/ag;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/chartboost/sdk/impl/ag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public b()Z
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ad;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method
