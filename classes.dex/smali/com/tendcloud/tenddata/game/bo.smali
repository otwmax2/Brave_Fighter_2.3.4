###### Class com.tendcloud.tenddata.game.bo (com.tendcloud.tenddata.game.bo)
.class final Lcom/tendcloud/tenddata/game/bo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "gaandroid.talkingdata.net"

.field private static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "http://gaandroid.talkingdata.net/g/d?crc="

.field private static final d:Ljava/util/zip/CRC32;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "211.151.121.43"

    sput-object v0, Lcom/tendcloud/tenddata/game/bo;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bo;->d:Ljava/util/zip/CRC32;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Send data to server."

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bo;->b(Ljava/lang/String;)[B

    move-result-object v5

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_2e

    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after gzip size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/tendcloud/tenddata/game/bo;->d:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    sget-object v0, Lcom/tendcloud/tenddata/game/bo;->d:Ljava/util/zip/CRC32;

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    :try_start_38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "http://gaandroid.talkingdata.net/g/d?crc="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bo;->d:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gaandroid.talkingdata.net"

    sget-object v2, Lcom/tendcloud/tenddata/game/bo;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/g$d;->a()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post data operation response status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7e} :catch_84

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_88

    move v0, v6

    :goto_83
    return v0

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_88
    move v0, v7

    goto :goto_83
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 5

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_26
    .catchall {:try_start_6 .. :try_end_b} :catchall_39

    :try_start_b
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_4b
    .catchall {:try_start_b .. :try_end_14} :catchall_49

    if-eqz v1, :cond_1c

    :try_start_16
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_21

    :cond_1c
    :goto_1c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catch_26
    move-exception v0

    move-object v1, v2

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_49

    if-eqz v1, :cond_1c

    :try_start_2d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_1c

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catchall_39
    move-exception v0

    move-object v1, v2

    :goto_3b
    if-eqz v1, :cond_43

    :try_start_3d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    throw v0

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catchall_49
    move-exception v0

    goto :goto_3b

    :catch_4b
    move-exception v0

    goto :goto_28
.end method

.method private static c(Ljava/lang/String;)[B
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
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_2e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3e
    .catchall {:try_start_e .. :try_end_13} :catchall_4e

    :try_start_13
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1c} :catch_5f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_5d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_5b

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

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_2e
    move-exception v0

    move-object v1, v2

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_5b

    if-eqz v1, :cond_21

    :try_start_35
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_21

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_3e
    move-exception v0

    move-object v1, v2

    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5b

    if-eqz v1, :cond_21

    :try_start_45
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_21

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catchall_4e
    move-exception v0

    move-object v1, v2

    :goto_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    throw v0

    :catch_56
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catchall_5b
    move-exception v0

    goto :goto_50

    :catch_5d
    move-exception v0

    goto :goto_40

    :catch_5f
    move-exception v0

    goto :goto_30
.end method
