###### Class com.google.android.gms.awareness.fence.BeaconFence (com.google.android.gms.awareness.fence.BeaconFence)
.class public final Lcom/google/android/gms/awareness/fence/BeaconFence;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static found(Ljava/util/Collection;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-static {v0}, Lcom/google/android/gms/awareness/fence/BeaconFence;->found([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-static {v0}, Lcom/google/android/gms/awareness/fence/BeaconFence;->found([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;

    move-result-object v0

    goto :goto_f
.end method

.method public static varargs found([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->zzb([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/contextmanager/fence/internal/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzd;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static lost(Ljava/util/Collection;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-static {v0}, Lcom/google/android/gms/awareness/fence/BeaconFence;->lost([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    invoke-static {v0}, Lcom/google/android/gms/awareness/fence/BeaconFence;->lost([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;

    move-result-object v0

    goto :goto_f
.end method

.method public static varargs lost([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->zzc([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/contextmanager/fence/internal/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzd;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method
