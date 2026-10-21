###### Class com.google.android.gms.plus.internal.model.people.zzi (com.google.android.gms.plus.internal.model.people.zzi)
.class public Lcom/google/android/gms/plus/internal/model/people/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;Landroid/os/Parcel;I)V
    .registers 9

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcm(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;->asX:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;->mVersionCode:I

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    :cond_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;->atF:Z

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    :cond_27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;->mValue:Ljava/lang/String;

    invoke-static {p1, v5, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/model/people/zzi;->zzqh(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/model/people/zzi;->zzxl(I)[Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzqh(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;
    .registers 9

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcl(Landroid/os/Parcel;)I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v2, v1

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v3, :cond_48

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzck(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgi(I)I

    move-result v6

    packed-switch v6, :pswitch_data_70

    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_21
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_2e
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_3b
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-eq v5, v3, :cond_69

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_69
    new-instance v3, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;-><init>(Ljava/util/Set;IZLjava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2e
        :pswitch_3b
    .end packed-switch
.end method

.method public zzxl(I)[Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    return-object v0
.end method
