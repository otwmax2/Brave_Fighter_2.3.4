###### Class com.google.android.gms.internal.zzqd (com.google.android.gms.internal.zzqd)
.class public final Lcom/google/android/gms/internal/zzqd;
.super Lcom/google/android/gms/common/api/GoogleApiClient;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqd$zza;,
        Lcom/google/android/gms/internal/zzqd$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final rV:I

.field private final rX:Lcom/google/android/gms/common/GoogleApiAvailability;

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

.field private final tQ:Lcom/google/android/gms/common/internal/zzl;

.field private tR:Lcom/google/android/gms/internal/zzqm;

.field final tS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private volatile tT:Z

.field private tU:J

.field private tV:J

.field private final tW:Lcom/google/android/gms/internal/zzqd$zza;

.field tX:Lcom/google/android/gms/internal/zzqj;

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

.field tZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final th:Ljava/util/concurrent/locks/Lock;

.field private final ua:Lcom/google/android/gms/internal/zzqt;

.field private final ub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;"
        }
    .end annotation
.end field

.field private uc:Ljava/lang/Integer;

.field ud:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrc;",
            ">;"
        }
    .end annotation
.end field

.field final ue:Lcom/google/android/gms/internal/zzrd;

.field private final uf:Lcom/google/android/gms/common/internal/zzl$zza;

.field private final zzahv:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzqd;->tU:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzqd;->tV:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzqt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqt;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->ua:Lcom/google/android/gms/internal/zzqt;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzqd$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqd$1;-><init>(Lcom/google/android/gms/internal/zzqd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->uf:Lcom/google/android/gms/common/internal/zzl$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/zzl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqd;->uf:Lcom/google/android/gms/common/internal/zzl$zza;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqd;->zzahv:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/zzqd$zza;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/zzqd$zza;-><init>(Lcom/google/android/gms/internal/zzqd;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqd;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    iget v2, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    if-ltz v2, :cond_57

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    :cond_57
    iput-object p7, p0, Lcom/google/android/gms/internal/zzqd;->tE:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ub:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/zzrd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzrd;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_6c

    :cond_7e
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_82

    :cond_94
    iput-object p4, p0, Lcom/google/android/gms/internal/zzqd;->tD:Lcom/google/android/gms/common/internal/zzg;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqd;->rY:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method private resume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzapq()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static zza(Ljava/lang/Iterable;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v2, v3

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    :goto_22
    move v1, v0

    goto :goto_8

    :cond_24
    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    const/4 v3, 0x2

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x3

    goto :goto_2b

    :cond_2e
    move v0, v1

    goto :goto_22
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/zzrj;->zh:Lcom/google/android/gms/internal/zzrk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzrk;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqd$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzqd$4;-><init>(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqz;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->resume()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V

    return-void
.end method

.method private zzapq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzast()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->connect()V

    return-void
.end method

.method private zzapr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzapt()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzapq()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzapr()V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzqn;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzqn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    if-ltz v0, :cond_e

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpp;->zza(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzff(I)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqd;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzfi(I)V
    .registers 14

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-nez v1, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v1, :cond_65

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqd;->zzfj(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqd;->zzfj(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v5

    if-eqz v5, :cond_84

    move v2, v3

    :cond_84
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v0

    if-eqz v0, :cond_e4

    move v0, v3

    :goto_8b
    move v1, v0

    goto :goto_71

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_e6

    :cond_96
    :pswitch_96
    new-instance v0, Lcom/google/android/gms/internal/zzqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqd;->zzahv:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqd;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqd;->tD:Lcom/google/android/gms/common/internal/zzg;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzqd;->tE:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzqd;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzqd;->ub:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqm$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    goto/16 :goto_10

    :pswitch_b3
    if-nez v2, :cond_bd

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    if-eqz v1, :cond_96

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c7
    if-eqz v2, :cond_96

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqd;->zzahv:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqd;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqd;->tD:Lcom/google/android/gms/common/internal/zzg;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzqd;->tE:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzqd;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzqd;->ub:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzpv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzpv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    goto/16 :goto_10

    :cond_e4
    move v0, v1

    goto :goto_8b

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_c7
        :pswitch_96
    .end packed-switch
.end method

.method static zzfj(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "SIGN_IN_MODE_NONE"

    goto :goto_5

    :pswitch_9
    const-string v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_5

    :pswitch_c
    const-string v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_3e

    move v0, v1

    :goto_d
    const-string v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_17
    iget v0, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    if-ltz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-eqz v0, :cond_40

    :goto_1f
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqd;->zzfi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzast()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_58

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_3e
    move v0, v2

    goto :goto_d

    :cond_40
    move v1, v2

    goto :goto_1f

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_58

    goto :goto_24

    :catchall_58
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_58
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqd;->zzfi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzast()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqm;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_5b

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isConnected()Z

    move-result v0

    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v0, 0x1

    :goto_14
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/internal/zzrj;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V

    :goto_2b
    return-object v0

    :cond_2c
    move v0, v1

    goto :goto_14

    :cond_2e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzqd$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/zzqd$2;-><init>(Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzqz;)V

    new-instance v3, Lcom/google/android/gms/internal/zzqd$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzqd$3;-><init>(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqz;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzrj;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_2b
.end method

.method public connect()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/zzqd;->rV:I

    if-ltz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    const-string v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqd;->connect(I)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_39

    goto :goto_14

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->uc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_39
.end method

.method public connect(I)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    :cond_e
    :goto_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqd;->zzfi(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzapq()V
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_e

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->disconnect()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ua:Lcom/google/android/gms/internal/zzqt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqt;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zza;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpr$zza;->zza(Lcom/google/android/gms/internal/zzrd$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpr$zza;->cancel()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_1e

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_32

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzapt()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzass()V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_47
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqd;->tT:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzrd;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqm;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqm;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_41
    return-object v0

    :cond_42
    :try_start_42
    const-string v0, "GoogleApiClientImpl"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzapv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientImpl"

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_6b
    .catchall {:try_start_42 .. :try_end_6b} :catchall_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_41

    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_41

    :cond_77
    :try_start_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was never registered with GoogleApiClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_19
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzahv:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method isResuming()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->tT:Z

    return v0
.end method

.method public reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzqn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzqn;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqd;->zzb(Lcom/google/android/gms/internal/zzqn;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrc;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqy;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqm;->zza(Lcom/google/android/gms/internal/zzqy;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public zzaoc()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->zzaoc()V

    :cond_9
    return-void
.end method

.method zzaps()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzqd;->tT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tX:Lcom/google/android/gms/internal/zzqj;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqd$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqd$zzb;-><init>(Lcom/google/android/gms/internal/zzqd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqj$zza;)Lcom/google/android/gms/internal/zzqj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tX:Lcom/google/android/gms/internal/zzqj;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzqd$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqd;->tU:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqd$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqd$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqd;->tV:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqd$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method zzapt()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->tT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqd$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tW:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqd$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tX:Lcom/google/android/gms/internal/zzqj;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tX:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tX:Lcom/google/android/gms/internal/zzqj;

    :cond_22
    move v0, v1

    goto :goto_8
.end method

.method zzapu()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1f

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzapv()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzqd;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzrc;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    if-nez v0, :cond_1b

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_30

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_30

    goto :goto_15

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_37
    :try_start_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzapu()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->zzaoy()V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_30

    goto :goto_15
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 6
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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    :goto_7
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_6f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_5d
    return-object p1

    :cond_5e
    const/4 v0, 0x0

    goto :goto_7

    :cond_60
    const-string v0, "the API"

    goto :goto_24

    :cond_63
    :try_start_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqm;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_6f

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5d

    :catchall_6f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzc(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzaps()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->zzaqv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzgb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzass()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzapq()V

    :cond_1d
    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 6
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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    :goto_7
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tY:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanw()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    if-nez v0, :cond_67

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_62
    const/4 v0, 0x0

    goto :goto_7

    :cond_64
    const-string v0, "the API"

    goto :goto_24

    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_72
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrd;->zzg(Lcom/google/android/gms/internal/zzpr$zza;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->si:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpr$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_5b

    goto :goto_72

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_92
    return-object p1

    :cond_93
    :try_start_93
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tR:Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqm;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_5b

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_92
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzc(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->zzapt()Z

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqd;->isResuming()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzm(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzass()V

    :cond_21
    return-void
.end method

.method public zzm(Landroid/os/Bundle;)V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqd;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->tQ:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzo(Landroid/os/Bundle;)V

    return-void
.end method

.method public zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzqs;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/internal/zzqs",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->ua:Lcom/google/android/gms/internal/zzqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzahv:Landroid/os/Looper;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzqt;->zzb(Ljava/lang/Object;Landroid/os/Looper;)Lcom/google/android/gms/internal/zzqs;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzqd.AnonymousClass1 (com.google.android.gms.internal.zzqd$1)
.class Lcom/google/android/gms/internal/zzqd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$1;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$1;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->isConnected()Z

    move-result v0

    return v0
.end method

.method public zzamc()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzqd.AnonymousClass2 (com.google.android.gms.internal.zzqd$2)
.class Lcom/google/android/gms/internal/zzqd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqd;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;

.field final synthetic uh:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic ui:Lcom/google/android/gms/internal/zzqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzqz;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$2;->ug:Lcom/google/android/gms/internal/zzqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd$2;->uh:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqd$2;->ui:Lcom/google/android/gms/internal/zzqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd$2;->ug:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$2;->uh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd$2;->ui:Lcom/google/android/gms/internal/zzqz;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.internal.zzqd.AnonymousClass3 (com.google.android.gms.internal.zzqd$3)
.class Lcom/google/android/gms/internal/zzqd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqd;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;

.field final synthetic ui:Lcom/google/android/gms/internal/zzqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$3;->ug:Lcom/google/android/gms/internal/zzqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd$3;->ui:Lcom/google/android/gms/internal/zzqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$3;->ui:Lcom/google/android/gms/internal/zzqz;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqd.AnonymousClass4 (com.google.android.gms.internal.zzqd$4)
.class Lcom/google/android/gms/internal/zzqd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqz;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic iD:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;

.field final synthetic ui:Lcom/google/android/gms/internal/zzqz;

.field final synthetic uj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqz;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$4;->ug:Lcom/google/android/gms/internal/zzqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd$4;->ui:Lcom/google/android/gms/internal/zzqz;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzqd$4;->uj:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqd$4;->iD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqd$4;->zzp(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$4;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqd;->zzc(Lcom/google/android/gms/internal/zzqd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagl()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$4;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$4;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqd;->reconnect()V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$4;->ui:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqz;->zzc(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd$4;->uj:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$4;->iD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2e
    return-void
.end method

###### Class com.google.android.gms.internal.zzqd.zza (com.google.android.gms.internal.zzqd$zza)
.class final Lcom/google/android/gms/internal/zzqd$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic ug:Lcom/google/android/gms/internal/zzqd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd$zza;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    const-string v0, "GoogleApiClientImpl"

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$zza;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqd;->zzb(Lcom/google/android/gms/internal/zzqd;)V

    goto :goto_21

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$zza;->ug:Lcom/google/android/gms/internal/zzqd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/internal/zzqd;)V

    goto :goto_21

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.zzqd.zzb (com.google.android.gms.internal.zzqd$zzb)
.class Lcom/google/android/gms/internal/zzqd$zzb;
.super Lcom/google/android/gms/internal/zzqj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private uk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj$zza;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqd$zzb;->uk:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzaor()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd$zzb;->uk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqd;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/internal/zzqd;)V

    goto :goto_a
.end method
