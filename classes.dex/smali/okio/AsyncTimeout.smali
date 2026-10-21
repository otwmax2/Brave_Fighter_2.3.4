###### Class okio.AsyncTimeout (okio.AsyncTimeout)
.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokio/AsyncTimeout;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object v0
.end method

.method static synthetic access$002(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .registers 1
    .param p0, "x0"    # Lokio/AsyncTimeout;

    .prologue
    .line 40
    sput-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object p0
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v1, 0x0

    .line 341
    sget-object v8, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v8, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 344
    .local v0, "node":Lokio/AsyncTimeout;
    if-nez v0, :cond_29

    .line 345
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 346
    .local v2, "startNanos":J
    const-class v8, Lokio/AsyncTimeout;

    sget-wide v10, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 347
    sget-object v8, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v8, v8, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v8, :cond_28

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sget-wide v10, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_28

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 367
    .end local v2    # "startNanos":J
    :cond_28
    :goto_28
    return-object v1

    .line 352
    :cond_29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    .line 355
    .local v6, "waitNanos":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_43

    .line 358
    div-long v4, v6, v10

    .line 359
    .local v4, "waitMillis":J
    mul-long v8, v4, v10

    sub-long/2addr v6, v8

    .line 360
    const-class v8, Lokio/AsyncTimeout;

    long-to-int v9, v6

    invoke-virtual {v8, v4, v5, v9}, Ljava/lang/Object;->wait(JI)V

    goto :goto_28

    .line 365
    .end local v4    # "waitMillis":J
    :cond_43
    sget-object v8, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v9, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v9, v8, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 366
    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-object v1, v0

    .line 367
    goto :goto_28
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4
    .param p0, "node"    # Lokio/AsyncTimeout;

    .prologue
    .line 127
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .local v0, "prev":Lokio/AsyncTimeout;
    :goto_5
    if-eqz v0, :cond_18

    .line 128
    iget-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v1, p0, :cond_15

    .line 129
    iget-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 131
    const/4 v1, 0x0

    .line 136
    :goto_13
    monitor-exit v2

    return v1

    .line 127
    :cond_15
    :try_start_15
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    .line 136
    :cond_18
    const/4 v1, 0x1

    goto :goto_13

    .line 127
    .end local v0    # "prev":Lokio/AsyncTimeout;
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private remainingNanos(J)J
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 144
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 15
    .param p0, "node"    # Lokio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 85
    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    :try_start_5
    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v3, :cond_18

    .line 86
    new-instance v3, Lokio/AsyncTimeout;

    invoke-direct {v3}, Lokio/AsyncTimeout;-><init>()V

    sput-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 87
    new-instance v3, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v3}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v3}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 91
    .local v0, "now":J
    cmp-long v3, p1, v8

    if-eqz v3, :cond_53

    if-eqz p3, :cond_53

    .line 94
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v0

    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 104
    :goto_2e
    invoke-direct {p0, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    .line 105
    .local v4, "remainingNanos":J
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 106
    .local v2, "prev":Lokio/AsyncTimeout;
    :goto_34
    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_42

    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v3, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_6e

    .line 107
    :cond_42
    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 108
    iput-object p0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v2, v3, :cond_51

    .line 110
    const-class v3, Lokio/AsyncTimeout;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    .line 115
    :cond_51
    monitor-exit v6

    return-void

    .line 95
    .end local v2    # "prev":Lokio/AsyncTimeout;
    .end local v4    # "remainingNanos":J
    :cond_53
    cmp-long v3, p1, v8

    if-eqz v3, :cond_5f

    .line 96
    add-long v8, v0, p1

    :try_start_59
    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    .line 85
    .end local v0    # "now":J
    :catchall_5c
    move-exception v3

    monitor-exit v6

    throw v3

    .line 97
    .restart local v0    # "now":J
    :cond_5f
    if-eqz p3, :cond_68

    .line 98
    :try_start_61
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_2e

    .line 100
    :cond_68
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 105
    .restart local v2    # "prev":Lokio/AsyncTimeout;
    .restart local v4    # "remainingNanos":J
    :cond_6e
    iget-object v2, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method


# virtual methods
.method public final enter()V
    .registers 7

    .prologue
    .line 72
    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Unbalanced enter/exit"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_c
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v2

    .line 74
    .local v2, "timeoutNanos":J
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v0

    .line 75
    .local v0, "hasDeadline":Z
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1d

    if-nez v0, :cond_1d

    .line 80
    :goto_1c
    return-void

    .line 78
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 79
    invoke-static {p0, v2, v3, v0}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    goto :goto_1c
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    .line 284
    .end local p1    # "cause":Ljava/io/IOException;
    :goto_6
    return-object p1

    .restart local p1    # "cause":Ljava/io/IOException;
    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6
.end method

.method final exit(Z)V
    .registers 4
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 274
    .local v0, "timedOut":Z
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 275
    :cond_e
    return-void
.end method

.method public final exit()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_6

    .line 121
    :goto_5
    return v0

    .line 120
    :cond_6
    iput-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 121
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_5
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 293
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_c

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 297
    :cond_c
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3
    .param p1, "sink"    # Lokio/Sink;

    .prologue
    .line 159
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3
    .param p1, "source"    # Lokio/Source;

    .prologue
    .line 231
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    .prologue
    .line 152
    return-void
.end method

###### Class okio.AsyncTimeout.AnonymousClass1 (okio.AsyncTimeout$1)
.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lokio/AsyncTimeout;

    .prologue
    .line 159
    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 207
    :try_start_6
    iget-object v2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 208
    const/4 v1, 0x1

    .line 212
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 214
    return-void

    .line 209
    :catch_12
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 194
    :try_start_6
    iget-object v2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 195
    const/4 v1, 0x1

    .line 199
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 201
    return-void

    .line 196
    :catch_12
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 16
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 163
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_4d

    .line 165
    const-wide/16 v10, 0x0

    .line 166
    .local v10, "toWrite":J
    iget-object v7, p1, Lokio/Buffer;->head:Lokio/Segment;

    .local v7, "s":Lokio/Segment;
    :goto_10
    const-wide/32 v0, 0x10000

    cmp-long v0, v10, v0

    if-gez v0, :cond_28

    .line 167
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int v8, v0, v1

    .line 168
    .local v8, "segmentSize":I
    int-to-long v0, v8

    add-long/2addr v10, v0

    .line 169
    cmp-long v0, v10, p2

    if-ltz v0, :cond_3b

    .line 170
    move-wide v10, p2

    .line 176
    .end local v8    # "segmentSize":I
    :cond_28
    const/4 v9, 0x0

    .line 177
    .local v9, "throwOnTimeout":Z
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 179
    :try_start_2e
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0, p1, v10, v11}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_3e
    .catchall {:try_start_2e .. :try_end_33} :catchall_46

    .line 180
    sub-long/2addr p2, v10

    .line 181
    const/4 v9, 0x1

    .line 185
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, v9}, Lokio/AsyncTimeout;->exit(Z)V

    goto :goto_8

    .line 166
    .end local v9    # "throwOnTimeout":Z
    .restart local v8    # "segmentSize":I
    :cond_3b
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_10

    .line 182
    .end local v8    # "segmentSize":I
    .restart local v9    # "throwOnTimeout":Z
    :catch_3e
    move-exception v6

    .line 183
    .local v6, "e":Ljava/io/IOException;
    :try_start_3f
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, v6}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_46

    .line 185
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_46
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v9}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0

    .line 188
    .end local v7    # "s":Lokio/Segment;
    .end local v9    # "throwOnTimeout":Z
    .end local v10    # "toWrite":J
    :cond_4d
    return-void
.end method

###### Class okio.AsyncTimeout.AnonymousClass2 (okio.AsyncTimeout$2)
.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lokio/AsyncTimeout;

    .prologue
    .line 231
    iput-object p1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "throwOnTimeout":Z
    :try_start_1
    iget-object v2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v2}, Lokio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_d
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 250
    const/4 v1, 0x1

    .line 254
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 256
    return-void

    .line 251
    :catch_d
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    :try_start_e
    iget-object v2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_15

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_15
    move-exception v2

    iget-object v3, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "throwOnTimeout":Z
    iget-object v4, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V

    .line 236
    :try_start_6
    iget-object v4, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v4, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_13
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-wide v2

    .line 237
    .local v2, "result":J
    const/4 v1, 0x1

    .line 242
    iget-object v4, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4, v1}, Lokio/AsyncTimeout;->exit(Z)V

    .line 238
    return-wide v2

    .line 239
    .end local v2    # "result":J
    :catch_13
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    :try_start_14
    iget-object v4, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1b
    move-exception v4

    iget-object v5, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v5, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.AsyncTimeout.Watchdog (okio.AsyncTimeout$Watchdog)
.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 302
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 310
    :goto_0
    :try_start_0
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_e

    .line 311
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    .line 314
    .local v0, "timedOut":Lokio/AsyncTimeout;
    if-nez v0, :cond_10

    monitor-exit v2

    goto :goto_0

    .line 322
    .end local v0    # "timedOut":Lokio/AsyncTimeout;
    :catchall_b
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    .line 326
    :catch_e
    move-exception v1

    goto :goto_0

    .line 318
    .restart local v0    # "timedOut":Lokio/AsyncTimeout;
    :cond_10
    :try_start_10
    invoke-static {}, Lokio/AsyncTimeout;->access$000()Lokio/AsyncTimeout;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 319
    const/4 v1, 0x0

    invoke-static {v1}, Lokio/AsyncTimeout;->access$002(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 320
    monitor-exit v2

    return-void

    .line 322
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    .line 325
    :try_start_1d
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_e

    goto :goto_0
.end method
