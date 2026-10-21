###### Class com.moat.analytics.mobile.iro.p (com.moat.analytics.mobile.iro.p)
.class final Lcom/moat/analytics/mobile/iro/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/p$a;,
        Lcom/moat/analytics/mobile/iro/p$b;
    }
.end annotation


# static fields
.field private static ˊ:J

.field private static ˋ:Ljava/lang/String;

.field private static ˏ:Lcom/moat/analytics/mobile/iro/p$a;

.field private static ॱ:Lcom/moat/analytics/mobile/iro/p$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 3000
    const-wide v0, 0x7edc3777b01e92ddL    # 1.209376192706995E303

    sput-wide v0, Lcom/moat/analytics/mobile/iro/p;->ˊ:J

    .line 32
    sput-object v2, Lcom/moat/analytics/mobile/iro/p;->ॱ:Lcom/moat/analytics/mobile/iro/p$b;

    .line 33
    sput-object v2, Lcom/moat/analytics/mobile/iro/p;->ˏ:Lcom/moat/analytics/mobile/iro/p$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ʻ()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ˋ:Ljava/lang/String;

    return-object v0
.end method

.method private static ʼ()I
    .registers 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v0

    .line 53
    const-string v1, "\u31d5\ua369\uf102\u07c6\u55e0\u6b9b"

    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/p;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v0

    .line 57
    :goto_19
    return v0

    .line 56
    :catch_1a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 57
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static ˊ()Lcom/moat/analytics/mobile/iro/p$a;
    .registers 2

    .prologue
    .line 143
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ˏ:Lcom/moat/analytics/mobile/iro/p$a;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ˏ:Lcom/moat/analytics/mobile/iro/p$a;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/p$a;->ᐝ:Z

    if-nez v0, :cond_12

    .line 144
    :cond_a
    new-instance v0, Lcom/moat/analytics/mobile/iro/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/p$a;-><init>(B)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/p;->ˏ:Lcom/moat/analytics/mobile/iro/p$a;

    .line 146
    :cond_12
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ˏ:Lcom/moat/analytics/mobile/iro/p$a;

    return-object v0
.end method

.method static ˊ(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/p$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/iro/p$1;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 82
    :goto_8
    return-void

    .line 80
    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method static synthetic ˊॱ()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2089
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˋ:Ljava/lang/ref/WeakReference;

    .line 2090
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    .line 1180
    :goto_13
    if-nez v3, :cond_58

    .line 1182
    const/16 v0, 0x39

    :goto_17
    packed-switch v0, :pswitch_data_64

    .line 1181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v0, v4, :cond_5b

    .line 1182
    const/16 v0, 0xe

    :goto_22
    packed-switch v0, :pswitch_data_6a

    .line 1184
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "\u6d93\uff2f\u499f\uda06\u24ce\ub167\u03c1\u6db9\ufe27\u489a\ud506\u27e8"

    invoke-static {v3}, Lcom/moat/analytics/mobile/iro/p;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1188
    :goto_37
    if-eq v0, v1, :cond_5e

    .line 1182
    const/16 v0, 0x63

    :goto_3b
    packed-switch v0, :pswitch_data_70

    move v0, v1

    .line 1188
    :goto_3f
    return v0

    .line 2091
    :cond_40
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_13

    .line 1182
    :pswitch_43
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "\u6d93\uff2f\u499f\uda06\u24ce\ub167\u03c1\u6db9\ufe27\u489a\ud506\u27e8"

    invoke-static {v3}, Lcom/moat/analytics/mobile/iro/p;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_37

    :pswitch_56
    move v0, v2

    .line 1188
    goto :goto_3f

    .line 1182
    :cond_58
    const/16 v0, 0x58

    goto :goto_17

    :cond_5b
    const/16 v0, 0x4a

    goto :goto_22

    :cond_5e
    const/16 v0, 0x2f

    goto :goto_3b

    :pswitch_61
    move v0, v2

    goto :goto_37

    nop

    :pswitch_data_64
    .packed-switch 0x39
        :pswitch_61
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x4a
        :pswitch_43
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x63
        :pswitch_56
    .end packed-switch
.end method

.method static ˋ()Landroid/content/Context;
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˋ:Ljava/lang/ref/WeakReference;

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

.method static ˎ()Lcom/moat/analytics/mobile/iro/p$b;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ॱ:Lcom/moat/analytics/mobile/iro/p$b;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ॱ:Lcom/moat/analytics/mobile/iro/p$b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/p$b;->ˎ(Lcom/moat/analytics/mobile/iro/p$b;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 96
    :cond_c
    new-instance v0, Lcom/moat/analytics/mobile/iro/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/p$b;-><init>(B)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/p;->ॱ:Lcom/moat/analytics/mobile/iro/p$b;

    .line 98
    :cond_14
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ॱ:Lcom/moat/analytics/mobile/iro/p$b;

    return-object v0
.end method

.method static synthetic ˎ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/moat/analytics/mobile/iro/p;->ˋ:Ljava/lang/String;

    return-object p0
.end method

.method static ˎ(Landroid/content/Context;)Z
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

.method static ˏ()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/moat/analytics/mobile/iro/p;->ˋ:Ljava/lang/String;

    return-object v0
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
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v0

    .line 40
    const-string v1, "\u31d5\ua369\uf102\u07c6\u55e0\u6b9b"

    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/p;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 41
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ʼ()I

    move-result v1

    .line 42
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_22

    move-result v0

    .line 43
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 46
    :goto_21
    return-wide v0

    .line 45
    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 46
    const-wide/16 v0, 0x0

    goto :goto_21
.end method

.method private static ॱ(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast v0, [C

    const/4 v1, 0x0

    aget-char v3, v0, v1

    .line 79
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v4, v1, [C

    .line 80
    const/4 v1, 0x1

    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 86
    const/16 v2, 0x4b

    :goto_14
    packed-switch v2, :pswitch_data_32

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 82
    :pswitch_1d
    add-int/lit8 v2, v1, -0x1

    aget-char v5, v0, v1

    mul-int v6, v1, v3

    xor-int/2addr v5, v6

    int-to-long v6, v5

    sget-wide v8, Lcom/moat/analytics/mobile/iro/p;->ˊ:J

    xor-long/2addr v6, v8

    long-to-int v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 86
    :cond_2f
    const/16 v2, 0xb

    goto :goto_14

    :pswitch_data_32
    .packed-switch 0x4b
        :pswitch_1d
    .end packed-switch
.end method

###### Class com.moat.analytics.mobile.iro.p.AnonymousClass1 (com.moat.analytics.mobile.iro.p$1)
.class final Lcom/moat/analytics/mobile/iro/p$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/p;->ˊ(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ˊ:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/p$1;->ˊ:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$1;->ˊ:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/p;->ˎ(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const/4 v0, 0x3

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieved Advertising ID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ʻ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_2c
    return-void

    .line 72
    :cond_2d
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "User has limited ad tracking"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_2c

    .line 75
    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_2c
.end method

###### Class com.moat.analytics.mobile.iro.p.a (com.moat.analytics.mobile.iro.p$a)
.class final Lcom/moat/analytics/mobile/iro/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field ˊ:Ljava/lang/String;

.field ˋ:Ljava/lang/String;

.field ˎ:Ljava/lang/Integer;

.field ˏ:Z

.field ॱ:Z

.field ᐝ:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˋ:Ljava/lang/String;

    .line 152
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˊ:Ljava/lang/String;

    .line 153
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˎ:Ljava/lang/Integer;

    .line 154
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˏ:Z

    .line 155
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/p$a;->ॱ:Z

    .line 156
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/p$a;->ᐝ:Z

    .line 160
    :try_start_19
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˋ()Landroid/content/Context;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_4c

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ᐝ:Z

    .line 163
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˋ:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˊ:Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˎ:Ljava/lang/Integer;

    .line 167
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˊॱ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ˏ:Z

    .line 168
    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/p;->ˎ(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/p$a;->ॱ:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4c} :catch_4d

    .line 173
    :cond_4c
    :goto_4c
    return-void

    .line 171
    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_4c
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/p$a;-><init>()V

    return-void
.end method

###### Class com.moat.analytics.mobile.iro.p.b (com.moat.analytics.mobile.iro.p$b)
.class final Lcom/moat/analytics/mobile/iro/p$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private ˋ:Ljava/lang/String;

.field private ˎ:Ljava/lang/String;

.field private ˏ:Ljava/lang/String;

.field private ॱ:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ॱ:Z

    .line 104
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˎ:Ljava/lang/String;

    .line 105
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˋ:Ljava/lang/String;

    .line 106
    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˏ:Ljava/lang/String;

    .line 110
    :try_start_12
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˋ()Landroid/content/Context;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3c

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/p$b;->ॱ:Z

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˋ:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˎ:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˋ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˏ:Ljava/lang/String;

    .line 126
    :goto_3b
    return-void

    .line 121
    :cond_3c
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "Can\'t get app name, appContext is null."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_45

    goto :goto_3b

    .line 124
    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_3b
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/p$b;-><init>()V

    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/iro/p$b;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ॱ:Z

    return v0
.end method


# virtual methods
.method final ˋ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˋ:Ljava/lang/String;

    return-object v0
.end method

.method final ˏ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˎ:Ljava/lang/String;

    return-object v0
.end method

.method final ॱ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˏ:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/p$b;->ˏ:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "_unknown_"

    goto :goto_6
.end method
