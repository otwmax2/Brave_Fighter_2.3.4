###### Class com.google.android.gms.contextmanager.ContextData (com.google.android.gms.contextmanager.ContextData)
.class public Lcom/google/android/gms/contextmanager/ContextData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/ContextData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BD:Lcom/google/android/gms/internal/zzrz$zza;

.field private BE:[B

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/ContextData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/ContextData;->mVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawr()V

    return-void
.end method

.method private zzawp()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawq()Z

    move-result v0

    if-nez v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrz$zza;->zzu([B)Lcom/google/android/gms/internal/zzrz$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B
    :try_end_11
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_6 .. :try_end_11} :catch_15

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawr()V

    return-void

    :catch_15
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzawr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    if-eqz v0, :cond_8

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/ContextData;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/ContextData;

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawp()V

    invoke-direct {p1}, Lcom/google/android/gms/contextmanager/ContextData;->zzawp()V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrz$zza;->DX:Lcom/google/android/gms/internal/zzrz$zzc;

    iget v2, v2, Lcom/google/android/gms/internal/zzrz$zzc;->version:I

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrz$zza;->DX:Lcom/google/android/gms/internal/zzrz$zzc;

    iget v3, v3, Lcom/google/android/gms/internal/zzrz$zzc;->version:I

    if-eq v2, v3, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawp()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz$zza;->DW:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawp()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrz$zza;->DX:Lcom/google/android/gms/internal/zzrz$zzc;

    iget v2, v2, Lcom/google/android/gms/internal/zzrz$zzc;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->zzawp()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/zzb;->zza(Lcom/google/android/gms/contextmanager/ContextData;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzawq()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method zzaws()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BE:[B

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->BD:Lcom/google/android/gms/internal/zzrz$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapc;->zzf(Lcom/google/android/gms/internal/zzapc;)[B

    move-result-object v0

    goto :goto_6
.end method
