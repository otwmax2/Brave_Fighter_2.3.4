###### Class com.google.android.gms.ads.internal.formats.zza (com.google.android.gms.ads.internal.formats.zza)
.class public Lcom/google/android/gms/ads/internal/formats/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# static fields
.field private static final zzbew:I

.field private static final zzbex:I

.field static final zzbey:I

.field static final zzbez:I


# instance fields
.field private final mBackgroundColor:I

.field private final mTextColor:I

.field private final zzbfa:Ljava/lang/String;

.field private final zzbfb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfc:I

.field private final zzbfd:I

.field private final zzbfe:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbew:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbex:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbex:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbey:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbew:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbez:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfa:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfb:Ljava/util/List;

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_d
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mBackgroundColor:I

    if-eqz p4, :cond_27

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_15
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    if-eqz p5, :cond_2a

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1d
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfc:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfd:I

    iput p7, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfe:I

    return-void

    :cond_24
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbey:I

    goto :goto_d

    :cond_27
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbez:I

    goto :goto_15

    :cond_2a
    const/16 v0, 0xc

    goto :goto_1d
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mBackgroundColor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfa:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfc:I

    return v0
.end method

.method public zzkr()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfb:Ljava/util/List;

    return-object v0
.end method

.method public zzks()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfd:I

    return v0
.end method

.method public zzkt()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzbfe:I

    return v0
.end method
