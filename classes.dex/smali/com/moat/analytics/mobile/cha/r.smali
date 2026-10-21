###### Class com.moat.analytics.mobile.cha.r (com.moat.analytics.mobile.cha.r)
.class final Lcom/moat/analytics/mobile/cha/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/r$d;,
        Lcom/moat/analytics/mobile/cha/r$e;
    }
.end annotation


# static fields
.field private static ʻ:I

.field private static ˊ:Lcom/moat/analytics/mobile/cha/r$e;

.field private static ˋ:Lcom/moat/analytics/mobile/cha/r$d;

.field private static ˎ:I

.field private static ˏ:Ljava/lang/String;

.field private static ॱ:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 3000
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/moat/analytics/mobile/cha/r;->ॱ:[I

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/moat/analytics/mobile/cha/r;->ˎ:I

    const/4 v0, 0x1

    sput v0, Lcom/moat/analytics/mobile/cha/r;->ʻ:I

    sput-object v1, Lcom/moat/analytics/mobile/cha/r;->ˊ:Lcom/moat/analytics/mobile/cha/r$e;

    .line 33
    sput-object v1, Lcom/moat/analytics/mobile/cha/r;->ˋ:Lcom/moat/analytics/mobile/cha/r$d;

    return-void

    .line 3000
    nop

    :array_16
    .array-data 4
        -0x258497b
        0x62219bf8
        -0x235ec64f
        -0x3fba279d
        -0x306f563
        -0x4f1bc905
        0x193a374c
        -0x2c3c024d
        0x343d08a
        -0x1d85bf6b
        0x70109f21
        0x67d6125d
        0x3eac657
        0x5946a844
        0x3168babd
        -0x249fd64a
        0x381f36fe
        -0x711e1e87
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ʻ()Z
    .registers 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2089
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˊ:Ljava/lang/ref/WeakReference;

    .line 2090
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    .line 1180
    :goto_16
    if-nez v3, :cond_83

    move v0, v1

    .line 1188
    :goto_19
    packed-switch v0, :pswitch_data_8c

    sget v0, Lcom/moat/analytics/mobile/cha/r;->ʻ:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/r;->ˎ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 1181
    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v0, v4, :cond_85

    .line 1188
    const/16 v0, 0x16

    :goto_30
    packed-switch v0, :pswitch_data_92

    sget v0, Lcom/moat/analytics/mobile/cha/r;->ʻ:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/r;->ˎ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3f

    .line 1182
    :cond_3f
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v3, v5, [I

    fill-array-data v3, :array_98

    invoke-static {v3, v6}, Lcom/moat/analytics/mobile/cha/r;->ˎ([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1188
    :goto_54
    if-eq v0, v2, :cond_88

    move v0, v1

    :goto_57
    packed-switch v0, :pswitch_data_a8

    move v0, v1

    :goto_5b
    return v0

    .line 2091
    :cond_5c
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_16

    .line 1184
    :pswitch_5f
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v3, v5, [I

    fill-array-data v3, :array_ae

    invoke-static {v3, v6}, Lcom/moat/analytics/mobile/cha/r;->ˎ([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_54

    .line 1188
    :pswitch_75
    sget v0, Lcom/moat/analytics/mobile/cha/r;->ˎ:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/r;->ʻ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_81

    :cond_81
    move v0, v2

    goto :goto_5b

    :cond_83
    move v0, v2

    goto :goto_19

    :cond_85
    const/16 v0, 0x13

    goto :goto_30

    :cond_88
    move v0, v2

    goto :goto_57

    :pswitch_8a
    move v0, v1

    goto :goto_54

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x16
        :pswitch_5f
    .end packed-switch

    .line 1182
    :array_98
    .array-data 4
        -0x1c45d663
        -0x4a332265
        0x2186cae2
        0x2a760bb
        -0x4ddb9fd4
        0x4748c6f
    .end array-data

    .line 1188
    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_75
    .end packed-switch

    .line 1184
    :array_ae
    .array-data 4
        -0x1c45d663
        -0x4a332265
        0x2186cae2
        0x2a760bb
        -0x4ddb9fd4
        0x4748c6f
    .end array-data
.end method

.method private static ʼ()I
    .registers 3

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v0

    .line 53
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/cha/r;->ˎ([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 57
    :goto_1e
    return v0

    .line 56
    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 57
    const/4 v0, 0x0

    goto :goto_1e

    .line 53
    nop

    :array_26
    .array-data 4
        -0x67d27440
        0x3b547fcc
        -0x5604eba4
        -0x6d3a25dd
    .end array-data
.end method

.method static synthetic ʽ()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˏ:Ljava/lang/String;

    return-object v0
.end method

.method static ˊ()Lcom/moat/analytics/mobile/cha/r$e;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˊ:Lcom/moat/analytics/mobile/cha/r$e;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˊ:Lcom/moat/analytics/mobile/cha/r$e;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/r$e;->ˋ(Lcom/moat/analytics/mobile/cha/r$e;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 96
    :cond_c
    new-instance v0, Lcom/moat/analytics/mobile/cha/r$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/r$e;-><init>(B)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/r;->ˊ:Lcom/moat/analytics/mobile/cha/r$e;

    .line 98
    :cond_14
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˊ:Lcom/moat/analytics/mobile/cha/r$e;

    return-object v0
.end method

.method static ˋ()Lcom/moat/analytics/mobile/cha/r$d;
    .registers 2

    .prologue
    .line 143
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˋ:Lcom/moat/analytics/mobile/cha/r$d;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˋ:Lcom/moat/analytics/mobile/cha/r$d;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/r$d;->ʽ:Z

    if-nez v0, :cond_12

    .line 144
    :cond_a
    new-instance v0, Lcom/moat/analytics/mobile/cha/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/r$d;-><init>(B)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/r;->ˋ:Lcom/moat/analytics/mobile/cha/r$d;

    .line 146
    :cond_12
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˋ:Lcom/moat/analytics/mobile/cha/r$d;

    return-object v0
.end method

.method static ˋ(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static ˎ()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ˏ:Ljava/lang/String;

    return-object v0
.end method

.method private static ˎ([II)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x4

    new-array v5, v0, [C

    .line 122
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v6, v0, [C

    .line 123
    sget-object v0, Lcom/moat/analytics/mobile/cha/r;->ॱ:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 125
    :goto_15
    array-length v3, p0

    if-ge v1, v3, :cond_60

    move v3, v2

    .line 141
    :goto_19
    packed-switch v3, :pswitch_data_62

    .line 127
    aget v3, p0, v1

    ushr-int/lit8 v3, v3, 0x10

    aput-char v3, v5, v2

    .line 128
    aget v3, p0, v1

    int-to-char v3, v3

    aput-char v3, v5, v4

    .line 129
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    ushr-int/lit8 v3, v3, 0x10

    aput-char v3, v5, v8

    .line 130
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    int-to-char v3, v3

    aput-char v3, v5, v9

    .line 133
    invoke-static {v5, v0, v2}, Lcom/chartboost/sdk/impl/b;->a([C[IZ)[I

    .line 136
    shl-int/lit8 v3, v1, 0x1

    aget-char v7, v5, v2

    aput-char v7, v6, v3

    .line 137
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v5, v4

    aput-char v7, v6, v3

    .line 138
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-char v7, v5, v8

    aput-char v7, v6, v3

    .line 139
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x3

    aget-char v7, v5, v9

    aput-char v7, v6, v3

    .line 125
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    .line 141
    :pswitch_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_60
    move v3, v4

    goto :goto_19

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5a
    .end packed-switch
.end method

.method static ˎ(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/r$5;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/cha/r$5;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 82
    :goto_8
    return-void

    .line 80
    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method static ˏ()Landroid/content/Context;
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˊ:Ljava/lang/ref/WeakReference;

    .line 90
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 91
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static ॱ()D
    .registers 4
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v0

    .line 40
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2e

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/cha/r;->ˎ([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 41
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ʼ()I

    move-result v1

    .line 42
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_27

    move-result v0

    .line 43
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 46
    :goto_26
    return-wide v0

    .line 45
    :catch_27
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 46
    const-wide/16 v0, 0x0

    goto :goto_26

    .line 40
    :array_2e
    .array-data 4
        -0x67d27440
        0x3b547fcc
        -0x5604eba4
        -0x6d3a25dd
    .end array-data
.end method

.method static synthetic ॱ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/moat/analytics/mobile/cha/r;->ˏ:Ljava/lang/String;

    return-object p0
.end method

###### Class com.moat.analytics.mobile.cha.r.AnonymousClass5 (com.moat.analytics.mobile.cha.r$5)
.class final Lcom/moat/analytics/mobile/cha/r$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/r;->ˎ(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ˎ:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/r$5;->ˎ:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$5;->ˎ:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/r;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const/4 v0, 0x3

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieved Advertising ID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ʽ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_2c
    return-void

    .line 72
    :cond_2d
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "User has limited ad tracking"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_2c

    .line 75
    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_2c
.end method

###### Class com.moat.analytics.mobile.cha.r.d (com.moat.analytics.mobile.cha.r$d)
.class final Lcom/moat/analytics/mobile/cha/r$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field ʽ:Z

.field ˊ:Z

.field ˋ:Z

.field ˎ:Ljava/lang/String;

.field ˏ:Ljava/lang/String;

.field ॱ:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˎ:Ljava/lang/String;

    .line 152
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˏ:Ljava/lang/String;

    .line 153
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ॱ:Ljava/lang/Integer;

    .line 154
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˋ:Z

    .line 155
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˊ:Z

    .line 156
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/r$d;->ʽ:Z

    .line 160
    :try_start_19
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ˏ()Landroid/content/Context;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_4c

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ʽ:Z

    .line 163
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˎ:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˏ:Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ॱ:Ljava/lang/Integer;

    .line 167
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ʻ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˋ:Z

    .line 168
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/r;->ˋ(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/r$d;->ˊ:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4c} :catch_4d

    .line 173
    :cond_4c
    :goto_4c
    return-void

    .line 171
    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_4c
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/r$d;-><init>()V

    return-void
.end method

###### Class com.moat.analytics.mobile.cha.r.e (com.moat.analytics.mobile.cha.r$e)
.class final Lcom/moat/analytics/mobile/cha/r$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private ˊ:Ljava/lang/String;

.field private ˋ:Ljava/lang/String;

.field private ˏ:Z

.field private ॱ:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˏ:Z

    .line 104
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˊ:Ljava/lang/String;

    .line 105
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˋ:Ljava/lang/String;

    .line 106
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ॱ:Ljava/lang/String;

    .line 110
    :try_start_12
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ˏ()Landroid/content/Context;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3c

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˏ:Z

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˋ:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˊ:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˋ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ॱ:Ljava/lang/String;

    .line 126
    :goto_3b
    return-void

    .line 121
    :cond_3c
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "Can\'t get app name, appContext is null."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_45

    goto :goto_3b

    .line 124
    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_3b
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/r$e;-><init>()V

    return-void
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/r$e;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˏ:Z

    return v0
.end method


# virtual methods
.method final ˋ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˋ:Ljava/lang/String;

    return-object v0
.end method

.method final ˎ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ˊ:Ljava/lang/String;

    return-object v0
.end method

.method final ॱ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ॱ:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/r$e;->ॱ:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "_unknown_"

    goto :goto_6
.end method
