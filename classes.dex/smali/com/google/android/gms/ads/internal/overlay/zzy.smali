###### Class com.google.android.gms.ads.internal.overlay.zzy (com.google.android.gms.ads.internal.overlay.zzy)
.class Lcom/google/android/gms/ads/internal/overlay/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private mCancelled:Z

.field private zzbwj:Lcom/google/android/gms/ads/internal/overlay/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzbwj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mCancelled:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzbwj:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzoq()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzpm()V

    :cond_c
    return-void
.end method

.method public zzpm()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
