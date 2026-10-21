###### Class com.google.android.gms.ads.internal.client.zzaj (com.google.android.gms.ads.internal.client.zzaj)
.class public Lcom/google/android/gms/ads/internal/client/zzaj;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzaj$zza;
    }
.end annotation


# instance fields
.field private zzald:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzaj;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaj;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzee;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzef;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;Lcom/google/android/gms/internal/zzeg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaj;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzes()Lcom/google/android/gms/ads/internal/client/zzr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzaj$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzaj;Lcom/google/android/gms/ads/internal/client/zzaj$1;)V

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.client.zzaj.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzaj$1)
.class synthetic Lcom/google/android/gms/ads/internal/client/zzaj$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.internal.client.zzaj.zza (com.google.android.gms.ads.internal.client.zzaj$zza)
.class Lcom/google/android/gms/ads/internal/client/zzaj$zza;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaws:Lcom/google/android/gms/ads/internal/client/zzaj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzaws:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj;Lcom/google/android/gms/ads/internal/client/zzaj$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzaj$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzaj;)V

    return-void
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzaj$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.ads.internal.client.zzaj.zza.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzaj$zza$1)
.class Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawt:Lcom/google/android/gms/ads/internal/client/zzaj$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaj$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawt:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawt:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzaws:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;->zza(Lcom/google/android/gms/ads/internal/client/zzaj;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaj$zza$1;->zzawt:Lcom/google/android/gms/ads/internal/client/zzaj$zza;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzaj$zza;->zzaws:Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaj;->zza(Lcom/google/android/gms/ads/internal/client/zzaj;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
