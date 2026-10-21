###### Class com.google.android.gms.plus.model.people.PersonBuffer (com.google.android.gms.plus.model.people.PersonBuffer)
.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final atI:Lcom/google/android/gms/common/data/zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/zzd",
            "<",
            "Lcom/google/android/gms/plus/internal/model/people/PersonEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzaqy()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzaqy()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/android/gms/common/data/zzd;

    sget-object v1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->atI:Lcom/google/android/gms/common/data/zzd;

    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->atI:Lcom/google/android/gms/common/data/zzd;

    goto :goto_1f
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/people/Person;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->atI:Lcom/google/android/gms/common/data/zzd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->atI:Lcom/google/android/gms/common/data/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/zzd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/google/android/gms/plus/internal/model/people/zzk;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/plus/internal/model/people/zzk;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto :goto_e
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
