###### Class com.google.android.gms.internal.zzqh (com.google.android.gms.internal.zzqh)
.class public Lcom/google/android/gms/internal/zzqh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqh$zzb;,
        Lcom/google/android/gms/internal/zzqh$zza;,
        Lcom/google/android/gms/internal/zzqh$zzd;,
        Lcom/google/android/gms/internal/zzqh$zzc;
    }
.end annotation


# static fields
.field private static uw:Lcom/google/android/gms/internal/zzqh;

.field private static final zzamp:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final rX:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private tU:J

.field private tV:J

.field private final uA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzpo",
            "<*>;",
            "Lcom/google/android/gms/internal/zzqh$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private uB:Lcom/google/android/gms/internal/zzpw;

.field private final uC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uD:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqh$zza;",
            ">;"
        }
    .end annotation
.end field

.field private uF:Lcom/google/android/gms/internal/zzqh$zzb;

.field private uv:J

.field private ux:I

.field private final uy:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final uz:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqh$zzc",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqh;->zzamp:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->tV:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->tU:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->uv:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqh;->ux:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uy:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uB:Lcom/google/android/gms/internal/zzpw;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uC:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uD:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uE:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqh;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzc;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqh;->ux:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/zzc;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/zzqh;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzqh;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzqh;->uw:Lcom/google/android/gms/internal/zzqh;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzqh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqh;->uw:Lcom/google/android/gms/internal/zzqh;

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/zzqh;->uw:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/common/api/zzc;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/zzqh;->uw:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private zza(Lcom/google/android/gms/common/api/zzc;I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzany()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;-><init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/zzc;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzqh$zzc;->zzfk(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zza(Lcom/google/android/gms/internal/zzqh$zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uE:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzqh$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->uD:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzqh$zza;-><init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/zzc;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uF:Lcom/google/android/gms/internal/zzqh$zzb;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uF:Lcom/google/android/gms/internal/zzqh$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzb;->zza(Lcom/google/android/gms/internal/zzqh$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/zzqh$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uD:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->uE:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqh$zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uF:Lcom/google/android/gms/internal/zzqh$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uF:Lcom/google/android/gms/internal/zzqh$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh$zzb;->start()V

    :cond_55
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzpn;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/zzpn;->sn:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzb(Lcom/google/android/gms/internal/zzpn;)V

    return-void
.end method

.method public static zzaqa()Lcom/google/android/gms/internal/zzqh;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/zzqh;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzqh;->uw:Lcom/google/android/gms/internal/zzqh;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private zzaqb()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqf()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zza(Lcom/google/android/gms/internal/zzqh$zzc;)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method static synthetic zzaqc()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzqh;->zzamp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->tV:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->tU:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzpw;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uC:Ljava/util/Set;

    return-object v0
.end method

.method private zze(IZ)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    if-eqz v0, :cond_15

    if-nez p2, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqh$zzc;->zzf(IZ)V

    :goto_14
    return-void

    :cond_15
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqh;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqh;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzqh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqh;->uv:J

    return-wide v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzqh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqh;->ux:I

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_b8

    const-string v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return v0

    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzpq;)V

    :cond_2b
    :goto_2b
    move v0, v1

    goto :goto_23

    :pswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/common/api/zzc;I)V

    goto :goto_2b

    :pswitch_37
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh;->zzaqb()V

    goto :goto_2b

    :pswitch_3b
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_42

    move v0, v1

    :cond_42
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzqh;->zze(IZ)V

    goto :goto_2b

    :pswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzpn;)V

    goto :goto_2b

    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uz:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x11

    const-string v4, "Error resolution was canceled by the user."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzqh$zzc;->zza(Lcom/google/android/gms/internal/zzqh$zzc;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2b

    :pswitch_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzb(Lcom/google/android/gms/internal/zzqh$zzc;)V

    goto :goto_2b

    :pswitch_87
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzc(Lcom/google/android/gms/internal/zzqh$zzc;)V

    goto :goto_2b

    :pswitch_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzd(Lcom/google/android/gms/internal/zzqh$zzc;)V

    goto/16 :goto_2b

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3b
        :pswitch_37
        :pswitch_46
        :pswitch_4e
        :pswitch_2d
        :pswitch_3b
        :pswitch_6f
        :pswitch_87
        :pswitch_9f
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzqh;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzpr$zza;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpn$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzpn$zza;-><init>(IILcom/google/android/gms/internal/zzpr$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzrb",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpn$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpn$zzb;-><init>(IILcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpq;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpq;->zzaon()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->uA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqh$zzc;

    if-nez v1, :cond_22

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpq;->cancel()V

    :cond_21
    return-void

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqh$zzc;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zza(Lcom/google/android/gms/internal/zzpo;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_2e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqg()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqg()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzpq;->zza(Lcom/google/android/gms/internal/zzpo;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_3c
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzb(Lcom/google/android/gms/internal/zzpq;)V

    goto :goto_8
.end method

.method public zza(Lcom/google/android/gms/internal/zzpw;)V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzqh;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_d

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uB:Lcom/google/android/gms/internal/zzpw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->uC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzaol()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public zzd(IZ)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_10
    const/4 v0, 0x2

    goto :goto_8
.end method

###### Class com.google.android.gms.internal.zzqh.zza (com.google.android.gms.internal.zzqh$zza)
.class final Lcom/google/android/gms/internal/zzqh$zza;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/google/android/gms/common/api/zzc",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final sn:I

.field final synthetic uG:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/zzc;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc;",
            "I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zza;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/zzqh$zza;->sn:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->sn:I

    return v0
.end method


# virtual methods
.method public zzaqd()V
    .registers 5

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zza;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzqh$zza;->sn:I

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.zzqh.zzb (com.google.android.gms.internal.zzqh$zzb)
.class final Lcom/google/android/gms/internal/zzqh$zzb;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private final uD:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqh$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final uH:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqh$zza;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GoogleApiCleanup"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uD:Ljava/lang/ref/ReferenceQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uE:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uD:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uE:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh$zza;->zza(Lcom/google/android/gms/internal/zzqh$zza;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh$zza;->zzaqd()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_36

    goto :goto_c

    :catch_29
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2f

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzb;->uH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzqh.zzc (com.google.android.gms.internal.zzqh$zzc)
.class Lcom/google/android/gms/internal/zzqh$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final rG:Lcom/google/android/gms/internal/zzpo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpo",
            "<TO;>;"
        }
    .end annotation
.end field

.field private tT:Z

.field final synthetic uG:Lcom/google/android/gms/internal/zzqh;

.field private final uI:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzpn;",
            ">;"
        }
    .end annotation
.end field

.field private final uJ:Lcom/google/android/gms/common/api/Api$zze;

.field private final uK:Lcom/google/android/gms/common/api/Api$zzb;

.field private final uL:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;"
        }
    .end annotation
.end field

.field private final uM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpq;",
            ">;"
        }
    .end annotation
.end field

.field private final uN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzpr$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private uO:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/zzc;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uM:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqh$zzc;->zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzah;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzah;->zzatj()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uK:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_3a
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->zzany()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    return-void

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uK:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_3a
.end method

.method private connect()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanr()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzk(Lcom/google/android/gms/internal/zzqh;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zzi(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzh(Lcom/google/android/gms/internal/zzqh;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzk(Lcom/google/android/gms/internal/zzqh;)I

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zzk(Lcom/google/android/gms/internal/zzqh;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzqh$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzqh$zzd;-><init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzpo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_10
.end method

.method private resume()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->connect()V

    :cond_7
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->connect()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqh$zzc;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zzab(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpn;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private zzapr()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzi(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zzh(Lcom/google/android/gms/internal/zzqh;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2d

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_2c
    return-void

    :cond_2d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_24
.end method

.method private zzaqh()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    :cond_21
    return-void
.end method

.method private zzaqi()V
    .registers 5

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzj(Lcom/google/android/gms/internal/zzqh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private zzaqj()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->zzaqw()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqi()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_31
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanq()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzano()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api$zzh;->zzant()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzg;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanx()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/Api$zzh;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzah;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zzg;)V

    :goto_37
    return-object v0

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzann()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzg;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanx()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    goto :goto_37
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqh$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->resume()V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzpn;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpn;->zza(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/zzpn;->it:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_45

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpn;->sn:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_81

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/zzpn;->sn:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_25
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpn$zza;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzqr;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqr;->zzaqq()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_36} :catch_3c

    :cond_36
    :goto_36
    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uK:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpn;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3b
    .catch Landroid/os/DeadObjectException; {:try_start_36 .. :try_end_3b} :catch_77

    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget v1, p1, Lcom/google/android/gms/internal/zzpn;->it:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    :try_start_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpn;->sn:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpn$zza;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    check-cast v2, Lcom/google/android/gms/internal/zzqr;

    if-eqz v1, :cond_6f

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqr;->zzaqq()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_65} :catch_66

    goto :goto_36

    :catch_66
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6f
    :try_start_6f
    const-string v1, "GoogleApiManager"

    const-string v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/ClassCastException; {:try_start_6f .. :try_end_76} :catch_66

    goto :goto_36

    :catch_77
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzqh$zzc;->onConnectionSuspended(I)V

    goto :goto_3b

    :cond_81
    move-object v3, v1

    goto :goto_25
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqh$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzapr()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqh$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqj()V

    return-void
.end method

.method private zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzpq;->zza(Lcom/google/android/gms/internal/zzpo;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqf()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqh()V

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zza;

    :try_start_37
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uK:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzpr$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_2b

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->onConnectionSuspended(I)V

    goto :goto_2b

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqe()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqi()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/zzqh;->zzaqc()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzd(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzpw;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zze(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzd(Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzpw;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzpw;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_1d

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzqh;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    :cond_5b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzb(Lcom/google/android/gms/internal/zzqh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    :cond_7d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpo;->zzaok()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1d
.end method

.method public onConnectionSuspended(I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->tT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzb(Lcom/google/android/gms/internal/zzqh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqh;->zzc(Lcom/google/android/gms/internal/zzqh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqh;I)I

    return-void
.end method

.method public zzaqe()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzc(Lcom/google/android/gms/internal/zzpn;)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public zzaqf()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method zzaqg()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpn;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->zzc(Lcom/google/android/gms/internal/zzpn;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqi()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqh$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_e

    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->connect()V

    goto :goto_e
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpq;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uM:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzf(IZ)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpn;

    iget v2, v0, Lcom/google/android/gms/internal/zzpn;->sn:I

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/google/android/gms/internal/zzpn;->it:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpn;->cancel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uN:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez p2, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzf(Lcom/google/android/gms/internal/zzqh;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uI:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh$zzc;->zzaqh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzg(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzqh;->zzaqc()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zze(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public zzfk(I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uL:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzrd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh$zzc;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpo;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$zzc;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzrd;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/Api$zze;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqh.zzd (com.google.android.gms.internal.zzqh$zzd)
.class Lcom/google/android/gms/internal/zzqh$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field private final rG:Lcom/google/android/gms/internal/zzpo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpo",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic uG:Lcom/google/android/gms/internal/zzqh;

.field private final uJ:Lcom/google/android/gms/common/api/Api$zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzpo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzpo",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zzd;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqh$zzd;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqh$zzd;->rG:Lcom/google/android/gms/internal/zzpo;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzd;->uJ:Lcom/google/android/gms/common/api/Api$zze;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zzd;->uG:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqh;->zzg(Lcom/google/android/gms/internal/zzqh;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh$zzd;->rG:Lcom/google/android/gms/internal/zzpo;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqh$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10
.end method
