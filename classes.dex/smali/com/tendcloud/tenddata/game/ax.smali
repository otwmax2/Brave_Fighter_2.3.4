###### Class com.tendcloud.tenddata.game.ax (com.tendcloud.tenddata.game.ax)
.class Lcom/tendcloud/tenddata/game/ax;
.super Lcom/tendcloud/tenddata/game/aq;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/aq;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 13

    const/4 v9, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ax;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_4b

    move-result-object v1

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_19
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/tendcloud/tenddata/game/ap;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/tendcloud/tenddata/game/ap;->a:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/ap;->b:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/ap;->c:Z

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ax;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3e

    goto :goto_19

    :catchall_3e
    move-exception v0

    :goto_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    :cond_45
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    return-void

    :catchall_4b
    move-exception v0

    move-object v1, v9

    goto :goto_3f
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ax;->b:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ax;->b:Ljava/util/List;

    const-string v0, "normal_event"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ax;->a(Ljava/lang/String;I)V

    const-string v0, "exception_event"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ax;->a(Ljava/lang/String;I)V

    return-void
.end method
