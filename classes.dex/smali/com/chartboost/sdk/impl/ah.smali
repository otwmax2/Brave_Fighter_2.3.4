###### Class com.chartboost.sdk.impl.ah (com.chartboost.sdk.impl.ah)
.class public Lcom/chartboost/sdk/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/chartboost/sdk/impl/ao;

.field private final d:Lcom/chartboost/sdk/impl/ai;

.field private final e:Lcom/chartboost/sdk/Libraries/i;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ao;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 7

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p6, p0, Lcom/chartboost/sdk/impl/ah;->a:Ljava/util/concurrent/Executor;

    .line 24
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    .line 25
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ah;->c:Lcom/chartboost/sdk/impl/ao;

    .line 26
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ah;->d:Lcom/chartboost/sdk/impl/ai;

    .line 27
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 28
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/ad",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v7, p0, Lcom/chartboost/sdk/impl/ah;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/an;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah;->c:Lcom/chartboost/sdk/impl/ao;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah;->d:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/an;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ao;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Lcom/chartboost/sdk/impl/ad;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
