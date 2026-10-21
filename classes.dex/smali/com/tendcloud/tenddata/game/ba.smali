###### Class com.tendcloud.tenddata.game.ba (com.tendcloud.tenddata.game.ba)
.class final Lcom/tendcloud/tenddata/game/ba;
.super Ljava/lang/Object;


# static fields
.field static final a:D = 1.2

.field static final b:I = 0x0

.field static final c:Ljava/lang/String; = "Android"

.field static final d:I

.field static final e:Lorg/json/JSONArray;

.field static f:Lorg/json/JSONObject;

.field static g:Lorg/json/JSONObject;

.field static h:Lorg/json/JSONObject;

.field static i:Lorg/json/JSONObject;

.field static j:Lorg/json/JSONObject;

.field static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->e:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->g:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    const-string v1, "td_pefercen_profile"

    const-string v2, "appkey"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ba;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    if-nez v2, :cond_30

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v3, "device"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ba;->d()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v3, "app"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ba;->e()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v3, "sdk"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ba;->g()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v3, "appContext"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ba;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v3, "ts"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4e} :catch_50

    move-result-object v0

    :goto_4f
    return-object v0

    :catch_50
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4f
.end method

.method static a()V
    .registers 5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "tid"

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_46

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "imei"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "imei"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_46
    const-string v0, "imeis"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "wifiMacs"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "adId"

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/i;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serialNo"

    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b0

    const-string v0, ""

    :goto_7e
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "manufacture"

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "brand"

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    invoke-static {}, Lcom/tendcloud/tenddata/game/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->g:Lorg/json/JSONObject;

    const-string v3, "hardwareConfig"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->g:Lorg/json/JSONObject;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_af
    return-void

    :cond_b0
    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->a()Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b3} :catch_b5

    move-result-object v0

    goto :goto_7e

    :catch_b5
    move-exception v0

    goto :goto_af
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    const-string v1, "subAccount"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    const-string v1, "push"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const/4 v0, 0x0

    goto :goto_21
.end method

.method static b()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "globalId"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "versionName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "versionCode"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "installTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->d(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "updateTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/c;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    const-string v1, "cert"

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    sget-object v3, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/ba;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aa;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7d} :catch_7e

    :goto_7d
    return-void

    :catch_7e
    move-exception v0

    goto :goto_7d
.end method

.method static c()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    const-string v1, "features"

    sget-object v2, Lcom/tendcloud/tenddata/game/ba;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    const-string v1, "minorVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    const-string v1, "build"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    const-string v1, "version"

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    goto :goto_2e
.end method

.method private static d()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static e()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static f()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static g()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ba;->j:Lorg/json/JSONObject;

    return-object v0
.end method
