###### Class com.vungle.publisher.bw (com.vungle.publisher.bw)
.class public Lcom/vungle/publisher/bw;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/bw$a;,
        Lcom/vungle/publisher/bw$c;,
        Lcom/vungle/publisher/bw$b;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Lcom/vungle/publisher/bw$a;

.field private final c:Lcom/vungle/publisher/bw$c;

.field private final d:Lcom/vungle/publisher/bw$c;

.field private final e:Lcom/vungle/publisher/bw$c;

.field private final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/16 v4, 0x1e

    const/4 v8, 0x1

    const/4 v2, 0x2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/bw;->f:Ljava/util/concurrent/BlockingQueue;

    .line 73
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "VungleAsyncMasterThread"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Lcom/vungle/publisher/bw$c;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v6, "VungleAsyncClientEventThread-"

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/bw$c;-><init>(Lcom/vungle/publisher/bw;IIILjava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/publisher/bw;->c:Lcom/vungle/publisher/bw$c;

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/bw;->c:Lcom/vungle/publisher/bw$c;

    invoke-virtual {v0, v8}, Lcom/vungle/publisher/bw$c;->allowCoreThreadTimeOut(Z)V

    .line 77
    new-instance v0, Lcom/vungle/publisher/bw$c;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v6, "VungleAsyncExternalNetworkRequestThread-"

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/bw$c;-><init>(Lcom/vungle/publisher/bw;IIILjava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/publisher/bw;->d:Lcom/vungle/publisher/bw$c;

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/bw;->d:Lcom/vungle/publisher/bw$c;

    invoke-virtual {v0, v8}, Lcom/vungle/publisher/bw$c;->allowCoreThreadTimeOut(Z)V

    .line 79
    new-instance v0, Lcom/vungle/publisher/bw$a;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/bw$a;-><init>(Lcom/vungle/publisher/bw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 80
    new-instance v0, Lcom/vungle/publisher/bw$c;

    iget-object v5, p0, Lcom/vungle/publisher/bw;->f:Ljava/util/concurrent/BlockingQueue;

    const-string v6, "VungleAsyncMainThread-"

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/bw$c;-><init>(Lcom/vungle/publisher/bw;IIILjava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/publisher/bw;->e:Lcom/vungle/publisher/bw$c;

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/bw;->e:Lcom/vungle/publisher/bw$c;

    invoke-virtual {v0, v8}, Lcom/vungle/publisher/bw$c;->allowCoreThreadTimeOut(Z)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/bw;->e:Lcom/vungle/publisher/bw$c;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/bw;->c:Lcom/vungle/publisher/bw$c;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/bw;->d:Lcom/vungle/publisher/bw$c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/bw$b;)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw$a;->removeMessages(I)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 85
    sget-object v0, Lcom/vungle/publisher/bw$b;->n:Lcom/vungle/publisher/bw$b;

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 111
    sget-object v0, Lcom/vungle/publisher/bw$b;->n:Lcom/vungle/publisher/bw$b;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)Landroid/os/Message;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw$a;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V
    .registers 8

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/bw;->a:Lcom/vungle/publisher/zl;

    invoke-virtual {v0}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v0

    sub-long v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;JJ)V
    .registers 10

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 131
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/vungle/publisher/bw;->c(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)Landroid/os/Message;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1, p3, p4}, Lcom/vungle/publisher/bw$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    return-void
.end method

.method b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)Landroid/os/Message;
    .registers 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 137
    invoke-virtual {p2}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v1

    new-instance v2, Lcom/vungle/publisher/bw$a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, p1, p2}, Lcom/vungle/publisher/bw$a$a;-><init>(Lcom/vungle/publisher/bw$a;Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bw$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;J)V
    .registers 12

    .prologue
    .line 122
    sget-object v3, Lcom/vungle/publisher/bw$b;->n:Lcom/vungle/publisher/bw$b;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;JJ)V

    .line 123
    return-void
.end method

.method public b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V
    .registers 8

    .prologue
    .line 115
    const-string v0, "VungleAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)Landroid/os/Message;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1, p3, p4}, Lcom/vungle/publisher/bw$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    return-void
.end method

.method c(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)Landroid/os/Message;
    .registers 12

    .prologue
    .line 141
    iget-object v1, p0, Lcom/vungle/publisher/bw;->b:Lcom/vungle/publisher/bw$a;

    .line 142
    invoke-virtual {p2}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v6

    new-instance v0, Lcom/vungle/publisher/bw$a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/bw$a$a;-><init>(Lcom/vungle/publisher/bw$a;Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    invoke-virtual {v1, v6, v0}, Lcom/vungle/publisher/bw$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.bw.AnonymousClass1 (com.vungle.publisher.bw$1)
.class synthetic Lcom/vungle/publisher/bw$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 204
    invoke-static {}, Lcom/vungle/publisher/bw$b;->values()[Lcom/vungle/publisher/bw$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/bw$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/bw$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/bw$b;->p:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/bw$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/bw$b;->o:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method

###### Class com.vungle.publisher.bw.a (com.vungle.publisher.bw$a)
.class Lcom/vungle/publisher/bw$a;
.super Landroid/os/Handler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/bw$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/bw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/bw;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vungle/publisher/bw$a;->a:Lcom/vungle/publisher/bw;

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 196
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    if-eqz v1, :cond_82

    instance-of v0, v1, Lcom/vungle/publisher/bw$a$a;

    if-eqz v0, :cond_82

    move-object v0, v1

    .line 198
    check-cast v0, Lcom/vungle/publisher/bw$a$a;

    invoke-static {v0}, Lcom/vungle/publisher/bw$a$a;->c(Lcom/vungle/publisher/bw$a$a;)Lcom/vungle/publisher/bw$b;

    move-result-object v0

    .line 200
    if-nez v0, :cond_63

    .line 201
    iget-object v0, p0, Lcom/vungle/publisher/bw$a;->a:Lcom/vungle/publisher/bw;

    invoke-static {v0}, Lcom/vungle/publisher/bw;->a(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;

    move-result-object v0

    .line 214
    :goto_17
    const-string v2, "VungleAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "VungleAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max pool size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/publisher/bw$c;->getMaximumPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", largest pool size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/publisher/bw$c;->getLargestPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw$c;->execute(Ljava/lang/Runnable;)V

    .line 221
    :goto_62
    return-void

    .line 204
    :cond_63
    sget-object v2, Lcom/vungle/publisher/bw$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/bw$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_9c

    .line 211
    :goto_6e
    iget-object v0, p0, Lcom/vungle/publisher/bw$a;->a:Lcom/vungle/publisher/bw;

    invoke-static {v0}, Lcom/vungle/publisher/bw;->a(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;

    move-result-object v0

    goto :goto_17

    .line 206
    :pswitch_75
    iget-object v0, p0, Lcom/vungle/publisher/bw$a;->a:Lcom/vungle/publisher/bw;

    invoke-static {v0}, Lcom/vungle/publisher/bw;->b(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;

    move-result-object v0

    goto :goto_17

    .line 209
    :pswitch_7c
    iget-object v0, p0, Lcom/vungle/publisher/bw$a;->a:Lcom/vungle/publisher/bw;

    invoke-static {v0}, Lcom/vungle/publisher/bw;->c(Lcom/vungle/publisher/bw;)Lcom/vungle/publisher/bw$c;

    goto :goto_6e

    .line 219
    :cond_82
    const-string v0, "VungleAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 204
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_7c
    .end packed-switch
.end method

###### Class com.vungle.publisher.bw.a.RunnableC0168a (com.vungle.publisher.bw$a$a)
.class Lcom/vungle/publisher/bw$a$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vungle/publisher/bw$a$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/bw$a;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private final d:Lcom/vungle/publisher/bw$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/bw$a;Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V
    .registers 10

    .prologue
    .line 233
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/bw$a$a;-><init>(Lcom/vungle/publisher/bw$a;Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V

    .line 234
    return-void
.end method

.method constructor <init>(Lcom/vungle/publisher/bw$a;Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;J)V
    .registers 6

    .prologue
    .line 236
    iput-object p1, p0, Lcom/vungle/publisher/bw$a$a;->a:Lcom/vungle/publisher/bw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/vungle/publisher/bw$a$a;->b:Ljava/lang/Runnable;

    .line 238
    iput-wide p4, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    .line 239
    iput-object p3, p0, Lcom/vungle/publisher/bw$a$a;->d:Lcom/vungle/publisher/bw$b;

    .line 240
    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/bw$a$a;)Lcom/vungle/publisher/bw$b;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->d:Lcom/vungle/publisher/bw$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/bw$a$a;)I
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->d:Lcom/vungle/publisher/bw$b;

    iget-object v1, p1, Lcom/vungle/publisher/bw$a$a;->d:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bw$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/vungle/publisher/bw$a$a;)Z
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->b:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/vungle/publisher/bw$a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 223
    check-cast p1, Lcom/vungle/publisher/bw$a$a;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/bw$a$a;->a(Lcom/vungle/publisher/bw$a$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 270
    if-eqz p1, :cond_10

    instance-of v0, p1, Lcom/vungle/publisher/bw$a$a;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/vungle/publisher/bw$a$a;

    .line 272
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/bw$a$a;->b(Lcom/vungle/publisher/bw$a$a;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 270
    :goto_f
    return v0

    .line 272
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 250
    :try_start_2
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2f
    .catchall {:try_start_2 .. :try_end_7} :catchall_70

    .line 257
    :try_start_7
    iget-wide v0, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_14

    .line 258
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->a:Lcom/vungle/publisher/bw$a;

    iget-wide v2, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/vungle/publisher/bw$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 265
    :cond_14
    :goto_14
    return-void

    .line 261
    :catch_15
    move-exception v0

    .line 262
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error rescheduling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 252
    :catch_2f
    move-exception v0

    .line 253
    :try_start_30
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_70

    .line 257
    :try_start_48
    iget-wide v0, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_14

    .line 258
    iget-object v0, p0, Lcom/vungle/publisher/bw$a$a;->a:Lcom/vungle/publisher/bw$a;

    iget-wide v2, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/vungle/publisher/bw$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_56

    goto :goto_14

    .line 261
    :catch_56
    move-exception v0

    .line 262
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error rescheduling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 256
    :catchall_70
    move-exception v0

    .line 257
    :try_start_71
    iget-wide v2, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_7e

    .line 258
    iget-object v1, p0, Lcom/vungle/publisher/bw$a$a;->a:Lcom/vungle/publisher/bw$a;

    iget-wide v2, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/vungle/publisher/bw$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7e} :catch_7f

    .line 263
    :cond_7e
    :goto_7e
    throw v0

    .line 261
    :catch_7f
    move-exception v1

    .line 262
    const-string v2, "VungleAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error rescheduling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PriorityRunnable:: taskType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/bw$a$a;->d:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vungle/publisher/bw$a$a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.bw.b (com.vungle.publisher.bw$b)
.class public final enum Lcom/vungle/publisher/bw$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/bw$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/bw$b;

.field public static final enum b:Lcom/vungle/publisher/bw$b;

.field public static final enum c:Lcom/vungle/publisher/bw$b;

.field public static final enum d:Lcom/vungle/publisher/bw$b;

.field public static final enum e:Lcom/vungle/publisher/bw$b;

.field public static final enum f:Lcom/vungle/publisher/bw$b;

.field public static final enum g:Lcom/vungle/publisher/bw$b;

.field public static final enum h:Lcom/vungle/publisher/bw$b;

.field public static final enum i:Lcom/vungle/publisher/bw$b;

.field public static final enum j:Lcom/vungle/publisher/bw$b;

.field public static final enum k:Lcom/vungle/publisher/bw$b;

.field public static final enum l:Lcom/vungle/publisher/bw$b;

.field public static final enum m:Lcom/vungle/publisher/bw$b;

.field public static final enum n:Lcom/vungle/publisher/bw$b;

.field public static final enum o:Lcom/vungle/publisher/bw$b;

.field public static final enum p:Lcom/vungle/publisher/bw$b;

.field public static final enum q:Lcom/vungle/publisher/bw$b;

.field public static final enum r:Lcom/vungle/publisher/bw$b;

.field public static final enum s:Lcom/vungle/publisher/bw$b;

.field private static final synthetic t:[Lcom/vungle/publisher/bw$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->a:Lcom/vungle/publisher/bw$b;

    .line 40
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "databaseWrite"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->b:Lcom/vungle/publisher/bw$b;

    .line 41
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "requestWillPlayAd"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->c:Lcom/vungle/publisher/bw$b;

    .line 42
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "reportAd"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->d:Lcom/vungle/publisher/bw$b;

    .line 43
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "reportInstall"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->e:Lcom/vungle/publisher/bw$b;

    .line 44
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "requestLocalAd"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->f:Lcom/vungle/publisher/bw$b;

    .line 45
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "prepareLocalAd"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->g:Lcom/vungle/publisher/bw$b;

    .line 46
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "prepareLocalViewable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->h:Lcom/vungle/publisher/bw$b;

    .line 47
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "downloadLocalAd"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->i:Lcom/vungle/publisher/bw$b;

    .line 48
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "requestConfig"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->j:Lcom/vungle/publisher/bw$b;

    .line 49
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "unfilledAd"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->k:Lcom/vungle/publisher/bw$b;

    .line 50
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "deleteExpiredAds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->l:Lcom/vungle/publisher/bw$b;

    .line 51
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "deleteInactivePlacements"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->m:Lcom/vungle/publisher/bw$b;

    .line 52
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "otherTask"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->n:Lcom/vungle/publisher/bw$b;

    .line 54
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "externalNetworkRequest"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->o:Lcom/vungle/publisher/bw$b;

    .line 56
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "clientEvent"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->p:Lcom/vungle/publisher/bw$b;

    .line 57
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "appFingerprint"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->q:Lcom/vungle/publisher/bw$b;

    .line 58
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "reportExceptions"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->r:Lcom/vungle/publisher/bw$b;

    .line 59
    new-instance v0, Lcom/vungle/publisher/bw$b;

    const-string v1, "sleepWakeup"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bw$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bw$b;->s:Lcom/vungle/publisher/bw$b;

    .line 35
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/vungle/publisher/bw$b;

    sget-object v1, Lcom/vungle/publisher/bw$b;->a:Lcom/vungle/publisher/bw$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/bw$b;->b:Lcom/vungle/publisher/bw$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/bw$b;->c:Lcom/vungle/publisher/bw$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/bw$b;->d:Lcom/vungle/publisher/bw$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/bw$b;->e:Lcom/vungle/publisher/bw$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/bw$b;->f:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/bw$b;->g:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/bw$b;->h:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/bw$b;->i:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/bw$b;->j:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/bw$b;->k:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/bw$b;->l:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/bw$b;->m:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/bw$b;->n:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/bw$b;->o:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vungle/publisher/bw$b;->p:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vungle/publisher/bw$b;->q:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vungle/publisher/bw$b;->r:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vungle/publisher/bw$b;->s:Lcom/vungle/publisher/bw$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/bw$b;->t:[Lcom/vungle/publisher/bw$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/bw$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/vungle/publisher/bw$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bw$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/bw$b;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/vungle/publisher/bw$b;->t:[Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/bw$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/bw$b;

    return-object v0
.end method

###### Class com.vungle.publisher.bw.c (com.vungle.publisher.bw$c)
.class Lcom/vungle/publisher/bw$c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/bw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/bw;IIILjava/util/concurrent/BlockingQueue;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vungle/publisher/bw$c;->a:Lcom/vungle/publisher/bw;

    .line 161
    int-to-long v4, p4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/vungle/publisher/bw$c$1;

    invoke-direct {v8, p1, p6}, Lcom/vungle/publisher/bw$c$1;-><init>(Lcom/vungle/publisher/bw;Ljava/lang/String;)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/bw$c;->allowCoreThreadTimeOut(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 183
    if-eqz p2, :cond_c

    .line 184
    const-string v0, "VungleAsync"

    const-string v1, "error after executing runnable"

    invoke-static {v0, v1, p2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_c
    return-void
.end method

###### Class com.vungle.publisher.bw.c.AnonymousClass1 (com.vungle.publisher.bw$c$1)
.class Lcom/vungle/publisher/bw$c$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/bw$c;-><init>(Lcom/vungle/publisher/bw;IIILjava/util/concurrent/BlockingQueue;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/vungle/publisher/bw;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/bw;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vungle/publisher/bw$c$1;->b:Lcom/vungle/publisher/bw;

    iput-object p2, p0, Lcom/vungle/publisher/bw$c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/bw$c$1;->a:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/publisher/bw$c$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vungle/publisher/bw$c$1;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vungle/publisher/bw$c$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
