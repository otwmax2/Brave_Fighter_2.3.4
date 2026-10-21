###### Class com.unity3d.ads.misc.Utilities (com.unity3d.ads.misc.Utilities)
.class public Lcom/unity3d/ads/misc/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sha256(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->Sha256([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Sha256([B)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_4

    .line 57
    :goto_3
    return-object v2

    .line 49
    :cond_4
    :try_start_4
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_18

    move-result-object v1

    .line 55
    .local v1, "m":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 57
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 50
    .end local v1    # "m":Ljava/security/MessageDigest;
    :catch_18
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "SHA-256 algorithm not found"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "primary"    # Lorg/json/JSONObject;
    .param p1, "secondary"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_3

    .line 206
    .end local p1    # "secondary":Lorg/json/JSONObject;
    :goto_2
    return-object p1

    .line 184
    .restart local p1    # "secondary":Lorg/json/JSONObject;
    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    .line 185
    goto :goto_2

    .line 188
    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v2, "newJsonObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 190
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 195
    .end local v0    # "key":Ljava/lang/String;
    :cond_24
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 196
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5a

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5a

    .line 199
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unity3d/ads/misc/Utilities;->mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    .line 202
    :cond_5a
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    .end local v0    # "key":Ljava/lang/String;
    :cond_62
    move-object p1, v2

    .line 206
    goto :goto_2
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 10
    .param p0, "fileToRead"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 112
    if-nez p0, :cond_5

    move-object v3, v7

    .line 157
    :cond_4
    :goto_4
    return-object v3

    .line 116
    :cond_5
    const-string v3, ""

    .line 117
    .local v3, "fileContent":Ljava/lang/String;
    const/4 v0, 0x0

    .line 118
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 120
    .local v4, "fr":Ljava/io/FileReader;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 122
    :try_start_15
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_3e

    .line 123
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_54

    .line 126
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2a

    .line 127
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_57

    move-result-object v3

    goto :goto_1f

    :cond_2a
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 135
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2c
    if-eqz v0, :cond_31

    .line 136
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_46

    .line 143
    :cond_31
    :goto_31
    if-eqz v4, :cond_4

    .line 144
    :try_start_33
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_4

    .line 147
    :catch_37
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Couldn\'t close FileReader"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v2

    .line 131
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    const-string v7, "Problem reading file"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 132
    const/4 v3, 0x0

    goto :goto_2c

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_46
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "Couldn\'t close BufferedReader"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_31

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4d
    const-string v8, "File did not exist or couldn\'t be read"

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    move-object v3, v7

    .line 157
    goto :goto_4

    .line 130
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_54
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3f

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_57
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3f
.end method

.method public static readFileBytes(Ljava/io/File;)[B
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_4

    .line 162
    const/4 v4, 0x0

    .line 177
    :goto_3
    return-object v4

    .line 165
    :cond_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v1, "inputStream":Ljava/io/InputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 170
    .local v0, "buffer":[B
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_12

    .line 174
    :cond_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 175
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 177
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_3
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;J)V

    .line 26
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;J)V
    .registers 8
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .local v0, "handler":Landroid/os/Handler;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    .line 32
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :goto_12
    return-void

    .line 34
    :cond_13
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [B

    .prologue
    .line 61
    const-string v1, ""

    .line 62
    .local v1, "output":Ljava/lang/String;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_39

    aget-byte v2, p0, v3

    .line 64
    .local v2, "rawByte":B
    and-int/lit16 v0, v2, 0xff

    .line 67
    .local v0, "b":I
    const/16 v5, 0xf

    if-gt v0, v5, :cond_21

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 74
    .end local v0    # "b":I
    .end local v2    # "rawByte":B
    :cond_39
    return-object v1
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8
    .param p0, "fileToWrite"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v3, 0x0

    .line 108
    :cond_3
    :goto_3
    return v3

    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 86
    .local v3, "success":Z
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_40
    .catchall {:try_start_6 .. :try_end_b} :catchall_54

    .line 87
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_65
    .catchall {:try_start_b .. :try_end_15} :catchall_62

    .line 96
    if-eqz v2, :cond_1a

    .line 97
    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_38

    :cond_1a
    move-object v1, v2

    .line 104
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1b
    :goto_1b
    if-eqz v3, :cond_3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 99
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_38
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error closing FileOutputStream"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 102
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1b

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_40
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_41
    const/4 v3, 0x0

    .line 92
    :try_start_42
    const-string v4, "Could not write file"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_54

    .line 96
    if-eqz v1, :cond_1b

    .line 97
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_1b

    .line 99
    :catch_4d
    move-exception v0

    .line 100
    const-string v4, "Error closing FileOutputStream"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1b

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    .line 96
    :goto_55
    if-eqz v1, :cond_5a

    .line 97
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 101
    :cond_5a
    :goto_5a
    throw v4

    .line 99
    :catch_5b
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Error closing FileOutputStream"

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5a

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_62
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_55

    .line 90
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_65
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_41
.end method
