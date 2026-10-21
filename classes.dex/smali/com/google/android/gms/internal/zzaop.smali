###### Class com.google.android.gms.internal.zzaop (com.google.android.gms.internal.zzaop)
.class public Lcom/google/android/gms/internal/zzaop;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final bhm:[C


# instance fields
.field private aYn:I

.field private bhn:Z

.field private final bho:[C

.field private bhp:I

.field private bhq:I

.field private bhr:I

.field private bhs:J

.field private bht:I

.field private bhu:Ljava/lang/String;

.field private bhv:[I

.field private bhw:I

.field private bhx:[Ljava/lang/String;

.field private bhy:[I

.field private final in:Ljava/io/Reader;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    new-instance v0, Lcom/google/android/gms/internal/zzaop$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaop$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanu;->bff:Lcom/google/android/gms/internal/zzanu;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    if-nez p1, :cond_3b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaop;->in:Ljava/io/Reader;

    return-void
.end method

.method private A()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private B()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_c2

    :goto_22
    return v0

    :sswitch_23
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-le v0, v1, :cond_38

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_40
    if-ge v1, v2, :cond_9b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_58

    const/16 v4, 0x39

    if-gt v3, v4, :cond_58

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_58
    const/16 v4, 0x61

    if-lt v3, v4, :cond_67

    const/16 v4, 0x66

    if-gt v3, v4, :cond_67

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    :cond_67
    const/16 v4, 0x41

    if-lt v3, v4, :cond_76

    const/16 v4, 0x46

    if-gt v3, v4, :cond_76

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    :cond_76
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "\\u"

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :cond_9b
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto :goto_22

    :sswitch_a2
    const/16 v0, 0x9

    goto/16 :goto_22

    :sswitch_a6
    const/16 v0, 0x8

    goto/16 :goto_22

    :sswitch_aa
    const/16 v0, 0xa

    goto/16 :goto_22

    :sswitch_ae
    const/16 v0, 0xd

    goto/16 :goto_22

    :sswitch_b2
    const/16 v0, 0xc

    goto/16 :goto_22

    :sswitch_b6
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    goto/16 :goto_22

    :sswitch_data_c2
    .sparse-switch
        0xa -> :sswitch_b6
        0x62 -> :sswitch_a6
        0x66 -> :sswitch_b2
        0x6e -> :sswitch_aa
        0x72 -> :sswitch_ae
        0x74 -> :sswitch_a2
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private C()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_34
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzaop;->bhm:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto :goto_1d
.end method

.method private getColumnNumber()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private u()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v4, v2, :cond_32

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_180

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    if-ne v0, v2, :cond_2b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->v()I

    move-result v0

    if-eqz v0, :cond_15d

    :cond_31
    :goto_31
    return v0

    :cond_32
    if-ne v4, v1, :cond_49

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_19e

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_42
    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_31

    :sswitch_45
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    goto :goto_17

    :cond_49
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4e

    if-ne v4, v7, :cond_aa

    :cond_4e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    if-ne v4, v7, :cond_6d

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ac

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_66
    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    move v0, v1

    goto :goto_31

    :sswitch_6a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :cond_6d
    :sswitch_6d
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ba

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zze(C)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_31

    :sswitch_89
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_31

    :sswitch_8e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_31

    :sswitch_96
    if-eq v4, v7, :cond_9c

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    move v0, v1

    goto :goto_31

    :cond_9c
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a3
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_aa
    if-ne v4, v0, :cond_e3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v5

    packed-switch v5, :pswitch_data_1c8

    :pswitch_bb
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_c2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lt v5, v6, :cond_d1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_d1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto/16 :goto_17

    :cond_e3
    const/4 v5, 0x6

    if-ne v4, v5, :cond_f7

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    if-eqz v5, :cond_ed

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->C()V

    :cond_ed
    iget-object v5, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    :cond_f7
    if-ne v4, v3, :cond_112

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaop;->zzda(Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_107

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    :cond_107
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto/16 :goto_17

    :cond_112
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11e
    if-ne v4, v2, :cond_124

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    :cond_124
    :sswitch_124
    if-eq v4, v2, :cond_128

    if-ne v4, v1, :cond_136

    :cond_128
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iput v3, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    move v0, v3

    goto/16 :goto_31

    :cond_136
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_13d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    :sswitch_146
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    if-ne v0, v2, :cond_14d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :cond_14d
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    :sswitch_153
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    :sswitch_158
    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    move v0, v2

    goto/16 :goto_31

    :cond_15d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->w()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zze(C)Z

    move-result v0

    if-nez v0, :cond_176

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_176
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_31

    nop

    :sswitch_data_180
    .sparse-switch
        0x22 -> :sswitch_146
        0x27 -> :sswitch_13d
        0x2c -> :sswitch_124
        0x3b -> :sswitch_124
        0x5b -> :sswitch_153
        0x5d -> :sswitch_11e
        0x7b -> :sswitch_158
    .end sparse-switch

    :sswitch_data_19e
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_45
        0x5d -> :sswitch_42
    .end sparse-switch

    :sswitch_data_1ac
    .sparse-switch
        0x2c -> :sswitch_6d
        0x3b -> :sswitch_6a
        0x7d -> :sswitch_66
    .end sparse-switch

    :sswitch_data_1ba
    .sparse-switch
        0x22 -> :sswitch_89
        0x27 -> :sswitch_8e
        0x7d -> :sswitch_96
    .end sparse-switch

    :pswitch_data_1c8
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_bb
        :pswitch_bb
        :pswitch_c2
    .end packed-switch
.end method

.method private v()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2c

    :cond_f
    const-string v2, "true"

    const-string v1, "TRUE"

    const/4 v0, 0x5

    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_19
    if-ge v4, v5, :cond_62

    iget v6, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lt v6, v7, :cond_4a

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v6

    if-nez v6, :cond_4a

    move v0, v3

    :goto_2b
    return v0

    :cond_2c
    const/16 v1, 0x66

    if-eq v0, v1, :cond_34

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3a

    :cond_34
    const-string v2, "false"

    const-string v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_14

    :cond_3a
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_48

    :cond_42
    const-string v2, "null"

    const-string v1, "NULL"

    const/4 v0, 0x7

    goto :goto_14

    :cond_48
    move v0, v3

    goto :goto_2b

    :cond_4a
    iget-object v6, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v7, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    move v0, v3

    goto :goto_2b

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_62
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lt v1, v2, :cond_71

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaop;->zze(C)Z

    move-result v1

    if-eqz v1, :cond_80

    move v0, v3

    goto :goto_2b

    :cond_80
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_2b
.end method

.method private w()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    :goto_f
    add-int v2, v1, v10

    if-ne v2, v0, :cond_3f

    array-length v0, v11

    if-ne v10, v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_20
    const/4 v0, 0x2

    if-ne v3, v0, :cond_df

    if-eqz v4, :cond_df

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2d

    if-eqz v5, :cond_df

    :cond_2d
    if-eqz v5, :cond_dc

    :goto_2f
    iput-wide v6, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto :goto_17

    :cond_3b
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    :cond_3f
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_f8

    const/16 v8, 0x30

    if-lt v2, v8, :cond_4e

    const/16 v8, 0x39

    if-le v2, v8, :cond_8b

    :cond_4e
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zze(C)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_17

    :sswitch_56
    if-nez v3, :cond_64

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_5d
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_f

    :cond_64
    const/4 v2, 0x5

    if-ne v3, v2, :cond_6b

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_6d
    const/4 v2, 0x5

    if-ne v3, v2, :cond_74

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_74
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_76
    const/4 v2, 0x2

    if-eq v3, v2, :cond_7c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_80

    :cond_7c
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_80
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_82
    const/4 v2, 0x2

    if-ne v3, v2, :cond_89

    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_89
    const/4 v0, 0x0

    goto :goto_17

    :cond_8b
    const/4 v8, 0x1

    if-eq v3, v8, :cond_90

    if-nez v3, :cond_98

    :cond_90
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_98
    const/4 v8, 0x2

    if-ne v3, v8, :cond_cb

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_a4

    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_a4
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_c1

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_c9

    cmp-long v2, v8, v6

    if-gez v2, :cond_c9

    :cond_c1
    const/4 v2, 0x1

    :goto_c2
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_5d

    :cond_c9
    const/4 v2, 0x0

    goto :goto_c2

    :cond_cb
    const/4 v2, 0x3

    if-ne v3, v2, :cond_d2

    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_d2
    const/4 v2, 0x5

    if-eq v3, v2, :cond_d8

    const/4 v2, 0x6

    if-ne v3, v2, :cond_f3

    :cond_d8
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_5d

    :cond_dc
    neg-long v6, v6

    goto/16 :goto_2f

    :cond_df
    const/4 v0, 0x2

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x4

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x7

    if-ne v3, v0, :cond_f0

    :cond_e8
    iput v10, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    goto/16 :goto_17

    :cond_f0
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_f3
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5d

    :sswitch_data_f8
    .sparse-switch
        0x2b -> :sswitch_6d
        0x2d -> :sswitch_56
        0x2e -> :sswitch_82
        0x45 -> :sswitch_76
        0x65 -> :sswitch_76
    .end sparse-switch
.end method

.method private x()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_3
    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-ge v3, v4, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_17
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_25
    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    return-object v0

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    :cond_39
    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_40
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v1

    if-nez v1, :cond_61

    move v1, v2

    goto :goto_1a

    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_61
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private y()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :sswitch_18
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    :goto_1d
    return-void

    :cond_1e
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private z()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    if-nez v0, :cond_b

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaop;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return p1
.end method

.method private zzaec(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    aput p1, v0, v1

    return-void
.end method

.method private zzaed(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    if-eq v2, v3, :cond_5b

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1e
    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    array-length v4, v1

    iget v5, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    add-int/lit8 p1, p1, 0x1

    :cond_55
    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-lt v2, p1, :cond_20

    const/4 v0, 0x1

    :cond_5a
    return v0

    :cond_5b
    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    goto :goto_1e
.end method

.method static synthetic zzag(Lcom/google/android/gms/internal/zzaop;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return v0
.end method

.method static synthetic zzah(Lcom/google/android/gms/internal/zzaop;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    return v0
.end method

.method static synthetic zzai(Lcom/google/android/gms/internal/zzaop;)I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic zzaj(Lcom/google/android/gms/internal/zzaop;)I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private zzda(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    :goto_6
    if-ne v1, v0, :cond_50

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_4c

    if-eqz p1, :cond_db

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input at line "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    :cond_50
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_62

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    move v1, v2

    goto :goto_6

    :cond_62
    const/16 v4, 0x20

    if-eq v1, v4, :cond_dd

    const/16 v4, 0xd

    if-eq v1, v4, :cond_dd

    const/16 v4, 0x9

    if-ne v1, v4, :cond_70

    move v1, v2

    goto :goto_6

    :cond_70
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_c5

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    if-ne v2, v0, :cond_8d

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    if-nez v0, :cond_8d

    move v0, v1

    :goto_8c
    return v0

    :cond_8d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v3, v0

    sparse-switch v0, :sswitch_data_e0

    move v0, v1

    goto :goto_8c

    :sswitch_99
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_ae
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    goto/16 :goto_6

    :sswitch_b6
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->A()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    goto/16 :goto_6

    :cond_c5
    const/16 v0, 0x23

    if-ne v1, v0, :cond_d7

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->A()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    goto/16 :goto_6

    :cond_d7
    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    move v0, v1

    goto :goto_8c

    :cond_db
    const/4 v0, -0x1

    goto :goto_8c

    :cond_dd
    move v1, v2

    goto/16 :goto_6

    :sswitch_data_e0
    .sparse-switch
        0x2a -> :sswitch_99
        0x2f -> :sswitch_b6
    .end sparse-switch
.end method

.method private zze(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a

    const/4 v0, 0x1

    :goto_4
    return v0

    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->z()V

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private zzf(C)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    move v3, v0

    :goto_c
    if-ge v3, v1, :cond_4a

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    if-ne v3, p1, :cond_22

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3d

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->B()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    move v2, v0

    :cond_3b
    :goto_3b
    move v3, v2

    goto :goto_c

    :cond_3d
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3b

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    goto :goto_3b

    :cond_4a
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zzg(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2e

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_12

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    return-void

    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->B()C

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    :cond_1f
    :goto_1f
    move v2, v1

    goto :goto_7

    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    goto :goto_1f

    :cond_2e
    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zztd(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zztc(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->aYn:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaed(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhp:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhq:I

    :cond_2c
    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto :goto_1

    :cond_33
    move v0, v1

    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_4a
    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method private zztd(Ljava/lang/String;)Ljava/io/IOException;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaos;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaos;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaec(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzaec(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x49

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    :goto_e
    if-ge v0, v2, :cond_41

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhv:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public h()Lcom/google/android/gms/internal/zzaoq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhB:Lcom/google/android/gms/internal/zzaoq;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhC:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhz:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhA:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_1d
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhD:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_20
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhG:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_23
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_26
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_29
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    :pswitch_2c
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhI:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_13

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v1

    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a boolean but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    iput v4, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    long-to-double v0, v0

    :goto_22
    return-wide v0

    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    :cond_3b
    :goto_3b
    iput v5, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    if-nez v2, :cond_120

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_120

    :cond_53
    new-instance v2, Lcom/google/android/gms/internal/zzaos;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x66

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "JSON forbids NaN and infinities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaos;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a0
    if-eq v0, v2, :cond_a6

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b4

    :cond_a6
    if-ne v0, v2, :cond_b1

    const/16 v0, 0x27

    :goto_aa
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    goto :goto_3b

    :cond_b1
    const/16 v0, 0x22

    goto :goto_aa

    :cond_b4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_c0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    goto/16 :goto_3b

    :cond_c0
    if-eq v0, v5, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_22
.end method

.method public nextInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_77

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_68

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x59

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iput v6, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_76
    return v0

    :cond_77
    const/16 v1, 0x10

    if-ne v0, v1, :cond_f7

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    :goto_8f
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_182

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    if-eq v0, v2, :cond_fd

    const/16 v1, 0x9

    if-ne v0, v1, :cond_124

    :cond_fd
    if-ne v0, v2, :cond_121

    const/16 v0, 0x27

    :goto_101
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    :try_start_107
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_11c} :catch_11e

    goto/16 :goto_76

    :catch_11e
    move-exception v0

    goto/16 :goto_8f

    :cond_121
    const/16 v0, 0x22

    goto :goto_101

    :cond_124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_76
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_20

    iput v6, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    :goto_1f
    return-wide v0

    :cond_20
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    :goto_38
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_12b

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    if-eq v0, v2, :cond_a6

    const/16 v1, 0x9

    if-ne v0, v1, :cond_cd

    :cond_a6
    if-ne v0, v2, :cond_ca

    const/16 v0, 0x27

    :goto_aa
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    :try_start_b0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_c5} :catch_c7

    goto/16 :goto_1f

    :catch_c7
    move-exception v0

    goto/16 :goto_38

    :cond_ca
    const/16 v0, 0x22

    goto :goto_aa

    :cond_cd
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1f
.end method

.method public nextName()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->x()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected null but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->x()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;->zzf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bhu:Ljava/lang/String;

    goto :goto_10

    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaop;->bhs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaop;->bho:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto :goto_10

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a string but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaop;->bhn:Z

    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->u()I

    move-result v2

    :cond_c
    if-ne v2, v5, :cond_2e

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzaop;->zzaec(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_13
    iput v1, p0, Lcom/google/android/gms/internal/zzaop;->bhr:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhy:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->bhx:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_2e
    if-ne v2, v4, :cond_36

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaop;->zzaec(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_36
    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_42
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->bhw:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_4e
    const/16 v3, 0xe

    if-eq v2, v3, :cond_56

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5a

    :cond_56
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->y()V

    goto :goto_13

    :cond_5a
    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    const/16 v3, 0xc

    if-ne v2, v3, :cond_68

    :cond_62
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzg(C)V

    goto :goto_13

    :cond_68
    const/16 v3, 0x9

    if-eq v2, v3, :cond_70

    const/16 v3, 0xd

    if-ne v2, v3, :cond_76

    :cond_70
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaop;->zzg(C)V

    goto :goto_13

    :cond_76
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaop;->bht:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaop;->pos:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaop;->getColumnNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzaop.AnonymousClass1 (com.google.android.gms.internal.zzaop$1)
.class final Lcom/google/android/gms/internal/zzaop$1;
.super Lcom/google/android/gms/internal/zzanu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanu;-><init>()V

    return-void
.end method


# virtual methods
.method public zzi(Lcom/google/android/gms/internal/zzaop;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaof;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/zzaof;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaof;->k()V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaop;->zzag(Lcom/google/android/gms/internal/zzaop;)I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaop;->zzah(Lcom/google/android/gms/internal/zzaop;)I

    move-result v0

    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaop;->zza(Lcom/google/android/gms/internal/zzaop;I)I

    goto :goto_9

    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaop;->zza(Lcom/google/android/gms/internal/zzaop;I)I

    goto :goto_9

    :cond_28
    const/16 v1, 0xe

    if-ne v0, v1, :cond_32

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaop;->zza(Lcom/google/android/gms/internal/zzaop;I)I

    goto :goto_9

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaop;->zzai(Lcom/google/android/gms/internal/zzaop;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaop;->zzaj(Lcom/google/android/gms/internal/zzaop;)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x46

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
