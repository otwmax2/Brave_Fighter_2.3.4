###### Class com.google.android.gms.internal.zzqf (com.google.android.gms.internal.zzqf)
.class public Lcom/google/android/gms/internal/zzqf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqf$zza;,
        Lcom/google/android/gms/internal/zzqf$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final rY:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;"
        }
    .end annotation
.end field

.field final sX:Lcom/google/android/gms/internal/zzqd;

.field final tD:Lcom/google/android/gms/common/internal/zzg;

.field final tE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final tY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field private final th:Ljava/util/concurrent/locks/Lock;

.field private final tp:Lcom/google/android/gms/common/zzc;

.field private final ul:Ljava/util/concurrent/locks/Condition;

.field private final um:Lcom/google/android/gms/internal/zzqf$zzb;

.field final un:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uo:Lcom/google/android/gms/internal/zzqe;

.field private up:Lcom/google/android/gms/common/ConnectionResult;

.field uq:I

.field final ur:Lcom/google/android/gms/internal/zzqm$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqm$zza;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqd;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;",
            "Lcom/google/android/gms/internal/zzqm$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqf;->tp:Lcom/google/android/gms/common/zzc;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqf;->tD:Lcom/google/android/gms/common/internal/zzg;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzqf;->tE:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzqf;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzqf;->ur:Lcom/google/android/gms/internal/zzqm$zza;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpu;->zza(Lcom/google/android/gms/internal/zzqf;)V

    goto :goto_23

    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/zzqf$zzb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzqf$zzb;-><init>(Lcom/google/android/gms/internal/zzqf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->um:Lcom/google/android/gms/internal/zzqf$zzb;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqc;-><init>(Lcom/google/android/gms/internal/zzqf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqf;)Lcom/google/android/gms/internal/zzqe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    return-object v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->connect()V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_37

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_8

    :catch_27
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->connect()V

    return-void
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->tE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zze;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_23

    :cond_50
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1c

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzqa;

    return v0
.end method

.method public isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzqb;

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqe;->onConnected(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqe;->onConnectionSuspended(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqe;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzqf$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->um:Lcom/google/android/gms/internal/zzqf$zzb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqf$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->um:Lcom/google/android/gms/internal/zzqf$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqf$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->um:Lcom/google/android/gms/internal/zzqf$zzb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqf$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->um:Lcom/google/android/gms/internal/zzqf$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqf$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqy;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzaoc()V
    .registers 1

    return-void
.end method

.method public zzaoy()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    check-cast v0, Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->zzaph()V

    :cond_d
    return-void
.end method

.method zzapw()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/zzqb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf;->tD:Lcom/google/android/gms/common/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqf;->tE:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqf;->tp:Lcom/google/android/gms/common/zzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqf;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqf;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqb;-><init>(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_29

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzapx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->zzapt()Z

    new-instance v0, Lcom/google/android/gms/internal/zzqa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqa;-><init>(Lcom/google/android/gms/internal/zzqf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzapy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzpr$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzaot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqe;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzpr$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzaot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqe;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method zzi(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf;->up:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqc;-><init>(Lcom/google/android/gms/internal/zzqf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->uo:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->ul:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzqf.zza (com.google.android.gms.internal.zzqf$zza)
.class abstract Lcom/google/android/gms/internal/zzqf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private final us:Lcom/google/android/gms/internal/zzqe;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzqe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf$zza;->us:Lcom/google/android/gms/internal/zzqe;

    return-void
.end method


# virtual methods
.method protected abstract zzapi()V
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzqf;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Lcom/google/android/gms/internal/zzqf;)Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf$zza;->us:Lcom/google/android/gms/internal/zzqe;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_22

    if-eq v0, v1, :cond_17

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_16
    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqf$zza;->zzapi()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_16

    :catchall_22
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzqf.zzb (com.google.android.gms.internal.zzqf$zzb)
.class final Lcom/google/android/gms/internal/zzqf$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field final synthetic ut:Lcom/google/android/gms/internal/zzqf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqf;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf$zzb;->ut:Lcom/google/android/gms/internal/zzqf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    const-string v0, "GACStateManager"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqf$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf$zzb;->ut:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqf$zza;->zzd(Lcom/google/android/gms/internal/zzqf;)V

    goto :goto_21

    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method
