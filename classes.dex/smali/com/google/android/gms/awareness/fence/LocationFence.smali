###### Class com.google.android.gms.awareness.fence.LocationFence (com.google.android.gms.awareness.fence.LocationFence)
.class public final Lcom/google/android/gms/awareness/fence/LocationFence;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entering(DDD)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 10
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, p0, v2

    double-to-int v0, v0

    mul-double/2addr v2, p2

    double-to-int v1, v2

    invoke-static {v0, v1, p4, p5}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zza(IID)Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzn;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static exiting(DDD)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 10
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, p0, v2

    double-to-int v0, v0

    mul-double/2addr v2, p2

    double-to-int v1, v2

    invoke-static {v0, v1, p4, p5}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zzb(IID)Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzn;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static in(DDDJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 14
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, p0, v2

    double-to-int v0, v0

    mul-double/2addr v2, p2

    double-to-int v1, v2

    move-wide v2, p4

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zza(IIDJ)Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzn;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method
