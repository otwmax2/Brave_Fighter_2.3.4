###### Class com.google.android.gms.common.api.Batch (com.google.android.gms.common.api.Batch)
.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/internal/zzpt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Batch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpt",
        "<",
        "Lcom/google/android/gms/common/api/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final rA:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private rx:I

.field private ry:Z

.field private rz:Z

.field private final zzail:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzail:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/Batch;->rx:I

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->rx:I

    new-array v0, v0, [Lcom/google/android/gms/common/api/PendingResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Batch;->zzc(Lcom/google/android/gms/common/api/Result;)V

    :cond_28
    return-void

    :cond_29
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v2, v1

    new-instance v2, Lcom/google/android/gms/common/api/Batch$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/Batch$1;-><init>(Lcom/google/android/gms/common/api/Batch;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Batch$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->rz:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/Batch;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->rx:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/Batch;->rx:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->ry:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/Batch;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->rx:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->rz:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/Batch;)V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpt;->cancel()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->ry:Z

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpt;->cancel()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->rA:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.common.api.Batch.AnonymousClass1 (com.google.android.gms.common.api.Batch$1)
.class Lcom/google/android/gms/common/api/Batch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rB:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzv(Lcom/google/android/gms/common/api/Status;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zza(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->zza(Lcom/google/android/gms/common/api/Batch;Z)Z

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Batch;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzc(Lcom/google/android/gms/common/api/Batch;)I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzd(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zze(Lcom/google/android/gms/common/api/Batch;)V

    :cond_37
    :goto_37
    monitor-exit v1

    goto :goto_10

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Batch;Z)Z

    goto :goto_1d

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zzf(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_58
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    new-instance v3, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v4, p0, Lcom/google/android/gms/common/api/Batch$1;->rB:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->zzg(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->zzc(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_37

    :cond_69
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_39

    goto :goto_58
.end method

###### Class com.google.android.gms.common.api.Batch.Builder (com.google.android.gms.common.api.Batch$Builder)
.class public final Lcom/google/android/gms/common/api/Batch$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private rC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->rC:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->hb:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/BatchResultToken;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;)",
            "Lcom/google/android/gms/common/api/BatchResultToken",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/BatchResultToken;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->rC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BatchResultToken;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->rC:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public build()Lcom/google/android/gms/common/api/Batch;
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/api/Batch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->rC:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$Builder;->hb:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Batch$1;)V

    return-object v0
.end method
