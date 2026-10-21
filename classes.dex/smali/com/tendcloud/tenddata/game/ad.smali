###### Class com.tendcloud.tenddata.game.ad (com.tendcloud.tenddata.game.ad)
.class final Lcom/tendcloud/tenddata/game/ad;
.super Ljava/lang/Object;


# static fields
.field static final synthetic e:Z


# instance fields
.field final a:I

.field final b:I

.field final c:[B

.field d:I

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Lcom/tendcloud/tenddata/game/ae;

.field private final m:[I

.field private final n:Lcom/tendcloud/tenddata/game/aj;

.field private final o:I

.field private final p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(IIIIII)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/game/ad;->i:Z

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    invoke-static {p1, p2, p3, p5}, Lcom/tendcloud/tenddata/game/ad;->a(IIII)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    add-int v0, p2, p1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->f:I

    add-int v0, p3, p5

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->g:I

    iput p5, p0, Lcom/tendcloud/tenddata/game/ad;->a:I

    iput p4, p0, Lcom/tendcloud/tenddata/game/ad;->b:I

    new-instance v0, Lcom/tendcloud/tenddata/game/ae;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/ae;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->m:[I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    new-instance v0, Lcom/tendcloud/tenddata/game/aj;

    add-int/lit8 v1, p4, -0x1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/aj;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    if-lez p6, :cond_48

    :goto_45
    iput p6, p0, Lcom/tendcloud/tenddata/game/ad;->o:I

    return-void

    :cond_48
    div-int/lit8 v0, p4, 0x4

    add-int/lit8 p6, v0, 0x4

    goto :goto_45
.end method

.method private static a(IIII)I
    .registers 8

    add-int v0, p1, p0

    add-int v1, p2, p3

    div-int/lit8 v2, p0, 0x2

    add-int/lit16 v2, v2, 0x1000

    const/high16 v3, 0x20000000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method static a([II)V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_14

    aget v2, p0, v0

    if-gt v2, p1, :cond_e

    aput v1, p0, v0

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    aget v2, p0, v0

    sub-int/2addr v2, p1

    aput v2, p0, v0

    goto :goto_b

    :cond_14
    return-void
.end method

.method private g()I
    .registers 4

    const v2, 0x7fffffff

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lcom/tendcloud/tenddata/game/ad;->c(II)I

    move-result v0

    if-eqz v0, :cond_33

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    if-ne v1, v2, :cond_26

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/ae;->d(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->m:[I

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/game/ad;->a([II)V

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    :cond_26
    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    if-ne v1, v2, :cond_33

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    :cond_33
    return v0
.end method

.method private h()V
    .registers 6

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->f:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    return-void
.end method

.method private i()V
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    if-lez v0, :cond_27

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    if-ge v0, v1, :cond_27

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ad;->a(I)V

    sget-boolean v1, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v1, :cond_27

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    if-lt v1, v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(III)I
    .registers 10

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int v1, v0, p1

    sub-int v0, v1, p2

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_1c

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    add-int v4, v1, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return v0
.end method

.method public a([BII)I
    .registers 7

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/ad;->i:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    array-length v1, v1

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->g:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1b

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->h()V

    :cond_1b
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2a

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    sub-int p3, v0, v1

    :cond_2a
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->g:I

    if-lt v0, v1, :cond_43

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    :cond_43
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->i()V

    return p3
.end method

.method public a()Lcom/tendcloud/tenddata/game/aj;
    .registers 13

    const/4 v8, 0x2

    const/4 v3, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iput v7, v0, Lcom/tendcloud/tenddata/game/aj;->c:I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->a:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->b:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->g()I

    move-result v0

    if-ge v0, v2, :cond_15b

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    :goto_15
    return-object v0

    :cond_16
    if-le v1, v0, :cond_156

    move v1, v0

    :goto_19
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v5, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    invoke-virtual {v2, v4, v5}, Lcom/tendcloud/tenddata/game/ae;->a([BI)V

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/ae;->a()I

    move-result v4

    sub-int v5, v2, v4

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/ae;->b()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ae;->c()I

    move-result v6

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    invoke-virtual {v2, v9}, Lcom/tendcloud/tenddata/game/ae;->c(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->m:[I

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    aput v6, v2, v9

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    if-ge v5, v2, :cond_153

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v9, v5

    aget-byte v2, v2, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    aget-byte v9, v9, v10

    if-ne v2, v9, :cond_153

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aput v8, v2, v7

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/aj;->b:[I

    add-int/lit8 v9, v5, -0x1

    aput v9, v2, v7

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    const/4 v9, 0x1

    iput v9, v2, Lcom/tendcloud/tenddata/game/aj;->c:I

    move v2, v8

    :goto_70
    if-eq v5, v4, :cond_150

    iget v8, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    if-ge v4, v8, :cond_150

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v9, v4

    aget-byte v8, v8, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_150

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v8, v5, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v5, v4, -0x1

    aput v5, v2, v8

    move v2, v3

    :goto_96
    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v5, v5, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lez v5, :cond_c4

    :goto_9c
    if-ge v2, v1, :cond_b2

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    aget-byte v5, v5, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v9, v2

    aget-byte v8, v8, v9

    if-ne v5, v8, :cond_b2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    :cond_b2
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v5, v5, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v5, v5, -0x1

    aput v2, v4, v5

    if-lt v2, v0, :cond_c4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    goto/16 :goto_15

    :cond_c4
    if-ge v2, v3, :cond_14d

    :goto_c6
    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->o:I

    move v4, v3

    move v3, v6

    :goto_ca
    iget v5, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    sub-int v6, v5, v3

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_d6

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    if-lt v6, v2, :cond_da

    :cond_d6
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    goto/16 :goto_15

    :cond_da
    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ad;->m:[I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    sub-int v8, v2, v6

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    if-le v6, v2, :cond_145

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->p:I

    :goto_e6
    add-int/2addr v2, v8

    aget v5, v5, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    aget-byte v2, v2, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    if-ne v2, v8, :cond_147

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v8, v6

    aget-byte v2, v2, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    aget-byte v8, v8, v9

    if-ne v2, v8, :cond_147

    move v2, v7

    :cond_10a
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_11f

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v9, v2

    sub-int/2addr v9, v6

    aget-byte v8, v8, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v10, v2

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_10a

    :cond_11f
    if-le v2, v4, :cond_147

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/aj;->a:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v8, v8, Lcom/tendcloud/tenddata/game/aj;->c:I

    aput v2, v4, v8

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget-object v4, v4, Lcom/tendcloud/tenddata/game/aj;->b:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v8, v8, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v8

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    iget v6, v4, Lcom/tendcloud/tenddata/game/aj;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-lt v2, v0, :cond_148

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->n:Lcom/tendcloud/tenddata/game/aj;

    goto/16 :goto_15

    :cond_145
    move v2, v7

    goto :goto_e6

    :cond_147
    move v2, v4

    :cond_148
    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_ca

    :cond_14d
    move v3, v2

    goto/16 :goto_c6

    :cond_150
    move v4, v5

    goto/16 :goto_96

    :cond_153
    move v2, v7

    goto/16 :goto_70

    :cond_156
    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_19

    :cond_15b
    move v0, v1

    move v1, v2

    goto/16 :goto_19
.end method

.method public a(I)V
    .registers 6

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_c
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_34

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->g()I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v3, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    invoke-virtual {v1, v2, v3}, Lcom/tendcloud/tenddata/game/ae;->a([BI)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ad;->m:[I

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->q:I

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ae;->c()I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ad;->l:Lcom/tendcloud/tenddata/game/ae;

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->r:I

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ae;->c(I)V

    move p1, v0

    goto :goto_c

    :cond_34
    return-void

    :cond_35
    move p1, v0

    goto :goto_c
.end method

.method public a(I[B)V
    .registers 7

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    if-eqz p2, :cond_35

    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p2

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ad;->a(I)V

    :cond_35
    return-void
.end method

.method public a(Ljava/io/OutputStream;II)V
    .registers 6

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/game/aj;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ad;->e()I

    move-result v0

    iget v2, p0, Lcom/tendcloud/tenddata/game/ad;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_c
    iget v3, p1, Lcom/tendcloud/tenddata/game/aj;->c:I

    if-ge v0, v3, :cond_22

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/aj;->b:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/tendcloud/tenddata/game/ad;->b(II)I

    move-result v3

    iget-object v4, p1, Lcom/tendcloud/tenddata/game/aj;->a:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public b(II)I
    .registers 8

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_1a

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v3, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    add-int v4, v1, v0

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b(I)Z
    .registers 4

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c(I)I
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ad;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method c(II)I
    .registers 5

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_c

    if-ge p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_26

    if-lt v0, p2, :cond_1f

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/game/ad;->i:Z

    if-nez v1, :cond_26

    :cond_1f
    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->k:I

    const/4 v0, 0x0

    :cond_26
    return v0
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->i()V

    return-void
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ad;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/ad;->i:Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ad;->i()V

    return-void
.end method

.method public e()I
    .registers 3

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ad;->e:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ad;->b()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ad;->d:I

    return v0
.end method
