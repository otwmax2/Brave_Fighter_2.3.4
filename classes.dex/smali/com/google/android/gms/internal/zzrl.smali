###### Class com.google.android.gms.internal.zzrl (com.google.android.gms.internal.zzrl)
.class public final Lcom/google/android/gms/internal/zzrl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrl$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzrl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzrl$1;-><init>(Lcom/google/android/gms/internal/zzrl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzrl.AnonymousClass1 (com.google.android.gms.internal.zzrl$1)
.class Lcom/google/android/gms/internal/zzrl$1;
.super Lcom/google/android/gms/internal/zzrm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrl;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zi:Lcom/google/android/gms/internal/zzrl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl$1;->zi:Lcom/google/android/gms/internal/zzrl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzrm$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrl$1;->zza(Lcom/google/android/gms/internal/zzrn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzrn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrn;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrp;

    new-instance v1, Lcom/google/android/gms/internal/zzrl$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrl$zza;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzrl.zza (com.google.android.gms.internal.zzrl$zza)
.class Lcom/google/android/gms/internal/zzrl$zza;
.super Lcom/google/android/gms/internal/zzri;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzri;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl$zza;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzgj(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl$zza;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
