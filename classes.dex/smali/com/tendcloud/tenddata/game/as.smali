###### Class com.tendcloud.tenddata.game.as (com.tendcloud.tenddata.game.as)
.class Lcom/tendcloud/tenddata/game/as;
.super Lcom/tendcloud/tenddata/game/aq;


# static fields
.field private static final b:I = -0x1


# instance fields
.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/aq;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/util/List;

    return-void
.end method

.method private a(Z)I
    .registers 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ap;

    iget v3, v0, Lcom/tendcloud/tenddata/game/ap;->a:I

    if-le v3, v1, :cond_1d

    iget v0, v0, Lcom/tendcloud/tenddata/game/ap;->a:I

    :goto_1a
    move v1, v0

    goto :goto_8

    :cond_1c
    return v1

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method private a()V
    .registers 4

    const/4 v2, -0x1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/as;->a(Z)I

    move-result v0

    if-eq v0, v2, :cond_d

    const-string v1, "normal_event"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/as;->a(ILjava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/as;->a(Z)I

    move-result v0

    if-eq v0, v2, :cond_19

    const-string v1, "exception_event"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/as;->a(ILjava/lang/String;)V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_id<=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/as;->c:Ljava/util/List;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/as;->a()V

    goto :goto_4
.end method
