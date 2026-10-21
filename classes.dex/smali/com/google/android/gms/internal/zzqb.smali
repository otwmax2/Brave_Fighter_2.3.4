###### Class com.google.android.gms.internal.zzqb (com.google.android.gms.internal.zzqb)
.class public Lcom/google/android/gms/internal/zzqb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqb$zzd;,
        Lcom/google/android/gms/internal/zzqb$zza;,
        Lcom/google/android/gms/internal/zzqb$zze;,
        Lcom/google/android/gms/internal/zzqb$zzc;,
        Lcom/google/android/gms/internal/zzqb$zzb;,
        Lcom/google/android/gms/internal/zzqb$zzf;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final rY:Lcom/google/android/gms/common/api/Api$zza;
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

.field private tA:Lcom/google/android/gms/common/internal/zzq;

.field private tB:Z

.field private tC:Z

.field private final tD:Lcom/google/android/gms/common/internal/zzg;

.field private final tE:Ljava/util/Map;
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

.field private tF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final th:Ljava/util/concurrent/locks/Lock;

.field private final tm:Lcom/google/android/gms/internal/zzqf;

.field private final tp:Lcom/google/android/gms/common/zzc;

.field private tq:Lcom/google/android/gms/common/ConnectionResult;

.field private tr:I

.field private ts:I

.field private tt:I

.field private final tu:Landroid/os/Bundle;

.field private final tv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private tw:Lcom/google/android/gms/internal/zzvx;

.field private tx:I

.field private ty:Z

.field private tz:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqf;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/zzc;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->ts:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tu:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tv:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tF:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqb;->tE:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqb;->tp:Lcom/google/android/gms/common/zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqb;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqb;->th:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqb;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqb;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzfg(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->zzatd()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->zzbzv()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzatd()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7

    :cond_4f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqb;->tz:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzatc()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tA:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqb;->tB:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzatf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->tC:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapk()V

    goto :goto_7

    :cond_68
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapn()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapk()V

    goto :goto_7

    :cond_75
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method private zza(IILcom/google/android/gms/common/ConnectionResult;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_b

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzqb;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzqb;->tr:I

    if-ge p1, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zzfg(I)Z

    move-result v0

    return v0
.end method

.method private zzapj()Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    if-lez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    if-gez v1, :cond_35

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqd;->zzapv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget v2, p0, Lcom/google/android/gms/internal/zzqb;->tr:I

    iput v2, v1, Lcom/google/android/gms/internal/zzqf;->uq:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tq:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_45
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private zzapk()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->tz:Z

    if-eqz v0, :cond_4

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapl()V

    goto :goto_4
.end method

.method private zzapl()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->ts:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapj()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapm()V

    goto :goto_1e

    :cond_3e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tF:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzqg;->zzapz()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzqb$zzc;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzqb$zzc;-><init>(Lcom/google/android/gms/internal/zzqb;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    return-void
.end method

.method private zzapm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->zzapx()V

    invoke-static {}, Lcom/google/android/gms/internal/zzqg;->zzapz()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqb$1;-><init>(Lcom/google/android/gms/internal/zzqb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->tB:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tA:Lcom/google/android/gms/common/internal/zzq;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqb;->tC:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzvx;->zza(Lcom/google/android/gms/common/internal/zzq;Z)V

    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzbl(Z)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_32

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tu:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqf;->ur:Lcom/google/android/gms/internal/zzqm$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqm$zza;->zzm(Landroid/os/Bundle;)V

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tu:Landroid/os/Bundle;

    goto :goto_55
.end method

.method private zzapn()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tv:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_39
    return-void
.end method

.method private zzapo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private zzapp()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzasf()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzash()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->dY:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_48
    move-object v0, v1

    goto :goto_8
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tp:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzanm()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/zzqb;->zza(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb;->tq:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->tr:I

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private zzbl(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvx;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvx;->zzbzk()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvx;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tA:Lcom/google/android/gms/common/internal/zzq;

    :cond_1b
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->th:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tp:Lcom/google/android/gms/common/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zzc;->zzfa(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqb;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzvx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tx:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tx:I

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private zzfg(I)Z
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/zzqb;->ts:I

    if-eq v0, p1, :cond_ac

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqd;->zzapv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected callback in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mRemainingConnections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzqb;->ts:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzqb;->zzfh(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb;->zzfh(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GoogleApiClient connecting is in step "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_ab
    return v0

    :cond_ac
    const/4 v0, 0x1

    goto :goto_ab
.end method

.method private zzfh(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_c

    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_5

    :pswitch_9
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqb;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapo()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzbl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->ur:Lcom/google/android/gms/internal/zzqm$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqm$zza;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tA:Lcom/google/android/gms/common/internal/zzq;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzqb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapn()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzqb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapk()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzqb;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapj()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public begin()V
    .registers 12

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/zzqb;->tq:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/zzqb;->ts:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->tx:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqb;->tz:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqb;->tB:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanm()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v2

    if-ne v2, v5, :cond_7c

    move v2, v5

    :goto_58
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v3

    if-eqz v3, :cond_72

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    iget v3, p0, Lcom/google/android/gms/internal/zzqb;->tx:I

    if-ge v8, v3, :cond_67

    iput v8, p0, Lcom/google/android/gms/internal/zzqb;->tx:I

    :cond_67
    if-eqz v8, :cond_72

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb;->tv:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_72
    new-instance v3, Lcom/google/android/gms/internal/zzqb$zza;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/zzqb$zza;-><init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/api/Api;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_27

    :cond_7c
    move v2, v4

    goto :goto_58

    :cond_7e
    if-eqz v3, :cond_82

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    :cond_82
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqb;->ty:Z

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqd;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/zzqb$zze;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/zzqb$zze;-><init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->rY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqd;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqb;->tD:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzg;->zzasl()Lcom/google/android/gms/internal/zzvy;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzvx;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tw:Lcom/google/android/gms/internal/zzvx;

    :cond_b9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->tY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzqb;->tt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tF:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzqg;->zzapz()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqb$zzb;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/zzqb$zzb;-><init>(Lcom/google/android/gms/internal/zzqb;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .registers 1

    return-void
.end method

.method public disconnect()Z
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapo()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzqb;->zzbl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqf;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzfg(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tu:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapj()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapm()V

    goto :goto_7
.end method

.method public onConnectionSuspended(I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqb;->zzfg(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqb;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapj()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqb;->zzapm()V

    goto :goto_7
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqd;->tS:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 4
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzqb.AnonymousClass1 (com.google.android.gms.internal.zzqb$1)
.class Lcom/google/android/gms/internal/zzqb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqb;->zzapm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$1;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$1;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzb(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$1;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->zzbp(Landroid/content/Context;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zza (com.google.android.gms.internal.zzqb$zza)
.class Lcom/google/android/gms/internal/zzqb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final pD:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final sV:I

.field private final tH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqb;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb$zza;->tH:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqb$zza;->pD:Lcom/google/android/gms/common/api/Api;

    iput p3, p0, Lcom/google/android/gms/internal/zzqb$zza;->sV:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqb$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqb$zza;->sV:I

    return v0
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zza;->tH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqb;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzqd;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_2a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;I)Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_56

    move-result v1

    if-nez v1, :cond_38

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :cond_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zza;->pD:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzqb$zza;->sV:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    :cond_45
    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzk(Lcom/google/android/gms/internal/zzqb;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzj(Lcom/google/android/gms/internal/zzqb;)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_56

    :cond_4e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_56
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzqb.zzb (com.google.android.gms.internal.zzqb$zzb)
.class Lcom/google/android/gms/internal/zzqb$zzb;
.super Lcom/google/android/gms/internal/zzqb$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;

.field private final tI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzqb$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqb;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzqb$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqb$zzf;-><init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tI:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanr()Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tI:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqb$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb$zza;->zza(Lcom/google/android/gms/internal/zzqb$zza;)I

    move-result v0

    if-nez v0, :cond_af

    move v0, v2

    :goto_2f
    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqb;->zzb(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    :cond_41
    if-eqz v4, :cond_63

    if-nez v0, :cond_47

    if-eqz v1, :cond_63

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqb$zzb$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/zzqb$zzb$1;-><init>(Lcom/google/android/gms/internal/zzqb$zzb;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf$zza;)V

    :cond_5d
    return-void

    :cond_5e
    move v0, v4

    move v1, v3

    :goto_60
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zze(Lcom/google/android/gms/internal/zzqb;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzf(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzvx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvx;->connect()V

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tI:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzd$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanr()Z

    move-result v3

    if-eqz v3, :cond_ab

    if-eqz v4, :cond_ab

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzqb$zzb$2;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {v3, p0, v5, v1}, Lcom/google/android/gms/internal/zzqb$zzb$2;-><init>(Lcom/google/android/gms/internal/zzqb$zzb;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/internal/zzd$zzf;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf$zza;)V

    goto :goto_7e

    :cond_ab
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_7e

    :cond_af
    move v0, v1

    move v1, v2

    goto :goto_60

    :cond_b2
    move v2, v3

    move v0, v4

    goto/16 :goto_2f
.end method

###### Class com.google.android.gms.internal.zzqb.zzb.AnonymousClass1 (com.google.android.gms.internal.zzqb$zzb$1)
.class Lcom/google/android/gms/internal/zzqb$zzb$1;
.super Lcom/google/android/gms/internal/zzqf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqb$zzb;->zzapi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tJ:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic tK:Lcom/google/android/gms/internal/zzqb$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqb$zzb;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzb$1;->tK:Lcom/google/android/gms/internal/zzqb$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqb$zzb$1;->tJ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb$1;->tK:Lcom/google/android/gms/internal/zzqb$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqb$zzb;->tG:Lcom/google/android/gms/internal/zzqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzb$1;->tJ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zzb.AnonymousClass2 (com.google.android.gms.internal.zzqb$zzb$2)
.class Lcom/google/android/gms/internal/zzqb$zzb$2;
.super Lcom/google/android/gms/internal/zzqf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqb$zzb;->zzapi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tK:Lcom/google/android/gms/internal/zzqb$zzb;

.field final synthetic tL:Lcom/google/android/gms/common/internal/zzd$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqb$zzb;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/common/internal/zzd$zzf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzb$2;->tK:Lcom/google/android/gms/internal/zzqb$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqb$zzb$2;->tL:Lcom/google/android/gms/common/internal/zzd$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzb$2;->tL:Lcom/google/android/gms/common/internal/zzd$zzf;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzd$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zzc (com.google.android.gms.internal.zzqb$zzc)
.class Lcom/google/android/gms/internal/zzqb$zzc;
.super Lcom/google/android/gms/internal/zzqb$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;

.field private final tM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqb;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqb$zzf;-><init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tM:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzg(Lcom/google/android/gms/internal/zzqb;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqb;->zzh(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqb$zzc;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqd;->tZ:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_16

    :cond_36
    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zzd (com.google.android.gms.internal.zzqb$zzd)
.class Lcom/google/android/gms/internal/zzqb$zzd;
.super Lcom/google/android/gms/signin/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final tH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqb;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzb;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzd;->tH:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzd;->tH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqb;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqb$zzd$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzqb$zzd$1;-><init>(Lcom/google/android/gms/internal/zzqb$zzd;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf$zza;)V

    goto :goto_a
.end method

###### Class com.google.android.gms.internal.zzqb.zzd.AnonymousClass1 (com.google.android.gms.internal.zzqb$zzd$1)
.class Lcom/google/android/gms/internal/zzqb$zzd$1;
.super Lcom/google/android/gms/internal/zzqf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqb$zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tN:Lcom/google/android/gms/internal/zzqb;

.field final synthetic tO:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic tP:Lcom/google/android/gms/internal/zzqb$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqb$zzd;Lcom/google/android/gms/internal/zzqe;Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzd$1;->tP:Lcom/google/android/gms/internal/zzqb$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqb$zzd$1;->tN:Lcom/google/android/gms/internal/zzqb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqb$zzd$1;->tO:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzd$1;->tN:Lcom/google/android/gms/internal/zzqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzd$1;->tO:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zze (com.google.android.gms.internal.zzqb$zze)
.class Lcom/google/android/gms/internal/zzqb$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb$zze;-><init>(Lcom/google/android/gms/internal/zzqb;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzf(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzvx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzqb$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzqb$zzd;-><init>(Lcom/google/android/gms/internal/zzqb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzvx;->zza(Lcom/google/android/gms/signin/internal/zzd;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqb;->zzb(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzi(Lcom/google/android/gms/internal/zzqb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzj(Lcom/google/android/gms/internal/zzqb;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2b

    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqb;->zza(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zze;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.internal.zzqb.zzf (com.google.android.gms.internal.zzqb$zzf)
.class abstract Lcom/google/android/gms/internal/zzqb$zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzf"
.end annotation


# instance fields
.field final synthetic tG:Lcom/google/android/gms/internal/zzqb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqb$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqb$zzf;-><init>(Lcom/google/android/gms/internal/zzqb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_26
    .catchall {:try_start_9 .. :try_end_c} :catchall_3a

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_18
    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqb$zzf;->zzapi()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_26
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzd(Lcom/google/android/gms/internal/zzqb;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zza(Ljava/lang/RuntimeException;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqb$zzf;->tG:Lcom/google/android/gms/internal/zzqb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqb;->zzc(Lcom/google/android/gms/internal/zzqb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zzapi()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
