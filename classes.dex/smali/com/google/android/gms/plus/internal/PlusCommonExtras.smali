###### Class com.google.android.gms.plus.internal.PlusCommonExtras (com.google.android.gms.plus.internal.PlusCommonExtras)
.class public Lcom/google/android/gms/plus/internal/PlusCommonExtras;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/zzf;


# instance fields
.field private asF:Ljava/lang/String;

.field private asG:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/zzf;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Gpsrc"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ClientCallingPackage"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzf;->zza(Lcom/google/android/gms/plus/internal/PlusCommonExtras;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzan(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android.gms.plus.internal.PlusCommonExtras.extraPlusCommon"

    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public zzbyi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asF:Ljava/lang/String;

    return-object v0
.end method

.method public zzbyj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->asG:Ljava/lang/String;

    return-object v0
.end method
