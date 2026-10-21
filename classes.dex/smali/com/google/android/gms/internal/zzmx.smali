###### Class com.google.android.gms.internal.zzmx (com.google.android.gms.internal.zzmx)
.class public Lcom/google/android/gms/internal/zzmx;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/auth/account/zzb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 13

    const/16 v3, 0x78

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmx;->zzby(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzby(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zzb;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/auth/account/zzb$zza;->zzbx(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.account.workaccount.START"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    return-object v0
.end method
