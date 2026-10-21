###### Class com.tendcloud.tenddata.game.ah (com.tendcloud.tenddata.game.ah)
.class final Lcom/tendcloud/tenddata/game/ah;
.super Lcom/tendcloud/tenddata/game/ag;


# static fields
.field private static G:I

.field private static H:I


# instance fields
.field private I:Lcom/tendcloud/tenddata/game/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/tendcloud/tenddata/game/ah;->G:I

    const/16 v0, 0x110

    sput v0, Lcom/tendcloud/tenddata/game/ah;->H:I

    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/al;IIIIIII)V
    .registers 18

    new-instance v0, Lcom/tendcloud/tenddata/game/ad;

    sget v1, Lcom/tendcloud/tenddata/game/ah;->G:I

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Lcom/tendcloud/tenddata/game/ah;->H:I

    const/16 v5, 0x111

    move v1, p5

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ad;-><init>(IIIIII)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ag;-><init>(Lcom/tendcloud/tenddata/game/al;Lcom/tendcloud/tenddata/game/ad;IIIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    return-void
.end method

.method private a(II)Z
    .registers 4

    ushr-int/lit8 v0, p2, 0x7

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method a()I
    .registers 12

    const/4 v10, 0x4

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ah;->E:I

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ah;->g()Lcom/tendcloud/tenddata/game/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    :cond_f
    iput v1, p0, Lcom/tendcloud/tenddata/game/ah;->D:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->e()I

    move-result v0

    const/16 v1, 0x111

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v6, v9, :cond_21

    move v3, v4

    :goto_20
    return v3

    :cond_21
    move v1, v5

    move v0, v5

    move v2, v5

    :goto_24
    if-ge v1, v10, :cond_46

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ah;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->n:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7, v6}, Lcom/tendcloud/tenddata/game/ad;->b(II)I

    move-result v3

    if-ge v3, v9, :cond_35

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_35
    iget v7, p0, Lcom/tendcloud/tenddata/game/ah;->C:I

    if-lt v3, v7, :cond_41

    iput v1, p0, Lcom/tendcloud/tenddata/game/ah;->D:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ah;->c(I)V

    goto :goto_20

    :cond_41
    if-le v3, v2, :cond_32

    move v0, v1

    move v2, v3

    goto :goto_32

    :cond_46
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v1, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v1, :cond_155

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v3, v3, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v7, v7, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    iget v7, p0, Lcom/tendcloud/tenddata/game/ah;->C:I

    if-lt v3, v7, :cond_92

    add-int/lit8 v0, v1, 0x4

    iput v0, p0, Lcom/tendcloud/tenddata/game/ah;->D:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ah;->c(I)V

    goto :goto_20

    :cond_72
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v3, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v3, v3, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v7, v7, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :cond_92
    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v7, v7, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-le v7, v4, :cond_ba

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v7, v7, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v8, v8, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v8, v8, -0x2

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    if-ne v3, v7, :cond_ba

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v7, v7, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v8, v8, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v8, v8, -0x2

    aget v7, v7, v8

    invoke-direct {p0, v7, v1}, Lcom/tendcloud/tenddata/game/ah;->a(II)Z

    move-result v7

    if-nez v7, :cond_72

    :cond_ba
    if-ne v3, v9, :cond_c1

    const/16 v7, 0x80

    if-lt v1, v7, :cond_c1

    move v3, v4

    :cond_c1
    :goto_c1
    if-lt v2, v9, :cond_e2

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v3, :cond_d8

    add-int/lit8 v7, v2, 0x2

    if-lt v7, v3, :cond_cf

    const/16 v7, 0x200

    if-ge v1, v7, :cond_d8

    :cond_cf
    add-int/lit8 v7, v2, 0x3

    if-lt v7, v3, :cond_e2

    const v7, 0x8000

    if-lt v1, v7, :cond_e2

    :cond_d8
    iput v0, p0, Lcom/tendcloud/tenddata/game/ah;->D:I

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ah;->c(I)V

    move v3, v2

    goto/16 :goto_20

    :cond_e2
    if-lt v3, v9, :cond_e6

    if-gt v6, v9, :cond_e9

    :cond_e6
    move v3, v4

    goto/16 :goto_20

    :cond_e9
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ah;->g()Lcom/tendcloud/tenddata/game/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v0, v0, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v0, :cond_12f

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ah;->I:Lcom/tendcloud/tenddata/game/aj;

    iget v6, v6, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-lt v0, v3, :cond_111

    if-lt v2, v1, :cond_12c

    :cond_111
    add-int/lit8 v6, v3, 0x1

    if-ne v0, v6, :cond_11b

    invoke-direct {p0, v1, v2}, Lcom/tendcloud/tenddata/game/ah;->a(II)Z

    move-result v6

    if-eqz v6, :cond_12c

    :cond_11b
    add-int/lit8 v6, v3, 0x1

    if-gt v0, v6, :cond_12c

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_12f

    const/4 v0, 0x3

    if-lt v3, v0, :cond_12f

    invoke-direct {p0, v2, v1}, Lcom/tendcloud/tenddata/game/ah;->a(II)Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_12c
    move v3, v4

    goto/16 :goto_20

    :cond_12f
    add-int/lit8 v0, v3, -0x1

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v5

    :goto_136
    if-ge v0, v10, :cond_14a

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ah;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ah;->n:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6, v2}, Lcom/tendcloud/tenddata/game/ad;->b(II)I

    move-result v5

    if-ne v5, v2, :cond_147

    move v3, v4

    goto/16 :goto_20

    :cond_147
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_14a
    add-int/lit8 v0, v1, 0x4

    iput v0, p0, Lcom/tendcloud/tenddata/game/ah;->D:I

    add-int/lit8 v0, v3, -0x2

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ah;->c(I)V

    goto/16 :goto_20

    :cond_155
    move v1, v5

    move v3, v5

    goto/16 :goto_c1
.end method
