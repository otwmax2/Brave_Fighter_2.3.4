###### Class com.google.android.gms.internal.zzqa (com.google.android.gms.internal.zzqa)
.class public Lcom/google/android/gms/internal/zzqa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqe;


# instance fields
.field private final tm:Lcom/google/android/gms/internal/zzqf;

.field private tn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqa;)Lcom/google/android/gms/internal/zzqf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzpr$zza;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrd;->zzg(Lcom/google/android/gms/internal/zzpr$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqf;->un:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpr$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_33
    return-void

    :cond_34
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzah;

    if-eqz v1, :cond_3e

    check-cast v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzah;->zzatj()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    :cond_3e
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpr$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    goto :goto_33
.end method


# virtual methods
.method public begin()V
    .registers 1

    return-void
.end method

.method public connect()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    new-instance v1, Lcom/google/android/gms/internal/zzqa$2;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzqa$2;-><init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqe;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf$zza;)V

    :cond_11
    return-void
.end method

.method public disconnect()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    if-eqz v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqd;->zzapu()Z

    move-result v2

    if-eqz v2, :cond_30

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqd;->ud:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrc;->zzaqt()V

    goto :goto_1e

    :cond_2e
    move v0, v1

    goto :goto_7

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqf;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqf;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->ur:Lcom/google/android/gms/internal/zzqm$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzqm$zza;->zzc(IZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method zzaph()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqa;->tn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqd;->ue:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->release()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa;->disconnect()Z

    :cond_13
    return-void
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqa;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
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

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqa;->zzf(Lcom/google/android/gms/internal/zzpr$zza;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-object p1

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tm:Lcom/google/android/gms/internal/zzqf;

    new-instance v1, Lcom/google/android/gms/internal/zzqa$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzqa$1;-><init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqe;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf$zza;)V

    goto :goto_3
.end method

###### Class com.google.android.gms.internal.zzqa.AnonymousClass1 (com.google.android.gms.internal.zzqa$1)
.class Lcom/google/android/gms/internal/zzqa$1;
.super Lcom/google/android/gms/internal/zzqf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqa;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic to:Lcom/google/android/gms/internal/zzqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqe;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa$1;->to:Lcom/google/android/gms/internal/zzqa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa$1;->to:Lcom/google/android/gms/internal/zzqa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqa;->onConnectionSuspended(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzqa.AnonymousClass2 (com.google.android.gms.internal.zzqa$2)
.class Lcom/google/android/gms/internal/zzqa$2;
.super Lcom/google/android/gms/internal/zzqf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqa;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic to:Lcom/google/android/gms/internal/zzqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqe;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa$2;->to:Lcom/google/android/gms/internal/zzqa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    return-void
.end method


# virtual methods
.method public zzapi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa$2;->to:Lcom/google/android/gms/internal/zzqa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqa;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqf;->ur:Lcom/google/android/gms/internal/zzqm$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqm$zza;->zzm(Landroid/os/Bundle;)V

    return-void
.end method
