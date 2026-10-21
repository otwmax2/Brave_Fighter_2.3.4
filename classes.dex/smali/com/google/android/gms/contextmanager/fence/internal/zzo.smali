###### Class com.google.android.gms.contextmanager.fence.internal.zzo (com.google.android.gms.contextmanager.fence.internal.zzo)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcm(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->getType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->zzaxe()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaj(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/zzo;->zzdl(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/zzo;->zzhr(I)[Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    move-result-object v0

    return-object v0
.end method

.method public zzdl(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcl(Landroid/os/Parcel;)I

    move-result v3

    const/4 v0, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v3, :cond_2b

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzck(Landroid/os/Parcel;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzgi(I)I

    move-result v5

    packed-switch v5, :pswitch_data_52

    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_7

    :pswitch_21
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_7

    :pswitch_26
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzae(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7

    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-eq v4, v3, :cond_4c

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

    :cond_4c
    new-instance v3, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;-><init>(IILjava/util/List;)V

    return-object v3

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method public zzhr(I)[Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    return-object v0
.end method
