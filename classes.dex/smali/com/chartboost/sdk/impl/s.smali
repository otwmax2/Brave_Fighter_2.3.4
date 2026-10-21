###### Class com.chartboost.sdk.impl.s (com.chartboost.sdk.impl.s)
.class public Lcom/chartboost/sdk/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/chartboost/sdk/impl/s;


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Lcom/chartboost/sdk/impl/s;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/s;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->a:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/impl/s;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/s;

    return-object v0
.end method


# virtual methods
.method public a([B)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 3

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/io/File;
    .registers 2

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
