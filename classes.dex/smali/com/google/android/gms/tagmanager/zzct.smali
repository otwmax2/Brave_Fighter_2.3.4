###### Class com.google.android.gms.tagmanager.zzct (com.google.android.gms.tagmanager.zzct)
.class Lcom/google/android/gms/tagmanager/zzct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zze;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzct$zza;,
        Lcom/google/android/gms/tagmanager/zzct$zzb;
    }
.end annotation


# instance fields
.field private final auZ:Ljava/lang/String;

.field private avw:Ljava/lang/String;

.field private axA:Lcom/google/android/gms/tagmanager/zzs;

.field private final axC:Lcom/google/android/gms/tagmanager/zzct$zza;

.field private axD:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private axz:Lcom/google/android/gms/tagmanager/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbm",
            "<",
            "Lcom/google/android/gms/internal/zzah$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final qv:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzct$zzb;Lcom/google/android/gms/tagmanager/zzct$zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzct$zzb;Lcom/google/android/gms/tagmanager/zzct$zza;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzct;->axA:Lcom/google/android/gms/tagmanager/zzs;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzct;->auZ:Ljava/lang/String;

    if-nez p4, :cond_10

    new-instance p4, Lcom/google/android/gms/tagmanager/zzct$1;

    invoke-direct {p4, p0}, Lcom/google/android/gms/tagmanager/zzct$1;-><init>(Lcom/google/android/gms/tagmanager/zzct;)V

    :cond_10
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzct$zzb;->zzccl()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p5, :cond_20

    new-instance v0, Lcom/google/android/gms/tagmanager/zzct$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzct$2;-><init>(Lcom/google/android/gms/tagmanager/zzct;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axC:Lcom/google/android/gms/tagmanager/zzct$zza;

    :goto_1f
    return-void

    :cond_20
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzct;->axC:Lcom/google/android/gms/tagmanager/zzct$zza;

    goto :goto_1f
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzct;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzct;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->auZ:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized zzcck()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzct;->mClosed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    monitor-exit p0

    return-void
.end method

.method private zzol(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcs;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axC:Lcom/google/android/gms/tagmanager/zzct$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->axA:Lcom/google/android/gms/tagmanager/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzct$zza;->zza(Lcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzcs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcs;->zza(Lcom/google/android/gms/tagmanager/zzbm;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->avw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcs;->zznv(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzcs;->zzok(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzcck()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axD:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axD:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzct;->mClosed:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/tagmanager/zzbm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbm",
            "<",
            "Lcom/google/android/gms/internal/zzah$zzj;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzcck()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->axz:Lcom/google/android/gms/tagmanager/zzbm;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzf(JLjava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->auZ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x37

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "loadAfterDelay: containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzcck()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before loadAfterDelay() is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axD:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axD:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->qv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/zzct;->zzol(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcs;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->axD:Ljava/util/concurrent/ScheduledFuture;
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_3c

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized zznv(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzcck()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->avw:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.tagmanager.zzct.AnonymousClass1 (com.google.android.gms.tagmanager.zzct$1)
.class Lcom/google/android/gms/tagmanager/zzct$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzct$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzct$zzb;Lcom/google/android/gms/tagmanager/zzct$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axE:Lcom/google/android/gms/tagmanager/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzct;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct$1;->axE:Lcom/google/android/gms/tagmanager/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzccl()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.tagmanager.zzct.AnonymousClass2 (com.google.android.gms.tagmanager.zzct$2)
.class Lcom/google/android/gms/tagmanager/zzct$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzct$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzct$zzb;Lcom/google/android/gms/tagmanager/zzct$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axE:Lcom/google/android/gms/tagmanager/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzct;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct$2;->axE:Lcom/google/android/gms/tagmanager/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzcs;
    .registers 5

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct$2;->axE:Lcom/google/android/gms/tagmanager/zzct;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzct;->zza(Lcom/google/android/gms/tagmanager/zzct;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzct$2;->axE:Lcom/google/android/gms/tagmanager/zzct;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzct;->zzb(Lcom/google/android/gms/tagmanager/zzct;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V

    return-object v0
.end method

###### Class com.google.android.gms.tagmanager.zzct.zza (com.google.android.gms.tagmanager.zzct$zza)
.class interface abstract Lcom/google/android/gms/tagmanager/zzct$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "zza"
.end annotation


# virtual methods
.method public abstract zza(Lcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzcs;
.end method

###### Class com.google.android.gms.tagmanager.zzct.zzb (com.google.android.gms.tagmanager.zzct$zzb)
.class interface abstract Lcom/google/android/gms/tagmanager/zzct$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "zzb"
.end annotation


# virtual methods
.method public abstract zzccl()Ljava/util/concurrent/ScheduledExecutorService;
.end method
