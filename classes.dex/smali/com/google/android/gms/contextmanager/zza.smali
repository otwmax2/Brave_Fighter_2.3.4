###### Class com.google.android.gms.contextmanager.zza (com.google.android.gms.contextmanager.zza)
.class public Lcom/google/android/gms/contextmanager/zza;
.super Lcom/google/android/gms/common/data/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzd",
        "<",
        "Lcom/google/android/gms/contextmanager/ContextData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/contextmanager/ContextData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/zza;->zzhf(I)Lcom/google/android/gms/contextmanager/ContextData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzfn(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/zza;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/ContextData;

    return-object v0
.end method

.method public zzhf(I)Lcom/google/android/gms/contextmanager/ContextData;
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/common/data/zzd;->zzfn(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/ContextData;

    return-object v0
.end method
