###### Class com.google.android.gms.games.video.CaptureState (com.google.android.gms.games.video.CaptureState)
.class public final Lcom/google/android/gms/games/video/CaptureState;
.super Ljava/lang/Object;


# instance fields
.field private final aab:Z

.field private final aac:I

.field private final aad:I

.field private final kk:Z

.field private final zzanc:Z


# direct methods
.method private constructor <init>(ZIIZZ)V
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, v1}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    invoke-static {p3, v1}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/CaptureState;->aab:Z

    iput p2, p0, Lcom/google/android/gms/games/video/CaptureState;->aac:I

    iput p3, p0, Lcom/google/android/gms/games/video/CaptureState;->aad:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/video/CaptureState;->kk:Z

    iput-boolean p5, p0, Lcom/google/android/gms/games/video/CaptureState;->zzanc:Z

    return-void
.end method

.method public static zzaa(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;
    .registers 8

    const/4 v4, -0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_c

    const-string v0, "IsCapturing"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/games/video/CaptureState;

    const-string v1, "IsCapturing"

    invoke-virtual {p0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "CaptureMode"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "CaptureQuality"

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "IsOverlayVisible"

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "IsPaused"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/video/CaptureState;-><init>(ZIIZZ)V

    goto :goto_d
.end method


# virtual methods
.method public getCaptureMode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->aac:I

    return v0
.end method

.method public getCaptureQuality()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/CaptureState;->aad:I

    return v0
.end method

.method public isCapturing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->aab:Z

    return v0
.end method

.method public isOverlayVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->kk:Z

    return v0
.end method

.method public isPaused()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/CaptureState;->zzanc:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IsCapturing"

    iget-boolean v2, p0, Lcom/google/android/gms/games/video/CaptureState;->aab:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CaptureMode"

    iget v2, p0, Lcom/google/android/gms/games/video/CaptureState;->aac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CaptureQuality"

    iget v2, p0, Lcom/google/android/gms/games/video/CaptureState;->aad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IsOverlayVisible"

    iget-boolean v2, p0, Lcom/google/android/gms/games/video/CaptureState;->kk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IsPaused"

    iget-boolean v2, p0, Lcom/google/android/gms/games/video/CaptureState;->zzanc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
