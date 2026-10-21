###### Class com.tendcloud.tenddata.game.af (com.tendcloud.tenddata.game.af)
.class public Lcom/tendcloud/tenddata/game/af;
.super Ljava/io/OutputStream;


# static fields
.field static final a:I = 0x2000

.field static final synthetic b:Z


# instance fields
.field private c:Ljava/io/OutputStream;

.field private final d:Ljava/io/DataOutputStream;

.field private final e:Lcom/tendcloud/tenddata/game/ad;

.field private final f:Lcom/tendcloud/tenddata/game/al;

.field private final g:Lcom/tendcloud/tenddata/game/ag;

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/io/IOException;

.field private final o:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/tendcloud/tenddata/game/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/tendcloud/tenddata/game/af;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 19

    invoke-direct/range {p0 .. p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/af;->i:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/af;->j:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/af;->k:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tendcloud/tenddata/game/af;->l:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/af;->m:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    const/4 v2, 0x1

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->o:[B

    if-nez p1, :cond_30

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_30
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    new-instance v2, Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    new-instance v2, Lcom/tendcloud/tenddata/game/al;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/al;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->f:Lcom/tendcloud/tenddata/game/al;

    if-eqz p2, :cond_a9

    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit16 v6, v2, 0x1000

    :goto_53
    invoke-static {v6}, Lcom/tendcloud/tenddata/game/af;->a(I)I

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v8, v2, 0x18

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    int-to-double v12, v2

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v9, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/af;->f:Lcom/tendcloud/tenddata/game/al;

    invoke-static/range {v2 .. v9}, Lcom/tendcloud/tenddata/game/ag;->a(Lcom/tendcloud/tenddata/game/al;IIIIIII)Lcom/tendcloud/tenddata/game/ag;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ag;->b()Lcom/tendcloud/tenddata/game/ad;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    if-eqz p2, :cond_a3

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lcom/tendcloud/tenddata/game/ad;->a(I[B)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tendcloud/tenddata/game/af;->i:Z

    :cond_a3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tendcloud/tenddata/game/af;->h:I

    return-void

    :cond_a9
    const/16 v6, 0x1000

    goto :goto_53
.end method

.method private static a(I)I
    .registers 2

    const/16 v0, 0x2000

    if-le v0, p0, :cond_7

    rsub-int v0, p0, 0x2000

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private a(II)V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->k:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->i:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0xe0

    :goto_b
    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->k:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    iget v1, p0, Lcom/tendcloud/tenddata/game/af;->h:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_2e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->f:Lcom/tendcloud/tenddata/game/al;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/al;->a(Ljava/io/OutputStream;)V

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/game/af;->k:Z

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/game/af;->j:Z

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/game/af;->i:Z

    return-void

    :cond_3c
    const/16 v0, 0xc0

    goto :goto_b

    :cond_3f
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->j:Z

    if-eqz v0, :cond_46

    const/16 v0, 0xa0

    goto :goto_b

    :cond_46
    const/16 v0, 0x80

    goto :goto_b
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->f:Lcom/tendcloud/tenddata/game/al;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/al;->c()I

    move-result v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->d()I

    move-result v0

    sget-boolean v2, Lcom/tendcloud/tenddata/game/af;->b:Z

    if-nez v2, :cond_18

    if-gtz v1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_18
    sget-boolean v2, Lcom/tendcloud/tenddata/game/af;->b:Z

    if-nez v2, :cond_24

    if-gtz v0, :cond_24

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_24
    add-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_3c

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/af;->a(II)V

    :goto_2b
    iget v1, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->e()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->f:Lcom/tendcloud/tenddata/game/al;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/al;->a()V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->c()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->d()I

    move-result v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/af;->b:Z

    if-nez v1, :cond_53

    if-gtz v0, :cond_53

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_53
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/af;->b(I)V

    goto :goto_2b
.end method

.method private b(I)V
    .registers 6

    const/4 v1, 0x1

    :goto_1
    if-lez p1, :cond_28

    const/16 v0, 0x2000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->i:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, p1, v2}, Lcom/tendcloud/tenddata/game/ad;->a(Ljava/io/OutputStream;II)V

    sub-int/2addr p1, v2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->i:Z

    goto :goto_1

    :cond_26
    const/4 v0, 0x2

    goto :goto_10

    :cond_28
    iput-boolean v1, p0, Lcom/tendcloud/tenddata/game/af;->j:Z

    return-void
.end method

.method private c()V
    .registers 3

    sget-boolean v0, Lcom/tendcloud/tenddata/game/af;->b:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->d()V

    :goto_1a
    :try_start_1a
    iget v0, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->f()Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/af;->b()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_1a

    :catch_27
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_27

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/af;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    :cond_a
    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    if-nez v0, :cond_b

    :try_start_8
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/af;->c()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_22

    :cond_b
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_1a

    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    :cond_13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :catch_1a
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    if-nez v1, :cond_10

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    goto :goto_10

    :catch_22
    move-exception v0

    goto :goto_b

    :cond_24
    return-void
.end method

.method public flush()V
    .registers 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_7
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ad;->c()V

    :goto_18
    iget v0, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->f()Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/af;->b()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_18

    :catch_25
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_25

    return-void
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->o:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->o:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/tendcloud/tenddata/game/af;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    add-int v0, p2, p3

    if-ltz v0, :cond_d

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_1a
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/af;->m:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    if-lez p3, :cond_45

    :try_start_28
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->e:Lcom/tendcloud/tenddata/game/ad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ad;->a([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/game/af;->l:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/af;->g:Lcom/tendcloud/tenddata/game/ag;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/af;->b()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_40} :catch_41

    goto :goto_26

    :catch_41
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/af;->n:Ljava/io/IOException;

    throw v0

    :cond_45
    return-void
.end method
