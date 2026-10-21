###### Class com.google.android.gms.awareness.snapshot.internal.WeatherImpl (com.google.android.gms.awareness.snapshot.internal.WeatherImpl)
.class public Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/awareness/state/Weather;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final gn:F

.field private final go:F

.field private final gp:F

.field private final gq:I

.field private final gr:[I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IFFFI[I)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gn:F

    iput p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->go:F

    iput p4, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gp:F

    iput p5, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gq:I

    iput-object p6, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gr:[I

    return-void
.end method

.method static zza(IF)F
    .registers 5

    packed-switch p0, :pswitch_data_1c

    const-string v0, "WeatherImpl"

    const-string v1, "Invalid temperature unit %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    invoke-static {p1}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->zzc(F)F

    move-result p1

    :pswitch_1a
    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_16
    .end packed-switch
.end method

.method private static zzc(F)F
    .registers 3

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x42000000    # 32.0f

    sub-float v1, p0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getConditions()[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gr:[I

    return-object v0
.end method

.method public getDewPoint(I)F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gp:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->zza(IF)F

    move-result v0

    return v0
.end method

.method public getFeelsLikeTemperature(I)F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->go:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->zza(IF)F

    move-result v0

    return v0
.end method

.method public getHumidity()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gq:I

    return v0
.end method

.method public getTemperature(I)F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gn:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->zza(IF)F

    move-result v0

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Feels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Dew="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Humidity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getHumidity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getConditions()[I

    move-result-object v2

    if-nez v2, :cond_7f

    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7f
    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->getConditions()[I

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_8b
    if-ge v0, v5, :cond_9d

    aget v6, v4, v0

    if-nez v2, :cond_96

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_96
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_8b

    :cond_9d
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzn;->zza(Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzahj()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gp:F

    return v0
.end method

.method public zzahk()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->go:F

    return v0
.end method

.method public zzahl()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gn:F

    return v0
.end method
