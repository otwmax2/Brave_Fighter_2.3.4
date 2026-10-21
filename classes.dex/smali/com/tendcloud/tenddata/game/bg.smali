###### Class com.tendcloud.tenddata.game.bg (com.tendcloud.tenddata.game.bg)
.class final Lcom/tendcloud/tenddata/game/bg;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tendcloud/tenddata/game/m; = null

.field static b:Ljava/lang/String; = null

.field static c:Ljava/lang/String; = null

.field static d:[B = null

.field static final e:Ljava/lang/String; = "pref_file"

.field static final f:Ljava/lang/String; = "pref.accountid.key"

.field static g:Landroid/content/SharedPreferences; = null

.field private static final h:Ljava/lang/String; = "LAST_SENT_PUSH_TIME"

.field private static final i:Ljava/lang/String; = "appcontext_push"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "td_database_push"

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/String;

    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->c:Ljava/lang/String;

    :try_start_8
    new-instance v0, Lcom/tendcloud/tenddata/game/m;

    sget-object v1, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    const-string v1, "talkingdata_file_prefence"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->d:[B

    :cond_34
    :goto_34
    return-void

    :cond_35
    const-class v0, Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->d:[B
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_41} :catch_42

    goto :goto_34

    :catch_42
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "pref_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref.accountid.key"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized a()Ljava/util/List;
    .registers 6

    const-class v2, Lcom/tendcloud/tenddata/game/bg;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/tendcloud/tenddata/game/m;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_46
    .catchall {:try_start_4 .. :try_end_17} :catchall_43

    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v4, Lcom/tendcloud/tenddata/game/bg;->d:[B

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/aa;->c([B[B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_35} :catch_36
    .catchall {:try_start_17 .. :try_end_35} :catchall_43

    goto :goto_1b

    :catch_36
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3a
    :try_start_3a
    sget-boolean v3, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_43

    :cond_41
    :goto_41
    monitor-exit v2

    return-object v0

    :catchall_43
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_46
    move-exception v1

    goto :goto_3a

    :cond_48
    move-object v0, v1

    goto :goto_41
.end method

.method static a(J)V
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SENT_PUSH_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-class v2, Lcom/tendcloud/tenddata/game/bg;

    monitor-enter v2

    if-eqz p0, :cond_c

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_15

    :cond_c
    const-string v1, "TDGA"

    const-string v3, "PushStoreManager storeMessage()# message is null or empty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_34

    :cond_13
    :goto_13
    monitor-exit v2

    return v0

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v3, Lcom/tendcloud/tenddata/game/bg;->d:[B

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/aa;->b([B[B)[B

    move-result-object v1

    sget-object v3, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v3, v1}, Lcom/tendcloud/tenddata/game/m;->a([B)V

    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/m;->b()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_29} :catch_2b
    .catchall {:try_start_15 .. :try_end_29} :catchall_34

    const/4 v0, 0x1

    goto :goto_13

    :catch_2b
    move-exception v1

    :try_start_2c
    sget-boolean v3, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_13

    :catchall_34
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static b()V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/m;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method static b(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appcontext_push"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static c()V
    .registers 0

    return-void
.end method

.method static d()Ljava/lang/Long;
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    const-string v1, "LAST_SENT_PUSH_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    const-string v1, "appcontext_push"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
