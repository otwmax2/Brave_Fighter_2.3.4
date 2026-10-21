###### Class com.chartboost.sdk.impl.n (com.chartboost.sdk.impl.n)
.class public Lcom/chartboost/sdk/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v11, -0x1

    .line 18
    .line 21
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_8} :catch_12b
    .catchall {:try_start_3 .. :try_end_8} :catchall_122

    .line 22
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_d} :catch_12f
    .catchall {:try_start_8 .. :try_end_d} :catchall_127

    .line 32
    :try_start_d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    const-string v7, "{{"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "{%"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 36
    :cond_3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_43} :catch_44
    .catchall {:try_start_d .. :try_end_43} :catchall_b6

    goto :goto_1a

    .line 86
    :catch_44
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 87
    :goto_47
    :try_start_47
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4d

    .line 89
    :catchall_4d
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 90
    :goto_50
    if-eqz v2, :cond_55

    .line 91
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_11c

    .line 96
    :cond_55
    :goto_55
    if-eqz v3, :cond_5a

    .line 97
    :try_start_57
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_11f

    .line 99
    :cond_5a
    :goto_5a
    throw v0

    .line 43
    :cond_5b
    :try_start_5b
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v4

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    move v1, v0

    .line 46
    goto :goto_64

    .line 47
    :cond_7f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    add-int/2addr v0, v1

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    :goto_91
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 54
    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 55
    const-string v4, "{%"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 57
    if-eq v1, v11, :cond_b8

    if-eq v4, v11, :cond_b8

    .line 58
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 61
    :goto_ab
    if-ne v4, v11, :cond_bd

    .line 62
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_b0
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 89
    :catchall_b6
    move-exception v0

    goto :goto_50

    .line 59
    :cond_b8
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_ab

    .line 64
    :cond_bd
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 65
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 71
    :goto_e4
    invoke-virtual {v7, v1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v11, v4, :cond_c8

    .line 72
    add-int v10, v4, v9

    invoke-virtual {v7, v4, v10, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_e4

    .line 76
    :cond_f5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b0

    .line 81
    :cond_f9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required template parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5b .. :try_end_10d} :catch_44
    .catchall {:try_start_5b .. :try_end_10d} :catchall_b6

    .line 90
    :cond_10d
    if-eqz v2, :cond_112

    .line 91
    :try_start_10f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_118

    .line 96
    :cond_112
    :goto_112
    if-eqz v3, :cond_117

    .line 97
    :try_start_114
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_11a

    .line 85
    :cond_117
    :goto_117
    return-object v0

    .line 93
    :catch_118
    move-exception v1

    goto :goto_112

    .line 99
    :catch_11a
    move-exception v1

    goto :goto_117

    .line 93
    :catch_11c
    move-exception v1

    goto/16 :goto_55

    .line 99
    :catch_11f
    move-exception v1

    goto/16 :goto_5a

    .line 89
    :catchall_122
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_50

    :catchall_127
    move-exception v0

    move-object v2, v1

    goto/16 :goto_50

    .line 86
    :catch_12b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_47

    :catch_12f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_47
.end method
