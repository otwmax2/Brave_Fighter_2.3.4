###### Class com.moat.analytics.mobile.cha.t (com.moat.analytics.mobile.cha.t)
.class final Lcom/moat/analytics/mobile/cha/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/t$b;,
        Lcom/moat/analytics/mobile/cha/t$c;,
        Lcom/moat/analytics/mobile/cha/t$e;,
        Lcom/moat/analytics/mobile/cha/t$d;,
        Lcom/moat/analytics/mobile/cha/t$a;
    }
.end annotation


# static fields
.field private static ʻ:Lcom/moat/analytics/mobile/cha/t;

.field private static final ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/moat/analytics/mobile/cha/t$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ʼ:J

.field volatile ˊ:I

.field private ˊॱ:J

.field volatile ˋ:Z

.field private final ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile ˎ:I

.field volatile ˏ:Z

.field private final ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile ॱ:I

.field private final ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile ॱˋ:J

.field private ᐝ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˊॱ:J

    .line 59
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ʼ:J

    .line 69
    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    .line 70
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    .line 71
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    .line 72
    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˊ:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/moat/analytics/mobile/cha/t;->ॱ:I

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    :try_start_37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_43

    .line 99
    :goto_42
    return-void

    .line 97
    :catch_43
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_42
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static ˊ()V
    .registers 10

    .prologue
    .line 165
    sget-object v1, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 166
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/t$e;

    .line 169
    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/t$e;->ˎ:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_d

    .line 170
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    goto :goto_d

    .line 178
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 173
    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_45

    .line 174
    const/4 v0, 0x0

    :goto_3a
    const/4 v2, 0x5

    if-ge v0, v2, :cond_45

    .line 175
    sget-object v2, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 178
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    return-void
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/t;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/t;J)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/cha/t;->ˏ(J)V

    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic ˏ(Lcom/moat/analytics/mobile/cha/t;)J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ʼ:J

    return-wide v0
.end method

.method static declared-synchronized ˏ()Lcom/moat/analytics/mobile/cha/t;
    .registers 2

    .prologue
    .line 82
    const-class v1, Lcom/moat/analytics/mobile/cha/t;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;

    if-nez v0, :cond_e

    .line 83
    new-instance v0, Lcom/moat/analytics/mobile/cha/t;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/t;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;

    .line 85
    :cond_e
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ˏ(J)V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 152
    :goto_a
    return-void

    .line 112
    :cond_b
    const/4 v0, 0x3

    const-string v1, "OnOff"

    const-string v2, "Performing status check."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/moat/analytics/mobile/cha/t$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/cha/t$2;-><init>(Lcom/moat/analytics/mobile/cha/t;J)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/t;J)J
    .registers 4

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    return-wide p1
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic ॱ()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˊ()V

    return-void
.end method


# virtual methods
.method final ˊ(Lcom/moat/analytics/mobile/cha/t$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne v0, v1, :cond_a

    .line 156
    invoke-interface {p1}, Lcom/moat/analytics/mobile/cha/t$b;->ˎ()V

    .line 162
    :cond_9
    :goto_9
    return-void

    .line 158
    :cond_a
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˊ()V

    .line 159
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/moat/analytics/mobile/cha/t$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/moat/analytics/mobile/cha/t$e;-><init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/Long;Lcom/moat/analytics/mobile/cha/t$b;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1185
    new-instance v0, Lcom/moat/analytics/mobile/cha/t$4;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/cha/t$4;-><init>(Lcom/moat/analytics/mobile/cha/t;)V

    .line 1201
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method final ˎ()V
    .registers 5

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    sub-long/2addr v0, v2

    .line 103
    iget-wide v2, p0, Lcom/moat/analytics/mobile/cha/t;->ˊॱ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 104
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/cha/t;->ˏ(J)V

    .line 106
    :cond_12
    return-void
.end method

###### Class com.moat.analytics.mobile.cha.t.AnonymousClass2 (com.moat.analytics.mobile.cha.t$2)
.class final Lcom/moat/analytics/mobile/cha/t$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/t;->ˏ(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˎ:Lcom/moat/analytics/mobile/cha/t;

.field private synthetic ˏ:J


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/t;J)V
    .registers 4

    .prologue
    .line 114
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iput-wide p2, p0, Lcom/moat/analytics/mobile/cha/t$2;->ˏ:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 117
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Lcom/moat/analytics/mobile/cha/t$d;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    const-string v2, "CHA"

    new-instance v4, Lcom/moat/analytics/mobile/cha/t$2$2;

    invoke-direct {v4, p0}, Lcom/moat/analytics/mobile/cha/t$2$2;-><init>(Lcom/moat/analytics/mobile/cha/t$2;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/cha/t$d;-><init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/cha/t$2$2;B)V

    .line 147
    iget-wide v4, p0, Lcom/moat/analytics/mobile/cha/t$2;->ˏ:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 149
    return-void
.end method

###### Class com.moat.analytics.mobile.cha.t.AnonymousClass2.C01632 (com.moat.analytics.mobile.cha.t$2$2)
.class final Lcom/moat/analytics/mobile/cha/t$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/t$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/t$2;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/t$2;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ(Lcom/moat/analytics/mobile/cha/g;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_5
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˎ:Z

    .line 125
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v2, v2, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iget v2, v2, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/g;->ˋ()I

    move-result v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v2, v2, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iget v2, v2, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v3, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    if-ne v2, v3, :cond_7c

    if-eqz v0, :cond_7c

    .line 126
    :cond_25
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v2, v2, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/g;->ˋ()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    .line 127
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v2, v2, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iget v2, v2, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v3, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    if-ne v2, v3, :cond_43

    if-eqz v0, :cond_43

    .line 128
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    sget v2, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    iput v2, v0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    .line 130
    :cond_43
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iget v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v2, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne v0, v2, :cond_55

    .line 131
    const/4 v0, 0x3

    const-string v2, "OnOff"

    const-string v3, "Moat enabled - Version 2.4.1"

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :cond_55
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/t$e;

    .line 134
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/t$2$2;->ॱ:Lcom/moat/analytics/mobile/cha/t$2;

    iget-object v3, v3, Lcom/moat/analytics/mobile/cha/t$2;->ˎ:Lcom/moat/analytics/mobile/cha/t;

    iget v3, v3, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v4, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne v3, v4, :cond_5d

    .line 135
    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/t$e;->ॱ:Lcom/moat/analytics/mobile/cha/t$b;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/cha/t$b;->ˎ()V
    :try_end_78
    .catchall {:try_start_5 .. :try_end_78} :catchall_79

    goto :goto_5d

    .line 144
    :catchall_79
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 142
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_7c

    .line 144
    :cond_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_79

    return-void
.end method

###### Class com.moat.analytics.mobile.cha.t.AnonymousClass4 (com.moat.analytics.mobile.cha.t$4)
.class final Lcom/moat/analytics/mobile/cha/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/t;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/t;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$4;->ॱ:Lcom/moat/analytics/mobile/cha/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 190
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ॱ()V

    .line 191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$4;->ॱ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t;->ˋ(Lcom/moat/analytics/mobile/cha/t;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :goto_19
    return-void

    .line 193
    :cond_1a
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$4;->ॱ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t;->ˎ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 194
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$4;->ॱ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t;->ˋ(Lcom/moat/analytics/mobile/cha/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_19

    .line 197
    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_19
.end method

###### Class com.moat.analytics.mobile.cha.t.a (com.moat.analytics.mobile.cha.t$a)
.class final Lcom/moat/analytics/mobile/cha/t$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/cha/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ˎ:I

.field public static final ॱ:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 47
    sput v2, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    .line 48
    sput v3, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    .line 46
    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    return-void
.end method

###### Class com.moat.analytics.mobile.cha.t.b (com.moat.analytics.mobile.cha.t$b)
.class interface abstract Lcom/moat/analytics/mobile/cha/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract ˎ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.cha.t.c (com.moat.analytics.mobile.cha.t$c)
.class interface abstract Lcom/moat/analytics/mobile/cha/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract ˏ(Lcom/moat/analytics/mobile/cha/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.cha.t.d (com.moat.analytics.mobile.cha.t$d)
.class final Lcom/moat/analytics/mobile/cha/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private synthetic ˋ:Lcom/moat/analytics/mobile/cha/t;

.field private final ˎ:Ljava/lang/String;

.field private final ˏ:Lcom/moat/analytics/mobile/cha/t$2$2;

.field private final ॱ:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/cha/t$2$2;)V
    .registers 9

    .prologue
    .line 210
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p4, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˏ:Lcom/moat/analytics/mobile/cha/t$2$2;

    .line 212
    iput-object p3, p0, Lcom/moat/analytics/mobile/cha/t$d;->ॱ:Landroid/os/Handler;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://z.moatads.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "35d482907bc2811c2e46b96f16eb5f9fe00185f3"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˎ:Ljava/lang/String;

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/cha/t$2$2;B)V
    .registers 6

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moat/analytics/mobile/cha/t$d;-><init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/cha/t$2$2;)V

    return-void
.end method

.method private ˎ()Ljava/lang/String;
    .registers 5

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˎ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v=2.4.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/m;->ॱ(Ljava/lang/String;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    .line 277
    :try_start_27
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2e

    .line 281
    :goto_2d
    return-object v0

    .line 279
    :catch_2e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2d
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/t$d;)Lcom/moat/analytics/mobile/cha/t$2$2;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˏ:Lcom/moat/analytics/mobile/cha/t$2$2;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 219
    .line 1232
    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/t$d;->ˎ()Ljava/lang/String;

    move-result-object v0

    .line 1233
    new-instance v1, Lcom/moat/analytics/mobile/cha/g;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/g;-><init>(Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/g;->ˊ()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    .line 1235
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/g;->ॱ()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    .line 1236
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/g;->ˏ()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/cha/t;->ˊ:I

    .line 1237
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/g;->ˎ()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/cha/t;->ॱ:I

    .line 1239
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1240
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1241
    new-instance v2, Lcom/moat/analytics/mobile/cha/t$d$5;

    invoke-direct {v2, p0, v1}, Lcom/moat/analytics/mobile/cha/t$d$5;-><init>(Lcom/moat/analytics/mobile/cha/t$d;Lcom/moat/analytics/mobile/cha/g;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1252
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/moat/analytics/mobile/cha/t;->ॱ(Lcom/moat/analytics/mobile/cha/t;J)J

    .line 1253
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/t;->ˊ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 1256
    if-nez v0, :cond_78

    .line 1257
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t;->ॱ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_69

    .line 1258
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/t;->ˏ(Lcom/moat/analytics/mobile/cha/t;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/moat/analytics/mobile/cha/t;->ˋ(Lcom/moat/analytics/mobile/cha/t;J)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_83

    .line 224
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ॱ:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_77

    .line 227
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 229
    :cond_77
    return-void

    .line 1261
    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d;->ˋ:Lcom/moat/analytics/mobile/cha/t;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t;->ॱ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_83

    goto :goto_69

    .line 221
    :catch_83
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_69
.end method

###### Class com.moat.analytics.mobile.cha.t.d.AnonymousClass5 (com.moat.analytics.mobile.cha.t$d$5)
.class final Lcom/moat/analytics/mobile/cha/t$d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˊ:Lcom/moat/analytics/mobile/cha/t$d;

.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/t$d;Lcom/moat/analytics/mobile/cha/g;)V
    .registers 3

    .prologue
    .line 241
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$d$5;->ˊ:Lcom/moat/analytics/mobile/cha/t$d;

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/t$d$5;->ॱ:Lcom/moat/analytics/mobile/cha/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t$d$5;->ˊ:Lcom/moat/analytics/mobile/cha/t$d;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/t$d;->ॱ(Lcom/moat/analytics/mobile/cha/t$d;)Lcom/moat/analytics/mobile/cha/t$2$2;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/t$d$5;->ॱ:Lcom/moat/analytics/mobile/cha/g;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/cha/t$c;->ˏ(Lcom/moat/analytics/mobile/cha/g;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 249
    :goto_b
    return-void

    .line 247
    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_b
.end method

###### Class com.moat.analytics.mobile.cha.t.e (com.moat.analytics.mobile.cha.t$e)
.class final Lcom/moat/analytics/mobile/cha/t$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final ˎ:Ljava/lang/Long;

.field private synthetic ˏ:Lcom/moat/analytics/mobile/cha/t;

.field final ॱ:Lcom/moat/analytics/mobile/cha/t$b;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/Long;Lcom/moat/analytics/mobile/cha/t$b;)V
    .registers 4

    .prologue
    .line 291
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/t$e;->ˏ:Lcom/moat/analytics/mobile/cha/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/t$e;->ˎ:Ljava/lang/Long;

    .line 293
    iput-object p3, p0, Lcom/moat/analytics/mobile/cha/t$e;->ॱ:Lcom/moat/analytics/mobile/cha/t$b;

    .line 294
    return-void
.end method
