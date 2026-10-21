###### Class com.google.android.gms.contextmanager.fence.internal.zzc (com.google.android.gms.contextmanager.fence.internal.zzc)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/FenceApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/awareness/fence/FenceQueryRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;-><init>(Lcom/google/android/gms/contextmanager/fence/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public updateFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;-><init>(Lcom/google/android/gms/contextmanager/fence/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.fence.internal.zzc.AnonymousClass1 (com.google.android.gms.contextmanager.fence.internal.zzc$1)
.class Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;
.super Lcom/google/android/gms/contextmanager/internal/zzc$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/contextmanager/fence/internal/zzc;->updateFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BJ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

.field final synthetic BK:Lcom/google/android/gms/contextmanager/fence/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/contextmanager/fence/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;->BK:Lcom/google/android/gms/contextmanager/fence/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;->BJ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/contextmanager/internal/zzc$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;->zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$1;->BJ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V

    return-void
.end method

###### Class com.google.android.gms.contextmanager.fence.internal.zzc.AnonymousClass2 (com.google.android.gms.contextmanager.fence.internal.zzc$2)
.class Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;
.super Lcom/google/android/gms/contextmanager/internal/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/contextmanager/fence/internal/zzc;->queryFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BK:Lcom/google/android/gms/contextmanager/fence/internal/zzc;

.field final synthetic BL:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/contextmanager/fence/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;->BK:Lcom/google/android/gms/contextmanager/fence/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;->BL:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/contextmanager/internal/zzc$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;->zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzc$2;->BL:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V

    return-void
.end method
