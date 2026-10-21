###### Class com.tendcloud.tenddata.game.bh (com.tendcloud.tenddata.game.bh)
.class final Lcom/tendcloud/tenddata/game/bh;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static e:J

.field static f:J

.field static g:Landroid/os/Handler;

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/util/zip/CRC32;

.field private static j:Ljava/lang/String;

.field private static final k:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->i:Ljava/util/zip/CRC32;

    const-string v0, "-----BEGIN CERTIFICATE-----\nMIIDyDCCArACCQD9bypp/+5VujANBgkqhkiG9w0BAQUFADCBpDELMAkGA1UEBhMC\nQ04xEDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcxGDAWBgNVBAoM\nD1RhbGtpbmdEYXRhLmNvbTEYMBYGA1UECwwPVGFsa2luZ0RhdGEuY29tMRIwEAYD\nVQQDDAl4ZHJpZy5jb20xKTAnBgkqhkiG9w0BCQEWGmhpZXJhcmNoLnBhbkB0ZW5k\nY2xvdWQuY29tMCAXDTE0MDUxNjA4MzkxMFoYDzIxMTQwNDIyMDgzOTEwWjCBpDEL\nMAkGA1UEBhMCQ04xEDAOBgNVBAgMB0JlaUppbmcxEDAOBgNVBAcMB0JlaUppbmcx\nGDAWBgNVBAoMD1RhbGtpbmdEYXRhLmNvbTEYMBYGA1UECwwPVGFsa2luZ0RhdGEu\nY29tMRIwEAYDVQQDDAl4ZHJpZy5jb20xKTAnBgkqhkiG9w0BCQEWGmhpZXJhcmNo\nLnBhbkB0ZW5kY2xvdWQuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC\nAQEArssg6Iz/jp1/5I20O0aCUcF7Vqrce6DdwblXCbcT44CRYUSwyGteQfPUYGPA\n/2kyk/H/maK5UC6SkI9TOeDs+CBz1oCvxLUd20kMF3J3FT2XENE3fwCmlcppYpdO\nHTZBn72GyYuVLj4lI3MRm8DZoPzYYj0TaZxrX3qpy8cNV4LC7BiBnJtExqAvB0q7\nfUzeDIKrhkFxPbzOUE5txNwwRLu+/neOQJQ48UPesMH3QbYLhCh+l8f9G6TQ1pND\ndcwACsDrVjFPab0w+N1jeev/k+bd5YLxEaQ3HtZvmgOXBL+kREZyKhctaHqcwbWK\nAwJHQeYmJbzw/V4/NQCIGhnlFQIDAQABMA0GCSqGSIb3DQEBBQUAA4IBAQCRp0QL\nydMOemUDkk7n+zIPGa1Ndt2BXJYIgzMbpuWI9h2rVXfz7K9k8PZs9stt1S5ek6TQ\nbWxnrQxanyx2jFf4h+erds0jwAcJrDRG8kFcRsLdx/BjKcBG91HjYuC65RD9eyt+\nXzrmdF8UCvDo2LrL+nkAbufd5XnbBa8I7Jucsu2wOkCa8oatnuorgnh/soEL6zcb\nbLgnCqqXUBKCg5U+mS2WFqEoBnJJoeKDRp08T5juhAJNF/EynX63qn9dS3IqxqeZ\nJ/urMkKVxUCffyZdbezTeljqaaxsQ8xFSK58TSVYFEr9jAGO+jKUWb0tKMSUr/tN\n82L5ZccC8n6eg0YU\n-----END CERTIFICATE-----"

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->j:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tendcloud/tenddata/game/bh;->e:J

    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/tendcloud/tenddata/game/bh;->f:J

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->g:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->k:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tendcloud/tenddata/game/bh;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/tendcloud/tenddata/game/bi;

    sget-object v1, Lcom/tendcloud/tenddata/game/bh;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bi;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bh;->g:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bh;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :catch_23
    move-exception v0

    const/4 v0, 0x0

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List2JsonString()# \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :cond_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_23

    move-result-object v0

    goto :goto_25
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 6

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    new-instance v4, Ljava/util/zip/Deflater;

    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-direct {v4, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    :try_start_e
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v3, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_4a
    .catchall {:try_start_e .. :try_end_13} :catchall_62

    :try_start_13
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1c} :catch_77
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_75
    .catchall {:try_start_13 .. :try_end_1c} :catchall_73

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_29

    :cond_21
    :goto_21
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_29
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_32
    move-exception v0

    move-object v1, v2

    :goto_34
    :try_start_34
    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_73

    :cond_3b
    if-eqz v1, :cond_21

    :try_start_3d
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_21

    :catch_41
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_4a
    move-exception v0

    move-object v1, v2

    :goto_4c
    :try_start_4c
    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_73

    :cond_53
    if-eqz v1, :cond_21

    :try_start_55
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_21

    :catch_59
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catchall_62
    move-exception v0

    move-object v1, v2

    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    throw v0

    :catch_6a
    move-exception v1

    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :catchall_73
    move-exception v0

    goto :goto_64

    :catch_75
    move-exception v0

    goto :goto_4c

    :catch_77
    move-exception v0

    goto :goto_34
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->c()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_20

    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostData()#Send data to server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_20
    :try_start_20
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before zlib size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/game/bh;->h:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_47
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bh;->a(Ljava/lang/String;)[B

    move-result-object v5

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after zlib size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_6c
    sget-object v0, Lcom/tendcloud/tenddata/game/bh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    sget-object v0, Lcom/tendcloud/tenddata/game/bh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "https://xdrig.com/push"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/az;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/bh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Send pushEvent"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_e4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push Send()#Post Event URL--------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_e4
    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    const-string v1, "xdrig.com"

    sget-object v2, Lcom/tendcloud/tenddata/game/az;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tendcloud/tenddata/game/bh;->j:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/g$d;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_fe

    move v0, v6

    :goto_fd
    return v0

    :cond_fe
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send pushEvent# response status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_11a} :catch_11c

    :cond_11a
    :goto_11a
    move v0, v7

    goto :goto_fd

    :catch_11c
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_11a

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11a
.end method

.method private static c()V
    .registers 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_2
    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    if-nez v0, :cond_3f

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PushController.mContext is null..."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_a

    :catch_1f
    move-exception v0

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send pushEvent error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    goto :goto_a

    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/tendcloud/tenddata/game/bg;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_5e
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send pushEvent success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    goto :goto_a

    :cond_7b
    sget-object v1, Lcom/tendcloud/tenddata/game/bh;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->a()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    sget-wide v4, Lcom/tendcloud/tenddata/game/bh;->e:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8e
    invoke-static {}, Lcom/tendcloud/tenddata/game/bc;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_97} :catch_1f

    goto :goto_5e
.end method
