###### Class com.tendcloud.tenddata.game.ag (com.tendcloud.tenddata.game.ag)
.class public abstract Lcom/tendcloud/tenddata/game/ag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ag$1;,
        Lcom/tendcloud/tenddata/game/ag$a;,
        Lcom/tendcloud/tenddata/game/ag$b;
    }
.end annotation


# static fields
.field static final synthetic F:Z

.field private static final G:I = 0x1ffeef

.field private static final H:I = 0x1fe6

.field private static final I:I = 0x80

.field private static final J:I = 0x10

.field static final a:I = 0x10

.field static final b:I = 0x2

.field static final c:I = 0x111

.field static final d:I = 0x4

.field static final e:I = 0x40

.field static final f:I = 0x4

.field static final g:I = 0xe

.field static final h:I = 0x80

.field static final i:I = 0x4

.field static final j:I = 0x10

.field static final k:I = 0xf

.field static final l:I = 0x4


# instance fields
.field final A:Lcom/tendcloud/tenddata/game/ag$a;

.field final B:Lcom/tendcloud/tenddata/game/ag$a;

.field final C:I

.field D:I

.field E:I

.field private final K:Lcom/tendcloud/tenddata/game/al;

.field private L:I

.field private M:I

.field private final N:I

.field private final O:[[I

.field private final P:[[I

.field private final Q:[I

.field private R:I

.field final m:I

.field final n:[I

.field final o:Lcom/tendcloud/tenddata/game/am;

.field final p:[[S

.field final q:[S

.field final r:[S

.field final s:[S

.field final t:[S

.field final u:[[S

.field final v:[[S

.field final w:[[S

.field final x:[S

.field final y:Lcom/tendcloud/tenddata/game/ad;

.field final z:Lcom/tendcloud/tenddata/game/ag$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ag;->F:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/al;Lcom/tendcloud/tenddata/game/ad;IIIII)V
    .registers 15

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    new-instance v0, Lcom/tendcloud/tenddata/game/am;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/am;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->t:[S

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    const/16 v0, 0x40

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->v:[[S

    const/16 v0, 0xa

    new-array v0, v0, [[S

    new-array v1, v6, [S

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-array v2, v6, [S

    aput-object v2, v0, v1

    new-array v1, v3, [S

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [S

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [S

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [S

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [S

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [S

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x20

    new-array v2, v2, [S

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x20

    new-array v2, v2, [S

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->x:[S

    iput v5, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    iput v5, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    const/16 v0, 0x80

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->P:[[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->Q:[I

    iput v5, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    iput v5, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->m:I

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iput p7, p0, Lcom/tendcloud/tenddata/game/ag;->C:I

    new-instance v0, Lcom/tendcloud/tenddata/game/ag$b;

    invoke-direct {v0, p0, p3, p4}, Lcom/tendcloud/tenddata/game/ag$b;-><init>(Lcom/tendcloud/tenddata/game/ag;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->z:Lcom/tendcloud/tenddata/game/ag$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/ag$a;

    invoke-direct {v0, p0, p5, p7}, Lcom/tendcloud/tenddata/game/ag$a;-><init>(Lcom/tendcloud/tenddata/game/ag;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->A:Lcom/tendcloud/tenddata/game/ag$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/ag$a;

    invoke-direct {v0, p0, p5, p7}, Lcom/tendcloud/tenddata/game/ag$a;-><init>(Lcom/tendcloud/tenddata/game/ag;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->B:Lcom/tendcloud/tenddata/game/ag$a;

    add-int/lit8 v0, p6, -0x1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ag;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->N:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->N:I

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ag;->c()V

    return-void
.end method

.method static final a(I)I
    .registers 2

    const/4 v0, 0x6

    if-ge p0, v0, :cond_6

    add-int/lit8 v0, p0, -0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x3

    goto :goto_5
.end method

.method public static a(Lcom/tendcloud/tenddata/game/al;IIIIIII)Lcom/tendcloud/tenddata/game/ag;
    .registers 17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1a

    new-instance v0, Lcom/tendcloud/tenddata/game/ah;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/ah;-><init>(Lcom/tendcloud/tenddata/game/al;IIIIIII)V

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Lcom/tendcloud/tenddata/game/ai;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/ai;-><init>(Lcom/tendcloud/tenddata/game/al;IIIIIII)V

    goto :goto_19
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    return-object v0
.end method

.method private a(III)V
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/am;->d()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->A:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0, p2, p3}, Lcom/tendcloud/tenddata/game/ag$a;->a(II)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ag;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->v:[[S

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/ag;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/game/al;->a([SI)V

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3b

    ushr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v0, 0x1

    or-int/lit8 v2, v2, 0x2

    shl-int/2addr v2, v1

    sub-int v2, p1, v2

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5f

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    add-int/lit8 v0, v0, -0x4

    aget-object v0, v3, v0

    invoke-virtual {v1, v0, v2}, Lcom/tendcloud/tenddata/game/al;->c([SI)V

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v1, v1, v5

    aput v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aput p1, v0, v4

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    return-void

    :cond_5f
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    ushr-int/lit8 v3, v2, 0x4

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Lcom/tendcloud/tenddata/game/al;->b(II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->x:[S

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/al;->c([SI)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    goto :goto_3b
.end method

.method public static b(I)I
    .registers 4

    const/4 v0, 0x4

    if-gt p0, v0, :cond_4

    :goto_3
    return p0

    :cond_4
    const/16 v0, 0x1f

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_3c

    shl-int/lit8 v1, p0, 0x10

    const/16 v0, 0xf

    :goto_f
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_18

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    :cond_18
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    if-nez v2, :cond_21

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x4

    :cond_21
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v1

    if-nez v2, :cond_2a

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x2

    :cond_2a
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_31

    add-int/lit8 v0, v0, -0x1

    :cond_31
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    ushr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    add-int p0, v1, v0

    goto :goto_3

    :cond_3c
    move v1, p0

    goto :goto_f
.end method

.method private b(III)V
    .registers 13

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2e

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v4

    aget-object v3, v3, v4

    if-ne p2, v1, :cond_2c

    :goto_21
    invoke-virtual {v2, v3, p3, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    :goto_24
    if-ne p2, v1, :cond_8a

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/am;->f()V

    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_21

    :cond_2e
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    if-ne p1, v1, :cond_5b

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    :goto_4e
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v4, v4, v0

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aput v2, v3, v0

    goto :goto_24

    :cond_5b
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->t:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    if-ne p1, v8, :cond_81

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v4, v4, v7

    aput v4, v3, v8

    :cond_81
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aget v4, v4, v1

    aput v4, v3, v7

    goto :goto_4e

    :cond_8a
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0, p2, p3}, Lcom/tendcloud/tenddata/game/ag$a;->a(II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/am;->e()V

    goto :goto_2b
.end method

.method private i()Z
    .registers 7

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v2, :cond_11

    iget v2, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    if-eq v2, v5, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ad;->b(I)Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/game/ag;->c(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->z:Lcom/tendcloud/tenddata/game/ag$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$b;->b()V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    if-eq v0, v5, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v0, :cond_59

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    if-eq v0, v1, :cond_59

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_59
    move v0, v1

    goto :goto_19
.end method

.method private j()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget v3, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/ad;->b(I)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ag;->a()I

    move-result v2

    sget-boolean v3, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v3, :cond_21

    iget v3, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    if-gez v3, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_21
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ad;->f()I

    move-result v3

    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->m:I

    and-int/2addr v3, v4

    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5e

    sget-boolean v4, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v4, :cond_3e

    if-eq v2, v1, :cond_3e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3e
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->z:Lcom/tendcloud/tenddata/game/ag$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$b;->c()V

    :goto_52
    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    move v0, v1

    goto :goto_e

    :cond_5e
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_a0

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    iget v6, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5, v2}, Lcom/tendcloud/tenddata/game/ad;->a(III)I

    move-result v0

    if-eq v0, v2, :cond_8d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8d
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    invoke-direct {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/ag;->b(III)V

    goto :goto_52

    :cond_a0
    sget-boolean v4, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v4, :cond_b9

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget v5, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    neg-int v5, v5

    iget v6, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6, v2}, Lcom/tendcloud/tenddata/game/ad;->a(III)I

    move-result v4

    if-eq v4, v2, :cond_b9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b9
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->D:I

    add-int/lit8 v0, v0, -0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/ag;->a(III)V

    goto :goto_52
.end method

.method private k()V
    .registers 14

    const/16 v12, 0x80

    const/16 v2, 0xe

    const/4 v6, 0x4

    const/4 v1, 0x0

    iput v12, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    move v3, v1

    :goto_9
    if-ge v3, v6, :cond_52

    move v0, v1

    :goto_c
    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->N:I

    if-ge v0, v4, :cond_21

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->v:[[S

    aget-object v5, v5, v3

    invoke-static {v5, v0}, Lcom/tendcloud/tenddata/game/al;->b([SI)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    move v0, v2

    :goto_22
    iget v4, p0, Lcom/tendcloud/tenddata/game/ag;->N:I

    if-ge v0, v4, :cond_3c

    ushr-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x4

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    aget-object v5, v5, v3

    aget v7, v5, v0

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/al;->a(I)I

    move-result v4

    add-int/2addr v4, v7

    aput v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3c
    move v0, v1

    :goto_3d
    if-ge v0, v6, :cond_4e

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag;->P:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    aget-object v5, v5, v3

    aget v5, v5, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    :cond_52
    move v5, v6

    move v0, v6

    :goto_54
    if-ge v5, v2, :cond_95

    ushr-int/lit8 v3, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, v5, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int v7, v4, v3

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    add-int/lit8 v4, v5, -0x4

    aget-object v3, v3, v4

    array-length v8, v3

    move v3, v1

    move v4, v0

    :goto_69
    if-ge v3, v8, :cond_90

    sub-int v0, v4, v7

    iget-object v9, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    add-int/lit8 v10, v5, -0x4

    aget-object v9, v9, v10

    invoke-static {v9, v0}, Lcom/tendcloud/tenddata/game/al;->d([SI)I

    move-result v9

    move v0, v1

    :goto_78
    if-ge v0, v6, :cond_8a

    iget-object v10, p0, Lcom/tendcloud/tenddata/game/ag;->P:[[I

    aget-object v10, v10, v0

    iget-object v11, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    aget-object v11, v11, v0

    aget v11, v11, v5

    add-int/2addr v11, v9

    aput v11, v10, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_69

    :cond_90
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v4

    goto :goto_54

    :cond_95
    sget-boolean v1, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v1, :cond_a1

    if-eq v0, v12, :cond_a1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a1
    return-void
.end method

.method private l()V
    .registers 5

    const/16 v3, 0x10

    iput v3, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_14

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->Q:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->x:[S

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/game/al;->d([SI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method a(IIII)I
    .registers 9

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->A:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0, p3, p4}, Lcom/tendcloud/tenddata/game/ag$a;->b(II)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/ag;->a(I)I

    move-result v1

    const/16 v2, 0x80

    if-ge p2, v2, :cond_17

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->P:[[I

    aget-object v1, v2, v1

    aget v1, v1, p2

    add-int/2addr v0, v1

    :goto_16
    return v0

    :cond_17
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/ag;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->O:[[I

    aget-object v1, v3, v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->Q:[I

    and-int/lit8 v3, p2, 0xf

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_16
.end method

.method a(IILcom/tendcloud/tenddata/game/am;I)I
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_21

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p4

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    if-ne p2, v3, :cond_3e

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v4}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_20

    :cond_3e
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->t:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v3

    aget-short v2, v2, v3

    add-int/lit8 v3, p2, -0x2

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_20
.end method

.method a(ILcom/tendcloud/tenddata/game/am;)I
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method a(ILcom/tendcloud/tenddata/game/am;I)I
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p3

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/tendcloud/tenddata/game/am;I)I
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    return v0
.end method

.method b(IILcom/tendcloud/tenddata/game/am;I)I
    .registers 7

    invoke-virtual {p0, p3, p4}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/am;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/tendcloud/tenddata/game/ag;->b(ILcom/tendcloud/tenddata/game/am;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/tendcloud/tenddata/game/ag;->a(IILcom/tendcloud/tenddata/game/am;I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v1, p2, p4}, Lcom/tendcloud/tenddata/game/ag$a;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method b(ILcom/tendcloud/tenddata/game/am;)I
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public b()Lcom/tendcloud/tenddata/game/ad;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    return-object v0
.end method

.method public c()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->n:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/am;->a()V

    move v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_29
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->q:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->r:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->s:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->t:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    move v0, v1

    :goto_3e
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_4d

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->u:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4d
    move v0, v1

    :goto_4e
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->v:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_5d

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->v:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5d
    move v0, v1

    :goto_5e
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag;->w:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_6d
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->x:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->z:Lcom/tendcloud/tenddata/game/ag$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$b;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->A:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$a;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$a;->a()V

    iput v1, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    iput v1, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    return-void
.end method

.method c(I)V
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ad;->a(I)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    return v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    return-void
.end method

.method public f()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ad;->b()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ag;->i()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    iget v1, p0, Lcom/tendcloud/tenddata/game/ag;->R:I

    const v2, 0x1ffeef

    if-gt v1, v2, :cond_28

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->K:Lcom/tendcloud/tenddata/game/al;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/al;->b()I

    move-result v1

    const/16 v2, 0x1fe6

    if-gt v1, v2, :cond_28

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ag;->j()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_f

    :cond_28
    const/4 v0, 0x1

    goto :goto_f
.end method

.method g()Lcom/tendcloud/tenddata/game/aj;
    .registers 3

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag;->E:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->a()Lcom/tendcloud/tenddata/game/aj;

    move-result-object v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/ag;->F:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/ad;->a(Lcom/tendcloud/tenddata/game/aj;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    return-object v0
.end method

.method h()V
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->L:I

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ag;->k()V

    :cond_7
    iget v0, p0, Lcom/tendcloud/tenddata/game/ag;->M:I

    if-gtz v0, :cond_e

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ag;->l()V

    :cond_e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->A:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$a;->b()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag;->B:Lcom/tendcloud/tenddata/game/ag$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$a;->b()V

    return-void
.end method

###### Class com.tendcloud.tenddata.game.ag.AnonymousClass1 (com.tendcloud.tenddata.game.ag$1)
.class synthetic Lcom/tendcloud/tenddata/game/ag$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.tendcloud.tenddata.game.ag.a (com.tendcloud.tenddata.game.ag$a)
.class Lcom/tendcloud/tenddata/game/ag$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x8

.field static final b:I = 0x8

.field static final c:I = 0x100

.field private static final i:I = 0x20


# instance fields
.field final d:[S

.field final e:[[S

.field final f:[[S

.field final g:[S

.field final synthetic h:Lcom/tendcloud/tenddata/game/ag;

.field private final j:[I

.field private final k:[[I


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ag;II)V
    .registers 8

    const/16 v3, 0x8

    const/16 v2, 0x10

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->f:[[S

    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->g:[S

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    add-int/lit8 v1, p3, -0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    return-void
.end method

.method private a(I)V
    .registers 10

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    aget-short v0, v0, v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v2

    move v0, v1

    :goto_b
    const/16 v3, 0x8

    if-ge v0, v3, :cond_21

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    aget-object v4, v4, p1

    invoke-static {v4, v0}, Lcom/tendcloud/tenddata/game/al;->b([SI)I

    move-result v4

    add-int/2addr v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    aget-short v2, v2, v1

    invoke-static {v2, v7}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    aget-short v3, v3, v7

    invoke-static {v3, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    :goto_31
    const/16 v3, 0x10

    if-ge v0, v3, :cond_4b

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    aget-object v3, v3, p1

    add-int v4, v2, v1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag$a;->f:[[S

    aget-object v5, v5, p1

    add-int/lit8 v6, v0, -0x8

    invoke-static {v5, v6}, Lcom/tendcloud/tenddata/game/al;->b([SI)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_4b
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    aget-short v1, v1, v7

    invoke-static {v1, v7}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    :goto_53
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    aget-object v3, v3, p1

    array-length v3, v3

    if-ge v0, v3, :cond_70

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    aget-object v3, v3, p1

    add-int v4, v2, v1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag$a;->g:[S

    add-int/lit8 v6, v0, -0x8

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Lcom/tendcloud/tenddata/game/al;->b([SI)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_70
    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    move v0, v1

    :goto_17
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_26

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->f:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_26
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->g:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    move v0, v1

    :goto_2c
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    array-length v2, v2

    if-ge v0, v2, :cond_38

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_38
    return-void
.end method

.method a(II)V
    .registers 9

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, p1, -0x2

    if-ge v0, v5, :cond_29

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    invoke-virtual {v1, v2, v3, v3}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->e:[[S

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/game/al;->a([SI)V

    :goto_20
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    return-void

    :cond_29
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    add-int/lit8 v0, v0, -0x8

    if-ge v0, v5, :cond_51

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    invoke-virtual {v1, v2, v4, v3}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->f:[[S

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/game/al;->a([SI)V

    goto :goto_20

    :cond_51
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->d:[S

    invoke-virtual {v1, v2, v4, v4}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->h:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$a;->g:[S

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/game/al;->a([SI)V

    goto :goto_20
.end method

.method b(II)I
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$a;->k:[[I

    aget-object v0, v0, p2

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method b()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    aget v1, v1, v0

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$a;->j:[I

    const/16 v2, 0x20

    aput v2, v1, v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/ag$a;->a(I)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

###### Class com.tendcloud.tenddata.game.ag.b (com.tendcloud.tenddata.game.ag$b)
.class Lcom/tendcloud/tenddata/game/ag$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ag$b$a;
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field a:[Lcom/tendcloud/tenddata/game/ag$b$a;

.field final synthetic c:Lcom/tendcloud/tenddata/game/ag;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ag$b;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/ag;II)V
    .registers 8

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tendcloud/tenddata/game/ag$b;->d:I

    shl-int v0, v1, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->e:I

    add-int v0, p2, p3

    shl-int v0, v1, v0

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/ag$b$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    new-instance v2, Lcom/tendcloud/tenddata/game/ag$b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tendcloud/tenddata/game/ag$b$a;-><init>(Lcom/tendcloud/tenddata/game/ag$b;Lcom/tendcloud/tenddata/game/ag$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    return-void
.end method


# virtual methods
.method final a(II)I
    .registers 6

    iget v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->d:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int v0, p1, v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->e:I

    and-int/2addr v1, p2

    iget v2, p0, Lcom/tendcloud/tenddata/game/ag$b;->d:I

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method a(IIIILcom/tendcloud/tenddata/game/am;)I
    .registers 9

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag;->p:[[S

    invoke-virtual {p5}, Lcom/tendcloud/tenddata/game/am;->b()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v1, v1, Lcom/tendcloud/tenddata/game/ag;->m:I

    and-int/2addr v1, p4

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v1

    invoke-virtual {p0, p3, p4}, Lcom/tendcloud/tenddata/game/ag$b;->a(II)I

    move-result v0

    invoke-virtual {p5}, Lcom/tendcloud/tenddata/game/am;->g()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/ag$b$a;->a(I)I

    move-result v0

    :goto_28
    add-int/2addr v0, v1

    return v0

    :cond_2a
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2}, Lcom/tendcloud/tenddata/game/ag$b$a;->a(II)I

    move-result v0

    goto :goto_28
.end method

.method a()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ag$b$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method b()V
    .registers 3

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ag$b;->b:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v0, v0, Lcom/tendcloud/tenddata/game/ag;->E:I

    if-gez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$b$a;->b()V

    return-void
.end method

.method c()V
    .registers 4

    sget-boolean v0, Lcom/tendcloud/tenddata/game/ag$b;->b:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v0, v0, Lcom/tendcloud/tenddata/game/ag;->E:I

    if-gez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v1, v1, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ad;->f()I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v2, v2, Lcom/tendcloud/tenddata/game/ag;->E:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ag$b;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b;->a:[Lcom/tendcloud/tenddata/game/ag$b$a;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag$b$a;->b()V

    return-void
.end method

###### Class com.tendcloud.tenddata.game.ag.b.a (com.tendcloud.tenddata.game.ag$b$a)
.class Lcom/tendcloud/tenddata/game/ag$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ag$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final synthetic b:Lcom/tendcloud/tenddata/game/ag$b;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/game/ag$b;)V
    .registers 3

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/ag$b;Lcom/tendcloud/tenddata/game/ag$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ag$b$a;-><init>(Lcom/tendcloud/tenddata/game/ag$b;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 7

    const/4 v0, 0x0

    or-int/lit16 v1, p1, 0x100

    :cond_3
    ushr-int/lit8 v2, v1, 0x8

    ushr-int/lit8 v3, v1, 0x7

    and-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    aget-short v2, v4, v2

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_3

    return v0
.end method

.method a(II)I
    .registers 9

    const/4 v1, 0x0

    const/16 v0, 0x100

    or-int/lit16 v2, p1, 0x100

    :cond_5
    shl-int/lit8 p2, p2, 0x1

    and-int v3, p2, v0

    add-int/2addr v3, v0

    ushr-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    aget-short v3, v5, v3

    invoke-static {v3, v4}, Lcom/tendcloud/tenddata/game/al;->a(II)I

    move-result v3

    add-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x1

    xor-int v3, p2, v2

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_5

    return v1
.end method

.method a()V
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/al;->a([S)V

    return-void
.end method

.method b()V
    .registers 10

    const/high16 v7, 0x10000

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v1, v1, Lcom/tendcloud/tenddata/game/ag;->E:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/am;->g()Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_20
    ushr-int/lit8 v1, v0, 0x8

    ushr-int/lit8 v2, v0, 0x7

    and-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    invoke-virtual {v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    shl-int/lit8 v0, v0, 0x1

    if-lt v0, v7, :cond_20

    :goto_37
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ag;->o:Lcom/tendcloud/tenddata/game/am;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/am;->c()V

    return-void

    :cond_41
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/ag;->y:Lcom/tendcloud/tenddata/game/ad;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/ag;->n:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    iget v3, v3, Lcom/tendcloud/tenddata/game/ag;->E:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ad;->c(I)I

    move-result v2

    const/16 v1, 0x100

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    :cond_63
    shl-int/lit8 v1, v1, 0x1

    and-int v3, v1, v0

    add-int/2addr v3, v0

    ushr-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->b:Lcom/tendcloud/tenddata/game/ag$b;

    iget-object v5, v5, Lcom/tendcloud/tenddata/game/ag$b;->c:Lcom/tendcloud/tenddata/game/ag;

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/ag;)Lcom/tendcloud/tenddata/game/al;

    move-result-object v5

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ag$b$a;->a:[S

    invoke-virtual {v5, v6, v3, v4}, Lcom/tendcloud/tenddata/game/al;->a([SII)V

    shl-int/lit8 v2, v2, 0x1

    xor-int v3, v1, v2

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    if-lt v2, v7, :cond_63

    goto :goto_37
.end method
