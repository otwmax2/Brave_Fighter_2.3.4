###### Class com.google.android.gms.awareness.snapshot.internal.SnapshotRequest (com.google.android.gms.awareness.snapshot.internal.SnapshotRequest)
.class public Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final gk:[I


# instance fields
.field private final gl:I

.field private final gm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gk:[I

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_10
    .array-data 4
        0x2712
        0x2713
        0x2714
        0x2715
        0x2716
        0x2717
    .end array-data
.end method

.method constructor <init>(IILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gl:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;-><init>(IILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_6

    move v2, v1

    :cond_5
    :goto_5
    return v2

    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gl:I

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->zzahg()I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    move v0, v1

    :goto_19
    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->zzahh()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_56

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->zzahh()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->zzahh()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_5

    :cond_54
    move v0, v2

    goto :goto_19

    :cond_56
    move v3, v2

    goto :goto_20

    :cond_58
    move v2, v1

    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    :cond_21
    move v1, v2

    :cond_22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzk;->zza(Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzahg()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gl:I

    return v0
.end method

.method public zzahh()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gm:Ljava/util/ArrayList;

    return-object v0
.end method
