###### Class com.google.android.gms.internal.zzci (com.google.android.gms.internal.zzci)
.class public Lcom/google/android/gms/internal/zzci;
.super Lcom/google/android/gms/internal/zzcd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzarn:Lcom/google/android/gms/internal/zzfx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfx;)V
    .registers 10

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzci;->zzarn:Lcom/google/android/gms/internal/zzfx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarn:Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzc(Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzci;->zzgw()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzk(I)V

    const-string v1, "Tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzhn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_27
.end method


# virtual methods
.method protected destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzci;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzcd;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarn:Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzci;->zzd(Lcom/google/android/gms/internal/zzfx;)V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected zzb(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzci;->zzarn:Lcom/google/android/gms/internal/zzfx;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzgy()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzci;->destroy()V

    return-void
.end method

.method protected zzhe()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
