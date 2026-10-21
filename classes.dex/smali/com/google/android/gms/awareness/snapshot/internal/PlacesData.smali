###### Class com.google.android.gms.awareness.snapshot.internal.PlacesData (com.google.android.gms.awareness.snapshot.internal.PlacesData)
.class public final Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->fM:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPlaceLikelihoods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->fM:Ljava/util/ArrayList;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzf;->zza(Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzagv()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->fM:Ljava/util/ArrayList;

    return-object v0
.end method
