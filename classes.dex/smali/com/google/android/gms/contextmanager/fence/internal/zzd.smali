###### Class com.google.android.gms.contextmanager.fence.internal.zzd (com.google.android.gms.contextmanager.fence.internal.zzd)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzd;
.super Ljava/lang/Object;


# instance fields
.field private final BM:Lcom/google/android/gms/internal/zzry$zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zzc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zzc;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->BM:Lcom/google/android/gms/internal/zzry$zzc;

    return-void
.end method

.method private static zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzry$zzc;
    .registers 10

    const/4 v0, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzry$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzry$zzc;-><init>()V

    iput p0, v3, Lcom/google/android/gms/internal/zzry$zzc;->Da:I

    if-eqz p1, :cond_29

    array-length v1, p1

    if-eqz v1, :cond_29

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzry$zzc$zza;

    iput-object v1, v3, Lcom/google/android/gms/internal/zzry$zzc;->Dj:[Lcom/google/android/gms/internal/zzry$zzc$zza;

    array-length v4, p1

    move v1, v0

    move v2, v0

    :goto_15
    if-ge v1, v4, :cond_29

    aget-object v0, p1, v1

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzry$zzc;->Dj:[Lcom/google/android/gms/internal/zzry$zzc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->zzags()Lcom/google/android/gms/internal/zzry$zzc$zza;

    move-result-object v0

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_29
    iput-wide p2, v3, Lcom/google/android/gms/internal/zzry$zzc;->Db:J

    return-object v3
.end method

.method public static zzb([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/contextmanager/fence/internal/zzd;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzd;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzry$zzc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzry$zzc;)V

    return-object v0
.end method

.method public static zzc([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/contextmanager/fence/internal/zzd;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzd;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p0, v2, v3}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->zza(I[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;J)Lcom/google/android/gms/internal/zzry$zzc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzry$zzc;)V

    return-object v0
.end method


# virtual methods
.method public zzawy()Lcom/google/android/gms/internal/zzry$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->BM:Lcom/google/android/gms/internal/zzry$zzc;

    return-object v0
.end method
