###### Class com.google.android.gms.internal.zzni (com.google.android.gms.internal.zzni)
.class public Lcom/google/android/gms/internal/zzni;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/proxy/ProxyApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performProxyRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzni$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzni$1;-><init>(Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzni.AnonymousClass1 (com.google.android.gms.internal.zzni$1)
.class Lcom/google/android/gms/internal/zzni$1;
.super Lcom/google/android/gms/internal/zznh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzni;->performProxyRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dB:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

.field final synthetic dC:Lcom/google/android/gms/internal/zzni;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzni$1;->dC:Lcom/google/android/gms/internal/zzni;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzni$1;->dB:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzng;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzni$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzni$1$1;-><init>(Lcom/google/android/gms/internal/zzni$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzni$1;->dB:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzng;->zza(Lcom/google/android/gms/internal/zznf;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzni.AnonymousClass1.BinderC01441 (com.google.android.gms.internal.zzni$1$1)
.class Lcom/google/android/gms/internal/zzni$1$1;
.super Lcom/google/android/gms/internal/zznd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzni$1;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dD:Lcom/google/android/gms/internal/zzni$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzni$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzni$1$1;->dD:Lcom/google/android/gms/internal/zzni$1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznd;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzni$1$1;->dD:Lcom/google/android/gms/internal/zzni$1;

    new-instance v1, Lcom/google/android/gms/internal/zznj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zznj;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzni$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
