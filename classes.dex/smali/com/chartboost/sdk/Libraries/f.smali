###### Class com.chartboost.sdk.Libraries.f (com.chartboost.sdk.Libraries.f)
.class public Lcom/chartboost/sdk/Libraries/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/chartboost/sdk/Libraries/g;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Libraries/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/chartboost/sdk/impl/s;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/s;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/s;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    .line 75
    new-instance v2, Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    .line 76
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    :try_start_25
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/io/File;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_37

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v4, v2}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_102

    .line 92
    :cond_37
    :goto_37
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v4, "track"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->b:Ljava/io/File;

    .line 93
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v4, "session"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/io/File;

    .line 101
    const/4 v2, 0x2

    new-array v6, v2, [Lcom/chartboost/sdk/Libraries/g;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    aput-object v3, v6, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Libraries/g;

    aput-object v2, v6, v3

    .line 102
    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_73
    if-ge v5, v7, :cond_19f

    aget-object v8, v6, v5

    .line 104
    :try_start_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    if-ne v8, v2, :cond_108

    const/4 v2, 0x1

    move v4, v2

    .line 105
    :goto_7f
    if-eqz v8, :cond_177

    if-nez v4, :cond_89

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/Libraries/f;->a()Z

    move-result v2

    if-eqz v2, :cond_177

    .line 106
    :cond_89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget v2, v2, Lcom/chartboost/sdk/Model/e;->w:I

    int-to-long v12, v2

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v10, v2

    .line 107
    new-instance v2, Ljava/io/File;

    iget-object v3, v8, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v9, "templates"

    invoke-direct {v2, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 110
    if-eqz v9, :cond_13c

    .line 111
    array-length v12, v9

    const/4 v2, 0x0

    move v3, v2

    :goto_b5
    if-ge v3, v12, :cond_13c

    aget-object v13, v9, v3

    .line 112
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 113
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 114
    if-eqz v14, :cond_10c

    .line 115
    array-length v15, v14

    const/4 v2, 0x0

    :goto_c7
    if-ge v2, v15, :cond_10c

    aget-object v16, v14, v2

    .line 116
    if-nez v4, :cond_d5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    cmp-long v17, v18, v10

    if-gez v17, :cond_ff

    .line 117
    :cond_d5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_ff

    .line 118
    const-string v17, "FileCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to delete "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ff} :catch_17c

    .line 115
    :cond_ff
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    .line 85
    :catch_102
    move-exception v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 104
    :cond_108
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_7f

    .line 122
    :cond_10c
    :try_start_10c
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_137

    array-length v2, v2

    if-nez v2, :cond_137

    .line 125
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_137

    .line 126
    const-string v2, "FileCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to delete "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_137
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_b5

    .line 133
    :cond_13c
    new-instance v2, Ljava/io/File;

    iget-object v3, v8, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v9, ".adId"

    invoke-direct {v2, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_177

    if-nez v4, :cond_155

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_177

    .line 136
    :cond_155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_177

    .line 137
    const-string v3, "FileCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to delete "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_177} :catch_17c

    .line 102
    :cond_177
    :goto_177
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_73

    .line 140
    :catch_17c
    move-exception v2

    .line 141
    const-string v3, "FileCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while cleaning up templates directory at "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v8, Lcom/chartboost/sdk/Libraries/g;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_177

    .line 145
    :cond_19f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public declared-synchronized a(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 167
    monitor-enter p0

    const/4 v1, 0x0

    .line 169
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/bg;->b(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 170
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12
    .catchall {:try_start_2 .. :try_end_10} :catchall_25

    .line 175
    :goto_10
    monitor-exit p0

    return-object v0

    .line 171
    :catch_12
    move-exception v0

    .line 172
    :try_start_13
    const-string v2, "FileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "readJSONObject"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    move-object v0, v1

    goto :goto_10

    .line 167
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;[B)V
    .registers 6

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/bg;->a(Ljava/io/File;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    .line 159
    :goto_4
    monitor-exit p0

    return-void

    .line 155
    :catch_6
    move-exception v0

    .line 156
    :try_start_7
    const-string v1, "FileCache"

    const-string v2, "IOException attempting to write cache to disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeToDisk(File, byte[])"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_4

    .line 154
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->c()Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_20

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/chartboost/sdk/i;->n:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_16

    if-nez v0, :cond_20

    .line 215
    const/4 v0, 0x1

    .line 221
    :goto_15
    return v0

    .line 217
    :catch_16
    move-exception v0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isExternalStorageAvailable"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 220
    :cond_20
    const-string v0, "FileCache"

    const-string v1, "External Storage unavailable"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b()Lorg/json/JSONArray;
    .registers 7

    .prologue
    .line 233
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_2d

    .line 236
    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    .line 237
    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 238
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 241
    :cond_2d
    return-object v1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    .line 227
    :cond_a
    const/4 v0, 0x0

    .line 229
    :goto_b
    return v0

    .line 228
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_b
.end method

.method public declared-synchronized b(Ljava/io/File;)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 183
    monitor-enter p0

    if-nez p1, :cond_6

    .line 193
    :goto_4
    monitor-exit p0

    return-object v0

    .line 188
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/chartboost/sdk/impl/bg;->b(Ljava/io/File;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b
    .catchall {:try_start_6 .. :try_end_9} :catchall_1d

    move-result-object v0

    goto :goto_4

    .line 189
    :catch_b
    move-exception v1

    .line 190
    :try_start_c
    const-string v2, "FileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "readByteArrayFromDisk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1d

    goto :goto_4

    .line 183
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/io/File;)J
    .registers 9

    .prologue
    .line 296
    const-wide/16 v0, 0x0

    .line 298
    if-eqz p1, :cond_20

    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 299
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 300
    if-eqz v3, :cond_26

    .line 301
    array-length v6, v3

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v6, :cond_26

    aget-object v4, v3, v2

    .line 302
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 301
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_12

    .line 305
    :cond_20
    if-eqz p1, :cond_26

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_27

    move-result-wide v0

    .line 311
    :cond_26
    :goto_26
    return-wide v0

    .line 308
    :catch_27
    move-exception v2

    .line 309
    const-class v3, Lcom/chartboost/sdk/Libraries/f;

    const-string v4, "getFolderSize"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_26
.end method

.method public c()Lorg/json/JSONObject;
    .registers 11

    .prologue
    .line 245
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v3, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    const-string v1, "templates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_5f

    .line 256
    array-length v7, v6

    const/4 v1, 0x0

    :goto_45
    if-ge v1, v7, :cond_5f

    aget-object v8, v6, v1

    .line 257
    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5c

    .line 258
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 256
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 262
    :cond_5f
    invoke-static {v2, v0, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_62} :catch_63

    goto :goto_19

    .line 265
    :catch_63
    move-exception v0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWebViewCacheAssets"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 269
    :cond_6d
    return-object v2
.end method

.method public d()Lcom/chartboost/sdk/Libraries/g;
    .registers 7

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 274
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Libraries/g;

    .line 275
    if-nez v1, :cond_2d

    .line 277
    :try_start_10
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/s;->b()Ljava/io/File;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_2d

    .line 279
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    new-instance v5, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v5, v2}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/chartboost/sdk/Libraries/g;

    move-object v1, v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_30

    .line 287
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_3b

    .line 292
    :goto_2f
    return-object v1

    .line 282
    :catch_30
    move-exception v2

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentLocations"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d

    .line 292
    :cond_3b
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    goto :goto_2f
.end method

.method public d(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 343
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_30
    .catchall {:try_start_1 .. :try_end_8} :catchall_41

    .line 344
    const-wide/16 v2, 0x0

    :try_start_a
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 345
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 346
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 347
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_19} :catch_51
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_4f
    .catchall {:try_start_a .. :try_end_19} :catchall_4d

    .line 354
    if-eqz v1, :cond_1e

    .line 355
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_49

    .line 359
    :cond_1e
    :goto_1e
    return-void

    .line 348
    :catch_1f
    move-exception v0

    move-object v1, v2

    .line 349
    :goto_21
    :try_start_21
    const-string v2, "FileCache"

    const-string v3, "File not found when attempting to touch"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_4d

    .line 354
    if-eqz v1, :cond_1e

    .line 355
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 357
    :catch_2e
    move-exception v0

    goto :goto_1e

    .line 350
    :catch_30
    move-exception v0

    move-object v1, v2

    .line 351
    :goto_32
    :try_start_32
    const-string v2, "FileCache"

    const-string v3, "IOException when attempting to touch file"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4d

    .line 354
    if-eqz v1, :cond_1e

    .line 355
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_1e

    .line 357
    :catch_3f
    move-exception v0

    goto :goto_1e

    .line 353
    :catchall_41
    move-exception v0

    move-object v1, v2

    .line 354
    :goto_43
    if-eqz v1, :cond_48

    .line 355
    :try_start_45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 357
    :cond_48
    :goto_48
    throw v0

    :catch_49
    move-exception v0

    goto :goto_1e

    :catch_4b
    move-exception v1

    goto :goto_48

    .line 353
    :catchall_4d
    move-exception v0

    goto :goto_43

    .line 350
    :catch_4f
    move-exception v0

    goto :goto_32

    .line 348
    :catch_51
    move-exception v0

    goto :goto_21
.end method

.method public e()Lorg/json/JSONObject;
    .registers 11

    .prologue
    .line 315
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/g;

    .line 317
    if-eqz v0, :cond_1e

    .line 318
    const-string v2, ".chartboost-external-folder-size"

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    :cond_1e
    const-string v0, ".chartboost-internal-folder-size"

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v2, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_8a

    array-length v0, v3

    if-lez v0, :cond_8a

    .line 325
    array-length v4, v3

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v4, :cond_8a

    aget-object v5, v3, v0

    .line 326
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 330
    if-eqz v7, :cond_80

    .line 331
    const-string v8, "count"

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :cond_80
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 335
    :cond_8a
    return-object v1
.end method
