###### Class com.google.android.gms.contextmanager.zzf (com.google.android.gms.contextmanager.zzf)
.class public Lcom/google/android/gms/contextmanager/zzf;
.super Lcom/google/android/gms/common/data/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzd",
        "<",
        "Lcom/google/android/gms/contextmanager/Relation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/contextmanager/Relation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/zzf;->zzhh(I)Lcom/google/android/gms/contextmanager/Relation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzfn(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/zzf;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/Relation;

    return-object v0
.end method

.method public zzhh(I)Lcom/google/android/gms/contextmanager/Relation;
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/common/data/zzd;->zzfn(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/Relation;

    return-object v0
.end method
