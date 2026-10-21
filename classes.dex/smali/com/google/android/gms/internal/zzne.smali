###### Class com.google.android.gms.internal.zzne (com.google.android.gms.internal.zzne)
.class public final Lcom/google/android/gms/internal/zzne;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzng;",
        ">;"
    }
.end annotation


# instance fields
.field private final du:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/auth/api/Auth$zza;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    if-nez p4, :cond_15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_12
    iput-object v0, p0, Lcom/google/android/gms/internal/zzne;->du:Landroid/os/Bundle;

    return-void

    :cond_15
    invoke-virtual {p4}, Lcom/google/android/gms/auth/api/Auth$zza;->zzafc()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_12
.end method


# virtual methods
.method protected zzaeu()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzne;->du:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzafk()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzne;->zzasr()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->PROXY_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzb(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzne;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzng;

    move-result-object v0

    return-object v0
.end method

.method protected zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzng;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzng$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzng;

    move-result-object v0

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method
