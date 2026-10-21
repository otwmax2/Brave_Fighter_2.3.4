###### Class com.google.android.gms.internal.zzpn (com.google.android.gms.internal.zzpn)
.class public abstract Lcom/google/android/gms/internal/zzpn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpn$zzb;,
        Lcom/google/android/gms/internal/zzpn$zza;
    }
.end annotation


# instance fields
.field public final it:I

.field public final sn:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpn;->sn:I

    iput p2, p0, Lcom/google/android/gms/internal/zzpn;->it:I

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation
.end method

.method public abstract zzx(Lcom/google/android/gms/common/api/Status;)V
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

###### Class com.google.android.gms.internal.zzpn.zza (com.google.android.gms.internal.zzpn$zza)
.class public final Lcom/google/android/gms/internal/zzpn$zza;
.super Lcom/google/android/gms/internal/zzpn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final so:Lcom/google/android/gms/internal/zzpr$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/gms/internal/zzpr$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpn;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpr$zza;->zzaos()Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sn:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrd;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrd;->zzg(Lcom/google/android/gms/internal/zzpr$zza;)V

    :cond_f
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->so:Lcom/google/android/gms/internal/zzpr$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzpn.zzb (com.google.android.gms.internal.zzpn$zzb)
.class public final Lcom/google/android/gms/internal/zzpn$zzb;
.super Lcom/google/android/gms/internal/zzpn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzpn;"
    }
.end annotation


# static fields
.field private static final sr:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final sp:Lcom/google/android/gms/internal/zzrb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrb",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final sq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "Connection to Google Play services was lost while executing the API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzpn$zzb;->sr:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/gms/internal/zzrb",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpn;-><init>(II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sp:Lcom/google/android/gms/internal/zzrb;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sp:Lcom/google/android/gms/internal/zzrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzrb;->zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_f

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzpn$zzb;->sr:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzpn$zzb;->zzx(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    :catch_f
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/zzpn$zzb;->sr:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpn$zzb;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_7
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/firebase/FirebaseException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zzb;->sq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_16
.end method
