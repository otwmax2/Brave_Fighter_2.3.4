###### Class com.google.android.gms.contextmanager.internal.QueryFilterParameters (com.google.android.gms.contextmanager.internal.QueryFilterParameters)
.class public Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CQ:I

.field private final CR:I

.field private final CS:[I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CQ:I

    iput p3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CR:I

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    iget v2, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CR:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CR:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget v2, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CQ:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CQ:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->mVersionCode:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->mVersionCode:I

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->zzayg()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->zzayg()Z

    move-result v3

    if-eq v2, v3, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->zzayg()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    array-length v2, v2

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    array-length v3, v3

    if-eq v2, v3, :cond_41

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v4, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    array-length v5, v4

    move v3, v1

    :goto_45
    if-ge v3, v5, :cond_4

    aget v6, v4, v3

    iget-object v7, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    array-length v8, v7

    move v2, v1

    :goto_4d
    if-ge v2, v8, :cond_5f

    aget v9, v7, v2

    if-ne v9, v6, :cond_58

    move v2, v0

    :goto_54
    if-nez v2, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_5b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_45

    :cond_5f
    move v2, v1

    goto :goto_54
.end method

.method public getLimit()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CR:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    if-eqz v0, :cond_16

    iget-object v4, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_a
    if-ge v2, v5, :cond_17

    aget v3, v4, v2

    mul-int/lit8 v3, v3, 0xd

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_a

    :cond_16
    move v0, v1

    :cond_17
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->mVersionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzn;->zza(Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaye()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CQ:I

    return v0
.end method

.method public zzayf()[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    return-object v0
.end method

.method public zzayg()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CS:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
