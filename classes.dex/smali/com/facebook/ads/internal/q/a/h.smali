###### Class com.facebook.ads.internal.q.a.h (com.facebook.ads.internal.q.a.h)
.class public Lcom/facebook/ads/internal/q/a/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_28

    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    :cond_f
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_19
    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/h;->b([B)Ljava/lang/String;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_23} :catch_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_23} :catch_3f
    .catchall {:try_start_5 .. :try_end_23} :catchall_3a

    move-result-object v0

    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_48

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File not found or not accessible."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_31
    move-exception v0

    :try_start_32
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "No such algorithm."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_4a

    :goto_3e
    throw v0

    :catch_3f
    move-exception v0

    :try_start_40
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "IO exception."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_3a

    :catch_48
    move-exception v1

    goto :goto_27

    :catch_4a
    move-exception v1

    goto :goto_3e
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    move v4, v2

    :goto_8
    if-ge v4, v6, :cond_2e

    aget-byte v7, p0, v4

    ushr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    move v1, v2

    :goto_11
    if-ltz v0, :cond_28

    const/16 v3, 0x9

    if-gt v0, v3, :cond_28

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_1a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v7, 0xf

    add-int/lit8 v0, v1, 0x1

    const/4 v8, 0x1

    if-lt v1, v8, :cond_33

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    :cond_28
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_1a

    :cond_2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    move v1, v0

    move v0, v3

    goto :goto_11
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_20

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
