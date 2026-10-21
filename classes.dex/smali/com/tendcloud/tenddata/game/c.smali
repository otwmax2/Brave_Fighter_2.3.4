###### Class com.tendcloud.tenddata.game.c (com.tendcloud.tenddata.game.c)
.class public Lcom/tendcloud/tenddata/game/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/c;


# instance fields
.field private b:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/c;->a:Lcom/tendcloud/tenddata/game/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/c;
    .registers 2

    sget-object v0, Lcom/tendcloud/tenddata/game/c;->a:Lcom/tendcloud/tenddata/game/c;

    if-nez v0, :cond_13

    const-class v1, Lcom/tendcloud/tenddata/game/c;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/c;->a:Lcom/tendcloud/tenddata/game/c;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tendcloud/tenddata/game/c;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/c;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/c;->a:Lcom/tendcloud/tenddata/game/c;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tendcloud/tenddata/game/c;->a:Lcom/tendcloud/tenddata/game/c;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized i(Landroid/content/Context;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_18
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    :cond_15
    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public b(Landroid/content/Context;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_3

    :catch_f
    move-exception v1

    goto :goto_3
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, "unknown"

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "unknown"

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    :catch_13
    move-exception v0

    const-string v0, "unknown"

    goto :goto_4
.end method

.method public d(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_4

    :catch_18
    move-exception v2

    goto :goto_4
.end method

.method public e(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_4

    :catch_18
    move-exception v2

    goto :goto_4
.end method

.method public f(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_18

    move-result-wide v0

    goto :goto_4

    :catch_18
    move-exception v2

    goto :goto_4
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/c;->b:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_24} :catch_26

    move-result-object v0

    goto :goto_3

    :catch_26
    move-exception v1

    goto :goto_3
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/c;->i(Landroid/content/Context;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_3

    :catch_18
    move-exception v1

    goto :goto_3
.end method
