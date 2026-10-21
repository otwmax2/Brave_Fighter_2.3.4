###### Class com.tendcloud.tenddata.game.ae (com.tendcloud.tenddata.game.ae)
.class final Lcom/tendcloud/tenddata/game/ae;
.super Ljava/lang/Object;


# static fields
.field static final a:[I

.field private static final b:I = -0x12477ce0

.field private static final c:I = 0x400

.field private static final d:I = 0x3ff

.field private static final e:I = 0x10000

.field private static final f:I = 0xffff


# instance fields
.field private final g:I

.field private final h:[I

.field private final i:[I

.field private final j:[I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x100

    const/4 v2, 0x0

    new-array v0, v5, [I

    sput-object v0, Lcom/tendcloud/tenddata/game/ae;->a:[I

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_27

    move v1, v2

    move v0, v3

    :goto_c
    const/16 v4, 0x8

    if-ge v1, v4, :cond_20

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1d

    ushr-int/lit8 v0, v0, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_20
    sget-object v1, Lcom/tendcloud/tenddata/game/ae;->a:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->h:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->i:[I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ae;->k:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ae;->l:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ae;->m:I

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ae;->a(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->j:[I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->j:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ae;->g:I

    return-void
.end method

.method static a(I)I
    .registers 3

    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    or-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-le v0, v1, :cond_1a

    ushr-int/lit8 v0, v0, 0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static b(I)I
    .registers 3

    const v0, 0x10400

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ae;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    add-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method a()I
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->h:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->k:I

    aget v0, v0, v1

    return v0
.end method

.method a([BI)V
    .registers 6

    sget-object v0, Lcom/tendcloud/tenddata/game/ae;->a:[I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x3ff

    iput v1, p0, Lcom/tendcloud/tenddata/game/ae;->k:I

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/game/ae;->l:I

    sget-object v1, Lcom/tendcloud/tenddata/game/ae;->a:[I

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x5

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->g:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ae;->m:I

    return-void
.end method

.method b()I
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->i:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->l:I

    aget v0, v0, v1

    return v0
.end method

.method c()I
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->j:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->m:I

    aget v0, v0, v1

    return v0
.end method

.method c(I)V
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->h:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->k:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->i:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->l:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->j:[I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ae;->m:I

    aput p1, v0, v1

    return-void
.end method

.method d(I)V
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->h:[I

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ad;->a([II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->i:[I

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ad;->a([II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ae;->j:[I

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ad;->a([II)V

    return-void
.end method
