###### Class com.tendcloud.tenddata.game.av (com.tendcloud.tenddata.game.av)
.class final Lcom/tendcloud/tenddata/game/av;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x64

.field static final b:I = 0xa

.field static final d:Ljava/lang/String; = "_id"

.field static final e:Ljava/lang/String; = "event_data"

.field static final f:Ljava/lang/String; = "event_hash_key"

.field static final g:Ljava/lang/String; = "normal_event"

.field static final h:Ljava/lang/String; = "exception_event"

.field static final i:Ljava/lang/String; = "CREATE TABLE normal_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT)"

.field static final j:Ljava/lang/String; = "CREATE TABLE exception_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT,event_hash_key TEXT)"


# instance fields
.field c:Lcom/tendcloud/tenddata/game/ar;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tendcloud/tenddata/game/ar;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/av;->c:Lcom/tendcloud/tenddata/game/ar;

    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/aq;)V
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/av;->c:Lcom/tendcloud/tenddata/game/ar;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/aq;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/aq;->run()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private b(Lcom/tendcloud/tenddata/game/aq;)V
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/av;->c:Lcom/tendcloud/tenddata/game/ar;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ar;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/aq;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/aq;->run()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()Ljava/util/List;
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/tendcloud/tenddata/game/ax;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ax;-><init>()V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/av;->b(Lcom/tendcloud/tenddata/game/aq;)V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ax;->a()Ljava/util/List;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/tendcloud/tenddata/game/bz;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/bz;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Save event data:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    if-nez v0, :cond_17

    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/bz;->f()Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v1, Lcom/tendcloud/tenddata/game/bk;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/bk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/av;->a(Lcom/tendcloud/tenddata/game/aq;)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    goto :goto_15

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    check-cast p1, Lcom/tendcloud/tenddata/game/cp;

    new-instance v1, Lcom/tendcloud/tenddata/game/bj;

    invoke-interface {p1}, Lcom/tendcloud/tenddata/game/cp;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tendcloud/tenddata/game/bj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/av;->a(Lcom/tendcloud/tenddata/game/aq;)V
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_26

    goto :goto_15
.end method

.method declared-synchronized a(Ljava/util/List;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Lcom/tendcloud/tenddata/game/as;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/as;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/av;->a(Lcom/tendcloud/tenddata/game/aq;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_9

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
