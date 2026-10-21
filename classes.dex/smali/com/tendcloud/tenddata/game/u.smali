###### Class com.tendcloud.tenddata.game.u (com.tendcloud.tenddata.game.u)
.class public Lcom/tendcloud/tenddata/game/u;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a()Ljava/util/List;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_59

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_58

    move-result v5

    if-eqz v5, :cond_36

    :try_start_1c
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_5a
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_58

    move-result v4

    :try_start_24
    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    iget v6, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_39

    iget v6, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v7, 0x270f

    if-gt v6, v7, :cond_39

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_39
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    iget-object v5, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    invoke-direct {v5, v4}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_55} :catch_56

    goto :goto_36

    :catch_56
    move-exception v4

    goto :goto_36

    :catch_58
    move-exception v0

    :cond_59
    return-object v1

    :catch_5a
    move-exception v4

    goto :goto_36
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_5a

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_59

    move-result v5

    if-eqz v5, :cond_30

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_26} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_26} :catch_59

    move-result v4

    :try_start_27
    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    invoke-direct {v5, v4}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    iget-boolean v4, v5, Lcom/tendcloud/tenddata/game/a;->a:Z

    if-nez v4, :cond_33

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_33
    iget v4, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_3f

    iget v4, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v6, 0x270f

    if-le v4, v6, :cond_30

    :cond_3f
    iget-object v4, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_56} :catch_57

    goto :goto_30

    :catch_57
    move-exception v4

    goto :goto_30

    :catch_59
    move-exception v0

    :cond_5a
    return-object v1

    :catch_5b
    move-exception v4

    goto :goto_30
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_33

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    iget v5, v0, Lcom/tendcloud/tenddata/game/a;->d:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    iget v0, v0, Lcom/tendcloud/tenddata/game/a;->b:I

    iput v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_31
    move-object v0, v1

    :goto_32
    return-object v0

    :cond_33
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    goto :goto_32
.end method

.method public static b()Z
    .registers 4

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iget v3, v0, Lcom/tendcloud/tenddata/game/a;->d:I

    if-ne v3, v1, :cond_c

    iget-boolean v0, v0, Lcom/tendcloud/tenddata/game/a;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
