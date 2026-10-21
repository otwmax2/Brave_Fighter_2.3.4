###### Class com.google.android.gms.internal.zzpg (com.google.android.gms.internal.zzpg)
.class public Lcom/google/android/gms/internal/zzpg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpg$zze;,
        Lcom/google/android/gms/internal/zzpg$zzd;,
        Lcom/google/android/gms/internal/zzpg$zzb;,
        Lcom/google/android/gms/internal/zzpg$zza;,
        Lcom/google/android/gms/internal/zzpg$zzc;
    }
.end annotation


# static fields
.field private static final qu:Ljava/lang/Object;

.field private static qv:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final qw:Lcom/google/android/gms/internal/zzpg$zze;

.field private static final qx:J


# instance fields
.field private hb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private qA:J

.field private final qB:J

.field private qC:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final qD:Ljava/lang/Runnable;

.field private final qy:Lcom/google/android/gms/internal/zzpg$zza;

.field private final qz:Ljava/lang/Object;

.field private final zzaoa:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qu:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpg$zze;-><init>(Lcom/google/android/gms/internal/zzpg$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qw:Lcom/google/android/gms/internal/zzpg$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzpg;->qx:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/util/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzh;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zzpg;->qx:J

    new-instance v1, Lcom/google/android/gms/internal/zzpg$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzpg$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzpg;-><init>(Lcom/google/android/gms/common/util/zze;JLcom/google/android/gms/internal/zzpg$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/zze;JLcom/google/android/gms/internal/zzpg$zza;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qz:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpg;->qA:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpg;->qC:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpg;->hb:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzpg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpg$1;-><init>(Lcom/google/android/gms/internal/zzpg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qD:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg;->zzaoa:Lcom/google/android/gms/common/util/zze;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpg;->qB:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpg;->qy:Lcom/google/android/gms/internal/zzpg$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpg;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg;->hb:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpg$zzc;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zzpg$zzc",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpg;->zzamx()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzpg$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzpg$3;-><init>(Lcom/google/android/gms/internal/zzpg;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpg$zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpg;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qz:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qs:Lcom/google/android/gms/clearcut/zzb$zzc;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qr:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biM:[B

    array-length v0, v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qr:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qs:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzc;->zzamw()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biM:[B

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qt:Lcom/google/android/gms/clearcut/zzb$zzc;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qr:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biT:[B

    array-length v0, v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qr:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qt:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzc;->zzamw()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biT:[B

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qr:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapc;->zzf(Lcom/google/android/gms/internal/zzapc;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ql:[B

    return-void
.end method

.method private zzamx()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzpg;->qu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/zzpg$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpg$2;-><init>(Lcom/google/android/gms/internal/zzpg;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic zzamy()Lcom/google/android/gms/internal/zzpg$zze;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qw:Lcom/google/android/gms/internal/zzpg$zze;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpg;)J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzpg$zzd;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzpg;->qw:Lcom/google/android/gms/internal/zzpg$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpg$zze;->zzamz()V

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zzd;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zzpg$zzd;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zzpg$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzpg$4;-><init>(Lcom/google/android/gms/internal/zzpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpg$zzd;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzpg;)Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaoa:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzpg;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->hb:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpg;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzpg$zzd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpg$zzc;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzpg.AnonymousClass1 (com.google.android.gms.internal.zzpg$1)
.class Lcom/google/android/gms/internal/zzpg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qE:Lcom/google/android/gms/internal/zzpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/internal/zzpg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zzb(Lcom/google/android/gms/internal/zzpg;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zzc(Lcom/google/android/gms/internal/zzpg;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zzd(Lcom/google/android/gms/internal/zzpg;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v2, "disconnect managed GoogleApiClient"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zzd(Lcom/google/android/gms/internal/zzpg;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$1;->qE:Lcom/google/android/gms/internal/zzpg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/internal/zzpg;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_39
    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0
.end method

###### Class com.google.android.gms.internal.zzpg.AnonymousClass2 (com.google.android.gms.internal.zzpg$2)
.class Lcom/google/android/gms/internal/zzpg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpg;->zzamx()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qE:Lcom/google/android/gms/internal/zzpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$2;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/zzpg$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzpg$2$1;-><init>(Lcom/google/android/gms/internal/zzpg$2;Ljava/lang/Runnable;)V

    const-string v2, "ClearcutLoggerApiImpl"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzpg.AnonymousClass2.AnonymousClass1 (com.google.android.gms.internal.zzpg$2$1)
.class Lcom/google/android/gms/internal/zzpg$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpg$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qF:Ljava/lang/Runnable;

.field final synthetic qG:Lcom/google/android/gms/internal/zzpg$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg$2;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$2$1;->qG:Lcom/google/android/gms/internal/zzpg$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpg$2$1;->qF:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$2$1;->qF:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.AnonymousClass3 (com.google.android.gms.internal.zzpg$3)
.class Lcom/google/android/gms/internal/zzpg$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpg$zzc;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iD:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic qE:Lcom/google/android/gms/internal/zzpg;

.field final synthetic qH:Lcom/google/android/gms/internal/zzpg$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpg$zzc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$3;->qE:Lcom/google/android/gms/internal/zzpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpg$3;->iD:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpg$3;->qH:Lcom/google/android/gms/internal/zzpg$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$3;->iD:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg$3;->qH:Lcom/google/android/gms/internal/zzpg$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.AnonymousClass4 (com.google.android.gms.internal.zzpg$4)
.class Lcom/google/android/gms/internal/zzpg$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpg;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzpg$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qE:Lcom/google/android/gms/internal/zzpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$4;->qE:Lcom/google/android/gms/internal/zzpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzv(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzpg;->zzamy()Lcom/google/android/gms/internal/zzpg$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpg$zze;->zzana()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.zza (com.google.android.gms.internal.zzpg$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzpg$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

###### Class com.google.android.gms.internal.zzpg.zzb (com.google.android.gms.internal.zzpg$zzb)
.class public Lcom/google/android/gms/internal/zzpg$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.zzc (com.google.android.gms.internal.zzpg$zzc)
.class abstract Lcom/google/android/gms/internal/zzpg$zzc;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.zzd (com.google.android.gms.internal.zzpg$zzd)
.class final Lcom/google/android/gms/internal/zzpg$zzd;
.super Lcom/google/android/gms/internal/zzpg$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpg$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final qI:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpg$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzpg$zzd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzpg$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MethodImpl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzph;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpg$zzd;->zza(Lcom/google/android/gms/internal/zzph;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzph;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zzd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpg$zzd$1;-><init>(Lcom/google/android/gms/internal/zzpg$zzd;)V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpg;->zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg$zzd;->qI:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzph;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "MessageProducer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpg$zzd;->zzz(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_f
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpg$zzd;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzpg.zzd.AnonymousClass1 (com.google.android.gms.internal.zzpg$zzd$1)
.class Lcom/google/android/gms/internal/zzpg$zzd$1;
.super Lcom/google/android/gms/internal/zzpj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpg$zzd;->zza(Lcom/google/android/gms/internal/zzph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qJ:Lcom/google/android/gms/internal/zzpg$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpg$zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg$zzd$1;->qJ:Lcom/google/android/gms/internal/zzpg$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzw(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg$zzd$1;->qJ:Lcom/google/android/gms/internal/zzpg$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpg$zzd;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpg.zze (com.google.android.gms.internal.zzpg$zze)
.class final Lcom/google/android/gms/internal/zzpg$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zze"
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpg$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpg$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized zzamz()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzana()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too many decrements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    iget v0, p0, Lcom/google/android/gms/internal/zzpg$zze;->mSize:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    :cond_1d
    monitor-exit p0

    return-void
.end method
