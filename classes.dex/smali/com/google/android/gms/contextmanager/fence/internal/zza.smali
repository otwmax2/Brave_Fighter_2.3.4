###### Class com.google.android.gms.contextmanager.fence.internal.zza (com.google.android.gms.contextmanager.fence.internal.zza)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zza;
.super Ljava/lang/Object;


# instance fields
.field private final BH:Lcom/google/android/gms/internal/zzry$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zza;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zza;->BH:Lcom/google/android/gms/internal/zzry$zza;

    return-void
.end method

.method public static zza(I[I)Lcom/google/android/gms/contextmanager/fence/internal/zza;
    .registers 6

    if-eqz p1, :cond_15

    array-length v0, p1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zza;

    const-wide/16 v2, 0xbb8

    invoke-static {p0, p1, v2, v3}, Lcom/google/android/gms/contextmanager/fence/internal/zza;->zza(I[IJ)Lcom/google/android/gms/internal/zzry$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zza;-><init>(Lcom/google/android/gms/internal/zzry$zza;)V

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static zza(I[IJ)Lcom/google/android/gms/internal/zzry$zza;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzry$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzry$zza;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzry$zza;->Da:I

    iput-wide p2, v0, Lcom/google/android/gms/internal/zzry$zza;->Db:J

    iput-object p1, v0, Lcom/google/android/gms/internal/zzry$zza;->Dc:[I

    return-object v0
.end method

.method public static zzb([I)Lcom/google/android/gms/contextmanager/fence/internal/zza;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/contextmanager/fence/internal/zza;->zza(I[I)Lcom/google/android/gms/contextmanager/fence/internal/zza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzawu()Lcom/google/android/gms/internal/zzry$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zza;->BH:Lcom/google/android/gms/internal/zzry$zza;

    return-object v0
.end method
