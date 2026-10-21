###### Class com.google.android.gms.ads.internal.client.zzzz$zyv (com.google.android.gms.ads.internal.client.zzzz$zyv)
.class public Lcom/google/android/gms/ads/internal/client/zzzz$zyv;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:C = '='

.field private static final c:[B

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:[Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:[Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/lang/String;

.field private static m:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_76

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    move v0, v1

    :goto_12
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    array-length v3, v3

    if-lt v0, v3, :cond_5e

    move v0, v1

    :goto_18
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    array-length v3, v3

    if-lt v0, v3, :cond_67

    const-string v0, ""

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d:Ljava/lang/String;

    const-string v0, "Sr5mxMzCjH"

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_73

    move v0, v2

    :goto_33
    sput-boolean v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->f:Z

    const-string v0, "s"

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->h:Ljava/lang/String;

    const-string v0, "160610"

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->i:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVAfaaUTvKG0/c0="

    aput-object v3, v0, v1

    const-string v1, "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVYaZ6YQsKi6/c0="

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVcfZaMWuayy/cA="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVUaYKUdvKGw/cs="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "7y2nM/gmGlMQvqHTHaI1VLnsoASEJFdl+Ph7WVoeaKYSsKi2/c0="

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->j:[Ljava/lang/String;

    const/16 v0, 0x39

    sput v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->k:I

    return-void

    :cond_5e
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    const/16 v4, 0x7f

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_67
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    aget-char v4, v4, v0

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_73
    move v0, v1

    goto :goto_33

    nop

    :array_76
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C[BI)I
    .registers 12

    const/16 v5, 0x3d

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    aget-char v0, p0, v2

    if-ne v0, v5, :cond_84

    move v0, v1

    :goto_a
    aget-char v4, p0, v1

    if-ne v4, v5, :cond_f

    move v0, v3

    :cond_f
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    const/4 v5, 0x0

    aget-char v5, p0, v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    aget-char v6, p0, v3

    aget-byte v5, v5, v6

    sget-object v6, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    aget-char v7, p0, v1

    aget-byte v6, v6, v7

    sget-object v7, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    aget-char v8, p0, v2

    aget-byte v7, v7, v8

    packed-switch v0, :pswitch_data_86

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t decode."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    shl-int/lit8 v0, v4, 0x2

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    :goto_3f
    return v3

    :pswitch_40
    add-int/lit8 v0, p2, 0x1

    shl-int/lit8 v2, v4, 0x2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v3, v5, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    shl-int/lit8 v2, v5, 0x4

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v3, v1

    goto :goto_3f

    :pswitch_5c
    add-int/lit8 v0, p2, 0x1

    shl-int/lit8 v1, v4, 0x2

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v3, v5, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v3, v5, 0x4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v4, v6, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    shl-int/lit8 v0, v6, 0x6

    and-int/lit16 v0, v0, 0xc0

    and-int/lit8 v3, v7, 0x3f

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v3, v2

    goto :goto_3f

    :cond_84
    move v0, v2

    goto :goto_a

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_33
        :pswitch_40
        :pswitch_5c
    .end packed-switch
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->m:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x6

    if-nez p0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->m:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->m:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->l:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->m:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, ""

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x55d4a80

    cmp-long v0, v4, v6

    if-lez v0, :cond_98

    :cond_81
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v1, ""

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    const-wide/16 v2, 0x9c4

    :try_start_95
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_98} :catch_9c

    :cond_98
    :goto_98
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->l:Ljava/lang/String;

    goto/16 :goto_5

    :catch_9c
    move-exception v0

    goto :goto_98
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a([B)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static a([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const/16 v8, 0x3d

    if-gtz p2, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    new-array v4, v0, [C

    sub-int v0, p2, p1

    move v1, v0

    move v0, v2

    :goto_14
    const/4 v3, 0x3

    if-ge v1, v3, :cond_43

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8c

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v0, 0x1

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v6, v1, 0x2

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    add-int/lit8 v0, v3, 0x1

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v5, v1

    aput-char v1, v4, v3

    add-int/lit8 v1, v0, 0x1

    aput-char v8, v4, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v8, v4, v1

    :cond_3c
    :goto_3c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4, v2, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_7

    :cond_43
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v3

    add-int/lit8 v3, v0, 0x1

    sget-object v6, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v7, v5, 0x12

    aget-char v6, v6, v7

    aput-char v6, v4, v0

    add-int/lit8 v0, v3, 0x1

    sget-object v6, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v4, v3

    add-int/lit8 v6, v0, 0x1

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v3, v3, v7

    aput-char v3, v4, v0

    add-int/lit8 v3, v6, 0x1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    and-int/lit8 v5, v5, 0x3f

    aget-char v0, v0, v5

    aput-char v0, v4, v6

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, v1, -0x3

    move v1, v0

    move v0, v3

    goto :goto_14

    :cond_8c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v6, v1, 0xa

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    add-int/lit8 v0, v3, 0x1

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v4, v3

    add-int/lit8 v3, v0, 0x1

    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v5, v1

    aput-char v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    aput-char v8, v4, v3

    goto/16 :goto_3c
.end method

.method private static a(Ljava/lang/String;[B)[B
    .registers 10

    const/16 v7, 0x100

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-array v4, v7, [B

    move v1, v0

    :goto_a
    if-lt v1, v7, :cond_16

    move v1, v0

    move v2, v0

    :goto_e
    if-lt v2, v7, :cond_1c

    move v1, v0

    move v2, v0

    :goto_12
    array-length v3, p1

    if-lt v0, v3, :cond_33

    return-object p1

    :cond_16
    int-to-byte v2, v1

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    aget-byte v5, v4, v2

    add-int/2addr v1, v5

    array-length v5, v3

    rem-int v5, v2, v5

    aget-byte v5, v3, v5

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v5, v4, v2

    aget-byte v6, v4, v1

    aput-byte v6, v4, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_33
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    aget-byte v2, v4, v3

    add-int/2addr v1, v2

    and-int/lit16 v2, v1, 0xff

    aget-byte v1, v4, v3

    aget-byte v5, v4, v2

    aput-byte v5, v4, v3

    int-to-byte v5, v1

    aput-byte v5, v4, v2

    aget-byte v5, v4, v3

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v5, v4, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v6, p1, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_12
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "2J7/gAiY29ooOAiVXvlHGiQvHlAtxWDlA/Lo9C5A3QRD5pvR"

    const-string v1, "j0nHlIG7llF"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ti="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_6e} :catch_70

    move-result-object v0

    :goto_6f
    return-object v0

    :catch_70
    move-exception v0

    const-string v0, ""

    goto :goto_6f
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->l:Ljava/lang/String;

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->f:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return-object p1

    :cond_6
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    if-nez v1, :cond_33

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->d:Ljava/lang/String;

    :cond_12
    sget v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->k:I

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    :goto_2e
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_41

    :cond_33
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    aget-object p1, v0, p2

    goto :goto_5

    :cond_41
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_50
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->j:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    :goto_57
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->j:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->g:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v6, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_1e

    array-length v0, v5

    if-ne v2, v0, :cond_43

    move-object v0, v5

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v4, 0x3d

    if-eq v7, v4, :cond_33

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    array-length v4, v4

    if-ge v7, v4, :cond_40

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c:[B

    aget-byte v4, v4, v7

    const/16 v8, 0x7f

    if-eq v4, v8, :cond_40

    :cond_33
    add-int/lit8 v4, v3, 0x1

    aput-char v7, v6, v3

    array-length v3, v6

    if-ne v4, v3, :cond_49

    invoke-static {v6, v5, v2}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a([C[BI)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_43
    new-array v0, v2, [B

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d

    :cond_49
    move v3, v4

    goto :goto_40
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    :goto_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    return-object v0

    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public static nc(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x84

    if-ge p3, v0, :cond_a

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    const/16 v0, 0x140

    if-ge p3, v0, :cond_14

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_14
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

###### Class com.google.android.gms.ads.internal.client.zzzz$zyv.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzzz$zyv$1)
.class Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->a:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->a:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzzz$zyv;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzzz$zyv$1;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    goto :goto_36
.end method
