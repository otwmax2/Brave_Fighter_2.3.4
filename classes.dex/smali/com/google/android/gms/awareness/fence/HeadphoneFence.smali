###### Class com.google.android.gms.awareness.fence.HeadphoneFence (com.google.android.gms.awareness.fence.HeadphoneFence)
.class public final Lcom/google/android/gms/awareness/fence/HeadphoneFence;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static during(I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zzhj(I)Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzb;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static pluggingIn()Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zzawv()Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzb;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static unplugging()Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zzaww()Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzb;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method
