###### Class com.google.android.gms.internal.zzaou (com.google.android.gms.internal.zzaou)
.class public final Lcom/google/android/gms/internal/zzaou;
.super Ljava/lang/Object;


# instance fields
.field private bhR:I

.field private bhS:I

.field private bhT:I

.field private bhU:I

.field private bhV:I

.field private bhW:I

.field private bhX:I

.field private bhY:I

.field private bhZ:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhY:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhZ:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaou;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iput p2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    return-void
.end method

.method private W()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhT:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhT:I

    goto :goto_19
.end method

.method public static zzaeh(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static zzaz([B)Lcom/google/android/gms/internal/zzaou;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzaou;->zzb([BII)Lcom/google/android/gms/internal/zzaou;

    move-result-object v0

    return-object v0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/zzaou;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzaou;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaou;-><init>([BII)V

    return-object v0
.end method

.method public static zzcq(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public J()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Y()Z

    move-result v1

    if-eqz v1, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhV:I

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhV:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhV:I

    if-nez v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->aj()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhV:I

    goto :goto_9
.end method

.method public K()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaou;->zzaeg(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public L()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public M()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public N()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    return v0
.end method

.method public O()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public P()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public Q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaou;->zzaeh(I)I

    move-result v0

    return v0
.end method

.method public R()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->T()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaou;->zzcq(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public S()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v0

    if-ltz v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    if-ltz v1, :cond_22

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    if-ltz v1, :cond_31

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ai()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0
.end method

.method public T()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ai()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0
.end method

.method public U()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public V()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->Z()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public X()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    sub-int v0, v1, v0

    goto :goto_8
.end method

.method public Y()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public Z()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaou;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v1

    if-gez v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ah()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_b
    if-nez v1, :cond_10

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bit:[B

    :goto_f
    return-object v0

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_1c
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaou;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    goto :goto_f
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->U()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ah()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaou;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    sget-object v4, Lcom/google/android/gms/internal/zzapa;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    return-object v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzapc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhY:I

    if-lt v1, v2, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->am()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaou;->zzaei(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzapc;->zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaou;->zzaef(I)V

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaou;->zzaej(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzapc;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhY:I

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->am()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzapc;->zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzapf;->zzaj(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaou;->zzaef(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhX:I

    return-void
.end method

.method public zzad(II)[B
    .registers 7

    if-nez p2, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bit:[B

    :goto_4
    return-object v0

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaou;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public zzaef(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapb;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhV:I

    if-eq v0, p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ak()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_9
    return-void
.end method

.method public zzaeg(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapf;->zzaez(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->al()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->N()I

    :goto_10
    return v0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->V()J

    goto :goto_10

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaou;->zzael(I)V

    goto :goto_10

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->K()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapf;->zzafa(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapf;->zzaj(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaou;->zzaef(I)V

    goto :goto_10

    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaou;->U()I

    goto :goto_10

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public zzaei(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapb;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ah()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    if-le v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaou;->W()V

    return v1
.end method

.method public zzaej(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaou;->W()V

    return-void
.end method

.method public zzaek(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-gez p1, :cond_4e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhR:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    return-void
.end method

.method public zzael(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ah()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhW:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaou;->zzael(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhS:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzaou;->bhU:I

    return-void

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/zzapb;->ag()Lcom/google/android/gms/internal/zzapb;

    move-result-object v0

    throw v0
.end method
