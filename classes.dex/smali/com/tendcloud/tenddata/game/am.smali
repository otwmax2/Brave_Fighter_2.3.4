###### Class com.tendcloud.tenddata.game.am (com.tendcloud.tenddata.game.am)
.class final Lcom/tendcloud/tenddata/game/am;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0xc

.field private static final b:I = 0x7

.field private static final c:I = 0x0

.field private static final d:I = 0x3

.field private static final e:I = 0x7

.field private static final f:I = 0x8

.field private static final g:I = 0x9

.field private static final h:I = 0xa

.field private static final i:I = 0xb


# instance fields
.field private j:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/am;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/tendcloud/tenddata/game/am;->j:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void
.end method

.method a(Lcom/tendcloud/tenddata/game/am;)V
    .registers 3

    iget v0, p1, Lcom/tendcloud/tenddata/game/am;->j:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return v0
.end method

.method c()V
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_16

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    goto :goto_8

    :cond_16
    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    goto :goto_8
.end method

.method d()V
    .registers 3

    const/4 v0, 0x7

    iget v1, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    if-ge v1, v0, :cond_8

    :goto_5
    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void

    :cond_8
    const/16 v0, 0xa

    goto :goto_5
.end method

.method e()V
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_a

    const/16 v0, 0x8

    :goto_7
    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void

    :cond_a
    const/16 v0, 0xb

    goto :goto_7
.end method

.method f()V
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_a

    const/16 v0, 0x9

    :goto_7
    iput v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    return-void

    :cond_a
    const/16 v0, 0xb

    goto :goto_7
.end method

.method g()Z
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/am;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
