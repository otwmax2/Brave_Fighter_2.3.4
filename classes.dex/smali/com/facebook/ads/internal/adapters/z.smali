###### Class com.facebook.ads.internal.adapters.z (com.facebook.ads.internal.adapters.z)
.class public Lcom/facebook/ads/internal/adapters/z;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.flurry.android.FlurryAgent"

    aput-object v1, v0, v3

    const-string v1, "com.flurry.android.ads.FlurryAdErrorType"

    aput-object v1, v0, v4

    const-string v1, "com.flurry.android.ads.FlurryAdNative"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.flurry.android.ads.FlurryAdNativeAsset"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.flurry.android.ads.FlurryAdNativeListener"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/adapters/z;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.inmobi.ads.InMobiNative"

    aput-object v1, v0, v3

    const-string v1, "com.inmobi.sdk.InMobiSdk"

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/adapters/z;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.formats.NativeAdView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/adapters/z;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/g;)Z
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    :pswitch_f
    sget-object v0, Lcom/facebook/ads/internal/adapters/z;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/z;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    :pswitch_16
    sget-object v0, Lcom/facebook/ads/internal/adapters/z;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/z;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    :pswitch_1d
    sget-object v0, Lcom/facebook/ads/internal/adapters/z;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/z;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    array-length v2, p0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_13

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/facebook/ads/internal/adapters/z;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    const/4 v0, 0x1

    goto :goto_3
.end method

###### Class com.facebook.ads.internal.adapters.z.AnonymousClass1 (com.facebook.ads.internal.adapters.z$1)
.class synthetic Lcom/facebook/ads/internal/adapters/z$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/adapters/g;->values()[Lcom/facebook/ads/internal/adapters/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->e:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->d:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/adapters/z$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->c:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
