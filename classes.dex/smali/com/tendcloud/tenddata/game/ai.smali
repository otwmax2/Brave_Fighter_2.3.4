###### Class com.tendcloud.tenddata.game.ai (com.tendcloud.tenddata.game.ai)
.class final Lcom/tendcloud/tenddata/game/ai;
.super Lcom/tendcloud/tenddata/game/ag;


# static fields
.field static final synthetic G:Z

.field private static final H:I = 0x1000

.field private static I:I

.field private static J:I


# instance fields
.field private final K:[Lcom/tendcloud/tenddata/game/ak;

.field private L:I

.field private M:I

.field private N:Lcom/tendcloud/tenddata/game/aj;

.field private final O:[I

.field private final P:Lcom/tendcloud/tenddata/game/am;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x1000

    const-class v0, Lcom/tendcloud/tenddata/game/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ai;->G:Z

    sput v1, Lcom/tendcloud/tenddata/game/ai;->I:I

    sput v1, Lcom/tendcloud/tenddata/game/ai;->J:I

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/al;IIIIIII)V
    .registers 18

    new-instance v0, Lcom/tendcloud/tenddata/game/ad;

    sget v1, Lcom/tendcloud/tenddata/game/ai;->I:I

    invoke-static {p6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Lcom/tendcloud/tenddata/game/ai;->J:I

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

    const/16 v0, 0x1000

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/ak;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    new-instance v0, Lcom/tendcloud/tenddata/game/am;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/am;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    const/4 v0, 0x0

    :goto_39
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_49

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    new-instance v2, Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/ak;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_49
    return-void
.end method

.method private a(IIIII)V
    .registers 18

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-le v1, p3, :cond_36

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    :goto_13
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    aget v1, v1, v2

    if-ge v1, p3, :cond_28

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    goto :goto_13

    :cond_28
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v3, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    aput p3, v1, v3

    :cond_36
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move/from16 v0, p5

    if-ge v1, v0, :cond_47

    :goto_46
    return-void

    :cond_47
    :goto_47
    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v4, v4, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_68

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ak;->a()V

    goto :goto_47

    :cond_68
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    move/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ai;->a(ILcom/tendcloud/tenddata/game/am;)I

    move-result v8

    const/4 v1, 0x0

    :goto_77
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aget v2, v2, v1

    move/from16 v0, p5

    if-le v0, v2, :cond_84

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_84
    move v7, v1

    :goto_85
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->b:[I

    aget v9, v1, v7

    move/from16 v0, p5

    invoke-virtual {p0, v8, v9, v0, p2}, Lcom/tendcloud/tenddata/game/ai;->a(IIII)I

    move-result v10

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int v2, v2, p5

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v10, v1, :cond_ac

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int v2, v2, p5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v3, v9, 0x4

    invoke-virtual {v1, v10, v2, v3}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    :cond_ac
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aget v1, v1, v7

    move/from16 v0, p5

    if-eq v0, v1, :cond_bb

    move v1, v7

    :cond_b7
    add-int/lit8 p5, p5, 0x1

    move v7, v1

    goto :goto_85

    :cond_bb
    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    sub-int v2, p3, p5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    add-int/lit8 v3, p5, 0x1

    invoke-virtual {v2, v3, v9, v1}, Lcom/tendcloud/tenddata/game/ad;->a(III)I

    move-result v11

    const/4 v1, 0x2

    if-lt v11, v1, :cond_149

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->d()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-virtual {v1, v0, v2}, Lcom/tendcloud/tenddata/game/ad;->a(II)I

    move-result v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v4, 0x1

    move/from16 v0, p5

    invoke-virtual {v1, v0, v4}, Lcom/tendcloud/tenddata/game/ad;->a(II)I

    move-result v4

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->z:Lcom/tendcloud/tenddata/game/ag$b;

    add-int v5, p1, p5

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ag$b;->a(IIIILcom/tendcloud/tenddata/game/am;)I

    move-result v1

    add-int/2addr v1, v10

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/am;->c()V

    add-int v2, p1, p5

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->m:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v3, v11, v4, v2}, Lcom/tendcloud/tenddata/game/ai;->b(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int v1, v1, p5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    :goto_121
    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v3, v1, :cond_133

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ak;->a()V

    goto :goto_121

    :cond_133
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v2, v3, :cond_149

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v3, v1

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v4, v9, 0x4

    const/4 v6, 0x0

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ak;->a(IIIII)V

    :cond_149
    add-int/lit8 v1, v7, 0x1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-ne v1, v2, :cond_b7

    goto/16 :goto_46
.end method

.method private b(IIII)V
    .registers 15

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0, v7}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v3

    iget v8, v0, Lcom/tendcloud/tenddata/game/ak;->c:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->z:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v3, v6}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v4, v4, v5

    iget-object v5, v4, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ag$b;->a(IIIILcom/tendcloud/tenddata/game/am;)I

    move-result v0

    add-int v3, v8, v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v4, v4, 0x1

    aget-object v0, v0, v4

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v3, v0, :cond_fe

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v4, v4, 0x1

    aget-object v0, v0, v4

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    move v0, v6

    :goto_55
    if-ne v2, v1, :cond_97

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/tendcloud/tenddata/game/ak;->d:I

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    if-eq v4, v5, :cond_71

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/tendcloud/tenddata/game/ak;->e:I

    if-eqz v4, :cond_97

    :cond_71
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, p4, v4, p2}, Lcom/tendcloud/tenddata/game/ai;->a(ILcom/tendcloud/tenddata/game/am;I)I

    move-result v4

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v8, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v8, v8, 0x1

    aget-object v5, v5, v8

    iget v5, v5, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-gt v4, v5, :cond_97

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v5, v5, 0x1

    aget-object v0, v0, v5

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    invoke-virtual {v0, v4, v5, v7}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    move v0, v6

    :cond_97
    if-nez v0, :cond_fd

    if-eq v2, v1, :cond_fd

    if-le p3, v9, :cond_fd

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v2, v2, v7

    invoke-virtual {v1, v6, v2, v0}, Lcom/tendcloud/tenddata/game/ad;->a(III)I

    move-result v0

    if-lt v0, v9, :cond_fd

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->c()V

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->m:I

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v7, v0, v2, v1}, Lcom/tendcloud/tenddata/game/ai;->b(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v1

    add-int/2addr v1, v3

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_da
    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v2, v0, :cond_ec

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ak;->a()V

    goto :goto_da

    :cond_ec
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v1, v2, :cond_fd

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v2, v0

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    invoke-virtual {v0, v1, v2, v7}, Lcom/tendcloud/tenddata/game/ak;->b(III)V

    :cond_fd
    return-void

    :cond_fe
    move v0, v7

    goto/16 :goto_55
.end method

.method private c(IIII)I
    .registers 18

    const/4 v7, 0x2

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    move/from16 v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v1, 0x0

    move v9, v1

    move v1, v7

    :goto_c
    const/4 v2, 0x4

    if-ge v9, v2, :cond_110

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3, v10}, Lcom/tendcloud/tenddata/game/ad;->b(II)I

    move-result v8

    const/4 v2, 0x2

    if-ge v8, v2, :cond_28

    move v7, v1

    :cond_23
    :goto_23
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v1, v7

    goto :goto_c

    :cond_28
    :goto_28
    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/2addr v3, v8

    if-ge v2, v3, :cond_3d

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ak;->a()V

    goto :goto_28

    :cond_3d
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    move/from16 v0, p4

    invoke-virtual {p0, v0, v9, v2, p2}, Lcom/tendcloud/tenddata/game/ai;->a(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v3

    move v2, v8

    :goto_4c
    const/4 v4, 0x2

    if-lt v2, v4, :cond_70

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v4, v2, p2}, Lcom/tendcloud/tenddata/game/ag$a;->b(II)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v6, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    iget v5, v5, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v4, v5, :cond_6d

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v6, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    iget v6, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    :cond_6d
    add-int/lit8 v2, v2, -0x1

    goto :goto_4c

    :cond_70
    if-nez v9, :cond_111

    add-int/lit8 v1, v8, 0x1

    move v7, v1

    :goto_75
    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    sub-int v2, p3, v8

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    add-int/lit8 v4, v8, 0x1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v6, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v5, v5, v9

    invoke-virtual {v2, v4, v5, v1}, Lcom/tendcloud/tenddata/game/ad;->a(III)I

    move-result v11

    const/4 v1, 0x2

    if-lt v11, v1, :cond_23

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v1, v8, p2}, Lcom/tendcloud/tenddata/game/ag$a;->b(II)I

    move-result v1

    add-int v12, v3, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->e()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/tendcloud/tenddata/game/ad;->a(II)I

    move-result v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    const/4 v4, 0x1

    invoke-virtual {v1, v8, v4}, Lcom/tendcloud/tenddata/game/ad;->a(II)I

    move-result v4

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->z:Lcom/tendcloud/tenddata/game/ag$b;

    add-int v5, p1, v8

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ag$b;->a(IIIILcom/tendcloud/tenddata/game/am;)I

    move-result v1

    add-int/2addr v1, v12

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/am;->c()V

    add-int v2, p1, v8

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->m:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->P:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v3, v11, v4, v2}, Lcom/tendcloud/tenddata/game/ai;->b(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    :goto_e8
    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v3, v1, :cond_fa

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ak;->a()V

    goto :goto_e8

    :cond_fa
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v3, v1

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    const/4 v6, 0x0

    move v4, v9

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ak;->a(IIIII)V

    goto/16 :goto_23

    :cond_110
    return v1

    :cond_111
    move v7, v1

    goto/16 :goto_75
.end method

.method private i()I
    .registers 5

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    :cond_c
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v1, v2

    iget-boolean v1, v2, Lcom/tendcloud/tenddata/game/ak;->f:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iput v3, v1, Lcom/tendcloud/tenddata/game/ak;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    iput v3, v1, Lcom/tendcloud/tenddata/game/ak;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget-boolean v0, v2, Lcom/tendcloud/tenddata/game/ak;->g:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v1

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v1

    iget v3, v2, Lcom/tendcloud/tenddata/game/ak;->i:I

    iput v3, v0, Lcom/tendcloud/tenddata/game/ak;->e:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget v0, v2, Lcom/tendcloud/tenddata/game/ak;->h:I

    move v1, v0

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iput v3, v2, Lcom/tendcloud/tenddata/game/ak;->d:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    if-gtz v1, :cond_c

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->e:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    return v0

    :cond_6c
    move v1, v0

    goto :goto_42
.end method

.method private j()V
    .registers 9

    const/4 v1, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    sget-boolean v2, Lcom/tendcloud/tenddata/game/ai;->G:Z

    if-nez v2, :cond_19

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    if-lt v0, v2, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/tendcloud/tenddata/game/ak;->f:Z

    if-eqz v2, :cond_ab

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/tendcloud/tenddata/game/ak;->g:Z

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/tendcloud/tenddata/game/ak;->h:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/tendcloud/tenddata/game/ak;->i:I

    if-ge v2, v7, :cond_8d

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/am;->e()V

    :goto_5d
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/am;->c()V

    :goto_68
    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_f0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/ai;->G:Z

    if-nez v1, :cond_bd

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->e:I

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_bd

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8d
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/am;->d()V

    goto :goto_5d

    :cond_99
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    goto :goto_5d

    :cond_ab
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    goto :goto_68

    :cond_bd
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->e:I

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->f()V

    :goto_d2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->b:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->b:[I

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e3
    :goto_e3
    return-void

    :cond_e4
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->c()V

    goto :goto_d2

    :cond_f0
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/tendcloud/tenddata/game/ak;->f:Z

    if-eqz v2, :cond_14f

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/tendcloud/tenddata/game/ak;->g:Z

    if-eqz v2, :cond_14f

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v2

    iget v2, v0, Lcom/tendcloud/tenddata/game/ak;->h:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v3

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->i:I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/am;->e()V

    move v3, v2

    move v2, v0

    :goto_121
    if-ge v2, v7, :cond_18a

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->b:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v4, v4, v2

    aput v4, v0, v6

    move v0, v1

    :goto_136
    if-gt v0, v2, :cond_173

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->b:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/ak;->b:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_14f
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/tendcloud/tenddata/game/ak;->e:I

    if-ge v2, v7, :cond_166

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/am;->e()V

    move v3, v0

    goto :goto_121

    :cond_166
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/am;->d()V

    move v3, v0

    goto :goto_121

    :cond_173
    :goto_173
    if-ge v0, v7, :cond_e3

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->b:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->b:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_173

    :cond_18a
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->b:[I

    add-int/lit8 v2, v2, -0x4

    aput v2, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->b:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ak;->b:[I

    const/4 v3, 0x3

    invoke-static {v0, v6, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e3
.end method


# virtual methods
.method a()I
    .registers 15

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v8, 0x0

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v0, v1, :cond_2b

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->d:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->e:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    :goto_2a
    return v0

    :cond_2b
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ai;->G:Z

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-eq v0, v1, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3b
    iput v8, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iput v8, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    iput v12, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->E:I

    if-ne v0, v12, :cond_4b

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ai;->g()Lcom/tendcloud/tenddata/game/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    :cond_4b
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->e()I

    move-result v0

    const/16 v1, 0x111

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v2, v11, :cond_5b

    move v0, v9

    goto :goto_2a

    :cond_5b
    move v1, v8

    move v6, v8

    :goto_5d
    if-ge v1, v13, :cond_88

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->n:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4, v2}, Lcom/tendcloud/tenddata/game/ad;->b(II)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v1

    if-ge v0, v11, :cond_7c

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aput v8, v0, v1

    move v0, v6

    :goto_78
    add-int/lit8 v1, v1, 0x1

    move v6, v0

    goto :goto_5d

    :cond_7c
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v3, v3, v6

    if-le v0, v3, :cond_274

    move v0, v1

    goto :goto_78

    :cond_88
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v6

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    if-lt v0, v1, :cond_a0

    iput v6, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ai;->c(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v6

    goto :goto_2a

    :cond_a0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v0, v0, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v0, :cond_271

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v1, v1, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    if-lt v0, v2, :cond_cd

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/game/ai;->c(I)V

    goto/16 :goto_2a

    :cond_cd
    move v7, v0

    :goto_ce
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0, v8}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->n:[I

    aget v2, v2, v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v2

    if-ge v7, v11, :cond_ed

    if-eq v1, v2, :cond_ed

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v6

    if-ge v0, v11, :cond_ed

    move v0, v9

    goto/16 :goto_2a

    :cond_ed
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->f()I

    move-result v4

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->m:I

    and-int v10, v4, v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0, v9}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->z:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ag$b;->a(IIIILcom/tendcloud/tenddata/game/am;)I

    move-result v0

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v8, v12}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v0, v10}, Lcom/tendcloud/tenddata/game/ai;->a(Lcom/tendcloud/tenddata/game/am;I)I

    move-result v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v3, v0}, Lcom/tendcloud/tenddata/game/ai;->b(ILcom/tendcloud/tenddata/game/am;)I

    move-result v5

    if-ne v2, v1, :cond_12f

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v5, v0, v10}, Lcom/tendcloud/tenddata/game/ai;->a(ILcom/tendcloud/tenddata/game/am;I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v0, v1, :cond_12f

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v9

    invoke-virtual {v1, v0, v8, v8}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    :cond_12f
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v0, v11, :cond_158

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ai;->G:Z

    if-nez v0, :cond_14d

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-eqz v0, :cond_14d

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_14d
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->e:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->D:I

    move v0, v9

    goto/16 :goto_2a

    :cond_158
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ai;->h()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/am;->a(Lcom/tendcloud/tenddata/game/am;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->n:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ak;->b:[I

    invoke-static {v0, v8, v1, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    :goto_173
    if-lt v0, v11, :cond_17f

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ak;->a()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_173

    :cond_17f
    move v1, v8

    :goto_180
    if-ge v1, v13, :cond_1ad

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v1

    if-ge v0, v11, :cond_18c

    :goto_188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_180

    :cond_18c
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v5, v1, v2, v10}, Lcom/tendcloud/tenddata/game/ai;->a(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v2

    :cond_192
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ai;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v6, v0, v10}, Lcom/tendcloud/tenddata/game/ag$a;->b(II)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v6, v9, :cond_1a8

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v9, v9, v0

    invoke-virtual {v9, v6, v8, v1}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    :cond_1a8
    add-int/lit8 v0, v0, -0x1

    if-ge v0, v11, :cond_192

    goto :goto_188

    :cond_1ad
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->O:[I

    aget v0, v0, v8

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v1, v7, :cond_1f8

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v3, v0}, Lcom/tendcloud/tenddata/game/ai;->a(ILcom/tendcloud/tenddata/game/am;)I

    move-result v2

    move v0, v8

    :goto_1c0
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aget v3, v3, v0

    if-le v1, v3, :cond_1cd

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c0

    :cond_1cb
    add-int/lit8 v1, v1, 0x1

    :cond_1cd
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/aj;->b:[I

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3, v1, v10}, Lcom/tendcloud/tenddata/game/ai;->a(IIII)I

    move-result v5

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/tendcloud/tenddata/game/ak;->c:I

    if-ge v5, v6, :cond_1e8

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    aget-object v6, v6, v1

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v6, v5, v8, v3}, Lcom/tendcloud/tenddata/game/ak;->a(III)V

    :cond_1e8
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aget v3, v3, v0

    if-ne v1, v3, :cond_1cb

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v3, v3, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-ne v0, v3, :cond_1cb

    :cond_1f8
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->e()I

    move-result v0

    const/16 v1, 0xfff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v4

    :cond_205
    :goto_205
    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    if-ge v0, v2, :cond_22b

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ai;->g()Lcom/tendcloud/tenddata/game/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v0, v0, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v0, :cond_231

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v2, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/tendcloud/tenddata/game/ai;->C:I

    if-lt v0, v2, :cond_231

    :cond_22b
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ai;->i()I

    move-result v0

    goto/16 :goto_2a

    :cond_231
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lcom/tendcloud/tenddata/game/ai;->m:I

    and-int v2, v1, v0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ai;->j()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v4

    iget v0, v0, Lcom/tendcloud/tenddata/game/ak;->c:I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v4, v2}, Lcom/tendcloud/tenddata/game/ai;->a(Lcom/tendcloud/tenddata/game/am;I)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->K:[Lcom/tendcloud/tenddata/game/ak;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ak;->a:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {p0, v4, v0}, Lcom/tendcloud/tenddata/game/ai;->b(ILcom/tendcloud/tenddata/game/am;)I

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/tendcloud/tenddata/game/ai;->b(IIII)V

    if-lt v3, v11, :cond_205

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/tendcloud/tenddata/game/ai;->c(IIII)I

    move-result v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ai;->N:Lcom/tendcloud/tenddata/game/aj;

    iget v0, v0, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v0, :cond_205

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ai;->a(IIIII)V

    goto :goto_205

    :cond_271
    move v7, v8

    goto/16 :goto_ce

    :cond_274
    move v0, v6

    goto/16 :goto_78
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->L:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ai;->M:I

    invoke-super {p0}, Lcom/tendcloud/tenddata/game/ag;->c()V

    return-void
.end method
