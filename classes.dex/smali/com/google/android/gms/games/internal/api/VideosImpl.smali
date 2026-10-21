###### Class com.google.android.gms.games.internal.api.VideosImpl (com.google.android.gms.games.internal.api.VideosImpl)
.class public final Lcom/google/android/gms/games/internal/api/VideosImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbiw()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/VideosImpl$5;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbix()Z

    move-result v0

    return v0
.end method

.method public registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzqs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zze(Lcom/google/android/gms/internal/zzqs;)V

    :cond_e
    return-void
.end method

.method public unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbiy()V

    :cond_a
    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$1;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;->getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$1;->Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzi(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass10 (com.google.android.gms.games.internal.api.VideosImpl$10)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$10;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$10;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzq(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass11 (com.google.android.gms.games.internal.api.VideosImpl$11)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$11;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$11;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzl(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass12 (com.google.android.gms.games.internal.api.VideosImpl$12)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$12;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$12;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzm(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass13 (com.google.android.gms.games.internal.api.VideosImpl$13)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$13;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$13;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;Ljava/lang/String;Lcom/google/android/gms/games/video/VideoConfiguration;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass14 (com.google.android.gms.games.internal.api.VideosImpl$14)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$14;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$14;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass15 (com.google.android.gms.games.internal.api.VideosImpl$15)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$15;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$15;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass2 (com.google.android.gms.games.internal.api.VideosImpl$2)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$2;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;->getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$2;->Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzj(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass3 (com.google.android.gms.games.internal.api.VideosImpl$3)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$3;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzk(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass4 (com.google.android.gms.games.internal.api.VideosImpl$4)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$4;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzn(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass5 (com.google.android.gms.games.internal.api.VideosImpl$5)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$5;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;->isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;

.field final synthetic Wl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$5;->Wk:Lcom/google/android/gms/games/internal/api/VideosImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$5;->Wl:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$5;->Wl:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzpr$zzb;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass6 (com.google.android.gms.games.internal.api.VideosImpl$6)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$6;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzo(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass7 (com.google.android.gms.games.internal.api.VideosImpl$7)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$7;
.super Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzp(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass8 (com.google.android.gms.games.internal.api.VideosImpl$8)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$8;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$8;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzg(Lcom/google/android/gms/internal/zzpr$zzb;Z)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.AnonymousClass9 (com.google.android.gms.games.internal.api.VideosImpl$9)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$9;
.super Lcom/google/android/gms/games/Games$StatusImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$9;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/video/VideoConfiguration;Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureAvailableImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureAvailableImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureAvailableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;->zzdb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureAvailableImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureAvailableImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;->zzdb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wm:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;->Wm:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureCapabilitiesImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureCapabilitiesImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureCapabilitiesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;->zzdc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureCapabilitiesImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureCapabilitiesImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;->zzdc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wn:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;->Wn:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStateImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureStateImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStateImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/VideosImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;->zzdd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStateResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStateResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStateImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureStateImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;->zzdd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wo:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;->Wo:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureState()Lcom/google/android/gms/games/video/CaptureState;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStopImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureStopImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStopImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;->zzde(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;

    move-result-object v0

    return-object v0
.end method

.method public zzde(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStopImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureStopImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;->zzde(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wp:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;->Wp:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingAvailabilityImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingAvailabilityImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStreamingAvailabilityImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;->zzdf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingAvailabilityImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingAvailabilityImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;->zzdf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wq:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;->Wq:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingMetadataImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingMetadataImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStreamingMetadataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;->zzdg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingMetadataImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingMetadataImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;->zzdg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wr:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->Wr:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingUrlImpl (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingUrlImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStreamingUrlImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;->zzdh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingUrlImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$CaptureStreamingUrlImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;->zzdh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ws:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;->Ws:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.ListVideosImpl (com.google.android.gms.games.internal.api.VideosImpl$ListVideosImpl)
.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListVideosImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;->zzdi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$ListVideosResult;

    move-result-object v0

    return-object v0
.end method

.method public zzdi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$ListVideosResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.VideosImpl.ListVideosImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.VideosImpl$ListVideosImpl$1)
.class Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$ListVideosResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;->zzdi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$ListVideosResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wt:Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;->Wt:Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
