###### Class com.google.android.gms.contextmanager.internal.zzd (com.google.android.gms.contextmanager.internal.zzd)
.class public Lcom/google/android/gms/contextmanager/internal/zzd;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/contextmanager/internal/zzi;",
        ">;"
    }
.end annotation


# static fields
.field private static Cq:Lcom/google/android/gms/internal/zzbs$zza;


# instance fields
.field private final Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

.field private Cs:Lcom/google/android/gms/internal/zzbv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbv",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/contextmanager/fence/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahv:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzbs$zza;->zzahq:Lcom/google/android/gms/internal/zzbs$zza;

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cq:Lcom/google/android/gms/internal/zzbs$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0x2f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->zzahv:Landroid/os/Looper;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "@@ContextManagerNullAccount@@"

    :goto_15
    if-nez p4, :cond_25

    invoke-static {p1, v0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzs(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    return-void

    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_15

    :cond_25
    invoke-static {p1, v0, p4}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    move-result-object v0

    goto :goto_1b
.end method

.method public static zza(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cq:Lcom/google/android/gms/internal/zzbs$zza;

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzbs$zza;->zzahq:Lcom/google/android/gms/internal/zzbs$zza;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbs$zza;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cq:Lcom/google/android/gms/internal/zzbs$zza;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbs$zza;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_a
.end method

.method private zzaxv()Lcom/google/android/gms/internal/zzbv;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbv",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/contextmanager/fence/internal/zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cs:Lcom/google/android/gms/internal/zzbv;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->zzahv:Landroid/os/Looper;

    sget-object v2, Lcom/google/android/gms/contextmanager/fence/internal/zze;->BN:Lcom/google/android/gms/internal/zzbv$zza;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbv;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzbv$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cs:Lcom/google/android/gms/internal/zzbv;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cs:Lcom/google/android/gms/internal/zzbv;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
            ">;",
            "Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarv()V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/zzi;

    invoke-static {p1}, Lcom/google/android/gms/contextmanager/internal/zzf;->zzd(Lcom/google/android/gms/internal/zzpr$zzb;)Lcom/google/android/gms/contextmanager/internal/zzf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v4}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzagm()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarv()V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/zzi;

    invoke-static {p1}, Lcom/google/android/gms/contextmanager/internal/zzf;->zze(Lcom/google/android/gms/internal/zzpr$zzb;)Lcom/google/android/gms/contextmanager/internal/zzf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v4}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzagm()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarv()V

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzaxv()Lcom/google/android/gms/internal/zzbv;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->zza(Lcom/google/android/gms/internal/zzbv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/zzi;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/contextmanager/internal/zzf;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/contextmanager/internal/zzf$zza;)Lcom/google/android/gms/contextmanager/internal/zzf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v4}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzagm()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V

    return-void
.end method

.method protected zzaeu()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.contextmanager.service.args"

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/zzd;->Cr:Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public zzarx()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzd;->zzef(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected zzef(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzi;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zzei(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.contextmanager.service.ContextManagerService.START"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    return-object v0
.end method
