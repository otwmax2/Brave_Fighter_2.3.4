###### Class com.tendcloud.tenddata.game.j (com.tendcloud.tenddata.game.j)
.class public Lcom/tendcloud/tenddata/game/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/j$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x36ee80


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, ""

    const-string v2, "([0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    move-result v0

    :goto_24
    return v0

    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "alps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "sprd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "spreadtrum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "rockchip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "wondermedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "mtk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "mt65"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "nvidia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "brcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6c} :catch_71

    move-result v1

    if-eqz v1, :cond_70

    :cond_6f
    move-object p0, v0

    :cond_70
    :goto_70
    return-object p0

    :catch_71
    move-exception v1

    move-object p0, v0

    goto :goto_70
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_4
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "pm list packages"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_28} :catch_6e
    .catchall {:try_start_10 .. :try_end_28} :catchall_5f

    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_41} :catch_42
    .catchall {:try_start_28 .. :try_end_41} :catchall_6b

    goto :goto_28

    :catch_42
    move-exception v1

    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_6b

    if-eqz v2, :cond_8

    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_8

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_51
    :try_start_51
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_42
    .catchall {:try_start_51 .. :try_end_54} :catchall_6b

    if-eqz v2, :cond_8

    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_8

    :catch_5a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catchall_5f
    move-exception v0

    :goto_60
    if-eqz v3, :cond_65

    :try_start_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_66

    :cond_65
    :goto_65
    throw v0

    :catch_66
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_65

    :catchall_6b
    move-exception v0

    move-object v3, v2

    goto :goto_60

    :catch_6e
    move-exception v1

    move-object v2, v3

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "nfc-status"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/j;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "appsRegistedHCE"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/j;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ssMode"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/j;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v1

    :cond_4
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    move v1, v0

    goto :goto_3

    :cond_1b
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    goto :goto_19

    :cond_31
    const/4 v0, 0x2

    goto :goto_19

    :cond_33
    move v0, v1

    goto :goto_19
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_3a

    const/16 v2, 0x400

    :try_start_8
    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x400

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_11
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-eq v4, v5, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_39} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_39} :catch_3a

    :goto_39
    return-object v0

    :catch_3a
    move-exception v1

    goto :goto_39

    :catch_3c
    move-exception v1

    goto :goto_39
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    :goto_39
    return-object v0

    :catch_3a
    move-exception v0

    :cond_3b
    const-string v0, ""

    goto :goto_39
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/j;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_19

    array-length v6, v5

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v6, :cond_19

    aget-object v7, v5, v3

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_40

    const-string v8, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_40} :catch_45

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_43
    move-object v0, v2

    goto :goto_a

    :catch_45
    move-exception v0

    move-object v0, v1

    goto :goto_a
.end method

.method public static e()I
    .registers 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method private static e(Landroid/content/Context;)I
    .registers 4

    const/4 v1, -0x1

    const/16 v0, 0x13

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    const-string v2, "payment"

    invoke-virtual {v0, v2}, Landroid/nfc/cardemulation/CardEmulation;->getSelectionModeForCategory(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_20

    move-result v0

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    move v0, v1

    goto :goto_1f

    :cond_23
    move v0, v1

    goto :goto_1f
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_26

    const-string v0, ""

    :cond_26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v0

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    const-string v0, ""

    goto :goto_37
.end method

.method public static g()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()[Ljava/lang/String;
    .registers 12

    const/4 v4, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v5, v4, [Ljava/lang/String;

    move v0, v2

    :goto_7
    if-ge v0, v4, :cond_10

    const-string v3, ""

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_15
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/proc/cpuinfo"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x400

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_8a

    :goto_23
    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_2d
    .catchall {:try_start_23 .. :try_end_2c} :catchall_82

    goto :goto_23

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_34} :catch_8a

    move v0, v2

    :goto_35
    new-array v7, v11, [Ljava/lang/String;

    const-string v3, "Processor\\s*:\\s*(.*)"

    aput-object v3, v7, v2

    const-string v3, "CPU\\s*variant\\s*:\\s*0x(.*)"

    aput-object v3, v7, v1

    const/4 v3, 0x2

    const-string v4, "Hardware\\s*:\\s*(.*)"

    aput-object v4, v7, v3

    if-eqz v0, :cond_91

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v4, v2

    :goto_4b
    if-ge v4, v11, :cond_91

    aget-object v0, v7, v4

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    move v3, v2

    :goto_54
    if-ge v3, v8, :cond_8d

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_70

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    :cond_70
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_54

    :cond_74
    :try_start_74
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7c
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7a} :catch_9a

    move v0, v1

    goto :goto_35

    :catch_7c
    move-exception v0

    move v0, v1

    goto :goto_35

    :catch_7f
    move-exception v0

    move v0, v2

    goto :goto_35

    :catchall_82
    move-exception v0

    :try_start_83
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_89} :catch_9d
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_89} :catch_8a

    :goto_89
    :try_start_89
    throw v0
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v0

    move v0, v2

    goto :goto_35

    :cond_8d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4b

    :cond_91
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    return-object v5

    :catch_9a
    move-exception v0

    move v0, v1

    goto :goto_35

    :catch_9d
    move-exception v3

    goto :goto_89
.end method

.method public static l()[Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static m()[I
    .registers 7

    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v2, [I

    aput v0, v2, v0

    aput v0, v2, v1

    new-array v3, v6, [I

    move v1, v0

    :goto_d
    if-ge v1, v6, :cond_14

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v4, v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_22} :catch_5e

    :goto_22
    if-ge v0, v6, :cond_31

    :try_start_24
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/j;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_31
    const/4 v0, 0x0

    const/4 v5, 0x0

    aget v5, v3, v5

    aput v5, v2, v0

    const/4 v0, 0x1

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v3, v3, v6

    add-int/2addr v3, v5

    aput v3, v2, v0
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_45} :catch_4c
    .catchall {:try_start_24 .. :try_end_45} :catchall_56

    :try_start_45
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_62
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4b} :catch_5e

    :goto_4b
    return-object v2

    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_53} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_53} :catch_5e

    goto :goto_4b

    :catch_54
    move-exception v0

    goto :goto_4b

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5d} :catch_5e

    :goto_5d
    :try_start_5d
    throw v0
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception v0

    goto :goto_4b

    :catch_60
    move-exception v1

    goto :goto_5d

    :catch_62
    move-exception v0

    goto :goto_4b
.end method

.method public static n()[I
    .registers 5

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [I

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aput v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_5e

    :goto_5d
    return-object v0

    :catch_5e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public static o()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*([0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    move-result v0

    :cond_28
    :goto_28
    return v0

    :catch_29
    move-exception v1

    goto :goto_28
.end method

###### Class com.tendcloud.tenddata.game.j.a (com.tendcloud.tenddata.game.j$a)
.class public Lcom/tendcloud/tenddata/game/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
