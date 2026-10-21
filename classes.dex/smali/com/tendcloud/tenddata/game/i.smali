###### Class com.tendcloud.tenddata.game.i (com.tendcloud.tenddata.game.i)
.class public Lcom/tendcloud/tenddata/game/i;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/telephony/TelephonyManager; = null

.field static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "pref.deviceid.key"

.field private static final d:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/lang/String; = ".tcookieid"

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->e:Ljava/util/regex/Pattern;

    const-string v0, "[0-3][0-9a-f]{24,32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->f:Ljava/util/regex/Pattern;

    const-string v0, "[0-3][0-9a-f]{32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->g:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x9

    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz p1, :cond_5a

    const-string v0, ".tcookieid"

    :goto_28
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".tid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".tcookieid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_72
    const-string v0, ""

    goto :goto_11
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_11

    array-length v0, v3

    if-nez v0, :cond_12

    :cond_11
    return-void

    :cond_12
    array-length v4, v3

    move v2, v1

    :goto_14
    if-ge v2, v4, :cond_11

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, "/sdcard"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ".tcookieid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5c

    new-instance v5, Ljava/io/File;

    const-string v6, ".tcookieid"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_a7

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_68
    if-ge v0, v6, :cond_a7

    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_a4

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ".tcookieid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a4

    new-instance v8, Ljava/io/File;

    const-string v9, ".tcookieid"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, p1}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_a7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_14
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz p2, :cond_11

    const-string v0, ".tcookieid"

    :goto_a
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".tcookieid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setReadable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_44
    return-void

    :cond_45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 444 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_63} :catch_64

    goto :goto_44

    :catch_64
    move-exception v0

    goto :goto_44
.end method

.method static b()Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_12

    array-length v1, v4

    if-nez v1, :cond_13

    :cond_12
    return-object v0

    :cond_13
    array-length v5, v4

    move v1, v2

    :goto_15
    if-ge v1, v5, :cond_12

    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6c

    const-string v6, "/sdcard"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v0, Ljava/io/File;

    const-string v6, ".tcookieid"

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_42
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_4e
    if-ge v3, v7, :cond_6c

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_69

    new-instance v0, Ljava/io/File;

    const-string v9, ".tcookieid"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/tendcloud/tenddata/game/i;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tendcloud/tenddata/game/i;->b:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->b:Ljava/lang/String;

    :cond_d
    sget-object v0, Lcom/tendcloud/tenddata/game/i;->b:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "tdid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref.deviceid.key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method static c()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9

    :try_start_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-class v0, Landroid/os/Environment;

    const-string v3, "isExternalStorageRemovable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_26

    move-result v0

    :goto_23
    if-nez v0, :cond_29

    :goto_25
    return v1

    :catch_26
    move-exception v0

    move v0, v1

    goto :goto_23

    :cond_29
    move v1, v2

    goto :goto_25

    :cond_2b
    move v0, v1

    goto :goto_23
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const/16 v0, 0x17

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_22

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;)V

    :cond_22
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/o;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_46

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_49

    const/4 v2, 0x1

    :try_start_30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_43
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_39} :catch_46

    move-result-object v0

    :goto_3a
    if-nez v0, :cond_12

    :try_start_3c
    sget-object v0, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_41} :catch_46

    move-result-object v0

    goto :goto_12

    :catch_43
    move-exception v0

    move-object v0, v1

    goto :goto_3a

    :catch_46
    move-exception v0

    :cond_47
    move-object v0, v1

    goto :goto_12

    :cond_49
    move-object v0, v1

    goto :goto_3a
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x17

    :try_start_3
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_21

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;)V

    :cond_21
    sget-object v1, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_11

    :catch_28
    move-exception v1

    goto :goto_11
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x17

    :try_start_3
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_21

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;)V

    :cond_21
    sget-object v1, Lcom/tendcloud/tenddata/game/i;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_11

    :catch_28
    move-exception v1

    goto :goto_11
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/tendcloud/tenddata/game/aa;->b:Z

    if-nez v0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_47

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/tendcloud/tenddata/game/i;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_41} :catch_4a

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    move-object v0, v1

    :cond_45
    :goto_45
    move-object v1, v0

    goto :goto_5

    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_45

    :catch_4a
    move-exception v1

    goto :goto_45

    :cond_4c
    move-object v0, v1

    goto :goto_45
.end method

.method public static final h(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_38} :catch_39

    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_38
.end method

.method public static final i(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const-string v0, "tdid"

    const-string v1, "pref.deviceid.key"

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref.deviceid.key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/tendcloud/tenddata/game/i;->i:Ljava/lang/String;

    if-nez v0, :cond_3a

    :try_start_4
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [Landroid/hardware/Sensor;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    array-length v4, v1

    if-ge v3, v4, :cond_19

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ltz v3, :cond_19

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    aput-object v0, v1, v3
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_19

    :catch_39
    move-exception v0

    :cond_3a
    :goto_3a
    sget-object v0, Lcom/tendcloud/tenddata/game/i;->i:Ljava/lang/String;

    return-object v0

    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_43
    array-length v3, v1

    if-ge v0, v3, :cond_86

    aget-object v3, v1, v0

    if-eqz v3, :cond_83

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_86
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/i;->i:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_94} :catch_39

    goto :goto_3a
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tendcloud/tenddata/game/i;->c()Z

    move-result v6

    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    aput-object v4, v8, v2

    const/4 v0, 0x1

    aput-object v5, v8, v0

    const/4 v0, 0x2

    aput-object v7, v8, v0

    const/4 v1, 0x0

    array-length v9, v8

    move v3, v2

    :goto_1f
    if-ge v3, v9, :cond_94

    aget-object v0, v8, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8c

    sget-object v10, Lcom/tendcloud/tenddata/game/i;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_8c

    :goto_35
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v1, v10, v12

    if-gez v1, :cond_66

    array-length v3, v8

    :goto_4f
    if-ge v2, v3, :cond_66

    aget-object v1, v8, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_90

    sget-object v9, Lcom/tendcloud/tenddata/game/i;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_90

    move-object v0, v1

    :cond_66
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_70
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_79
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-static {p0, v0, v6}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_82
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8b
    return-object v0

    :cond_8c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    :cond_90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4f

    :cond_94
    move-object v0, v1

    goto :goto_35
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
