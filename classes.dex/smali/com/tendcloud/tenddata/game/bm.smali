###### Class com.tendcloud.tenddata.game.bm (com.tendcloud.tenddata.game.bm)
.class public final Lcom/tendcloud/tenddata/game/bm;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Random; = null

.field private static b:Landroid/os/Handler; = null

.field private static final c:I = 0x1d4c0

.field private static final d:I = 0x1b7740

.field private static final e:I = 0xbb8

.field private static final f:I = 0xbb8

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unknow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Loop"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Resume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Pause"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Right Now"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->k:[Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/game/bn;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bn;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    const v0, 0x1d4c0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_1b

    const-string v0, "TDGA"

    const-string v1, "init NORMAL_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const v0, 0x1b7740

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_1b

    const-string v0, "TDGA"

    const-string v1, "init SERVICE_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method static synthetic a(I)V
    .registers 1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bm;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static b()V
    .registers 4

    const v0, 0x1d4c0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static declared-synchronized b(I)V
    .registers 7

    const-class v1, Lcom/tendcloud/tenddata/game/bm;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v4, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v4, :cond_22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_42

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_41
    return v0

    :catch_42
    move-exception v0

    :cond_43
    move v0, v1

    goto :goto_41
.end method

.method static c()V
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static d()V
    .registers 2

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static e()V
    .registers 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v0, 0x3b6

    if-lt v1, v4, :cond_14

    const/4 v2, 0x6

    if-gt v1, v2, :cond_14

    const/16 v0, 0xc8

    :cond_14
    sget-object v1, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v1, v0, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "loc"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "net"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/o;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_65

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/z;->f(Landroid/content/Context;)[[Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ruas"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ras"

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    const-string v1, "__tx.env"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1e
.end method

.method static synthetic f()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()V
    .registers 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->h()V

    return-void
.end method

.method private static h()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Network is not connected!"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_a3
    .catchall {:try_start_1 .. :try_end_14} :catchall_d2

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    :try_start_18
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TalkingDataGA.sContext is null..."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_27} :catch_a3
    .catchall {:try_start_18 .. :try_end_27} :catchall_d2

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto :goto_17

    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/tendcloud/tenddata/game/ay;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/ay;-><init>()V

    const-string v3, ""

    if-nez v0, :cond_40

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/o;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9a

    :cond_40
    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->b(Ljava/util/List;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success post:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :cond_77
    :goto_77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_93} :catch_a3
    .catchall {:try_start_2b .. :try_end_93} :catchall_d2

    if-nez v1, :cond_17

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_17

    :cond_9a
    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_17

    :cond_9f
    :try_start_9f
    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->c(Ljava/util/List;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_d2

    goto :goto_77

    :catch_a3
    move-exception v0

    const/4 v2, 0x1

    :try_start_a5
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_cb

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_a5 .. :try_end_cb} :catchall_d2

    :cond_cb
    if-nez v1, :cond_17

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_17

    :catchall_d2
    move-exception v0

    if-nez v1, :cond_d8

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    :cond_d8
    throw v0
.end method
