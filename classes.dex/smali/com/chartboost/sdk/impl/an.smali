###### Class com.chartboost.sdk.impl.an (com.chartboost.sdk.impl.an)
.class public Lcom/chartboost/sdk/impl/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/an;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/ad",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/chartboost/sdk/impl/ao;

.field private final d:Lcom/chartboost/sdk/impl/ai;

.field private final e:Lcom/chartboost/sdk/Libraries/i;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/chartboost/sdk/impl/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/af",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/chartboost/sdk/impl/ag;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ao;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Lcom/chartboost/sdk/impl/ad;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/impl/ao;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/impl/ad",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/chartboost/sdk/impl/an;->b:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/ao;

    .line 51
    iput-object p3, p0, Lcom/chartboost/sdk/impl/an;->d:Lcom/chartboost/sdk/impl/ai;

    .line 52
    iput-object p4, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 53
    iput-object p5, p0, Lcom/chartboost/sdk/impl/an;->f:Landroid/os/Handler;

    .line 54
    iput-object p6, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    .line 55
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ad;)Lcom/chartboost/sdk/impl/ag;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ad",
            "<TT;>;)",
            "Lcom/chartboost/sdk/impl/ag;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/16 v1, 0x2710

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_3
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/ad;I)Lcom/chartboost/sdk/impl/ag;
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    .line 113
    :catch_8
    move-exception v2

    .line 114
    const/4 v3, 0x1

    if-ge v0, v3, :cond_11

    .line 115
    mul-int/lit8 v1, v1, 0x2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 118
    :cond_11
    throw v2
.end method

.method private a(Lcom/chartboost/sdk/impl/ad;I)Lcom/chartboost/sdk/impl/ag;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ad",
            "<TT;>;I)",
            "Lcom/chartboost/sdk/impl/ag;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ad;->a()Lcom/chartboost/sdk/impl/ae;

    move-result-object v3

    .line 127
    iget-object v4, v3, Lcom/chartboost/sdk/impl/ae;->a:Ljava/util/Map;

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->c:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ad;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 130
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 133
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 136
    if-eqz v4, :cond_40

    .line 137
    :try_start_1d
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3b

    goto :goto_25

    .line 241
    :catchall_3b
    move-exception v0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 142
    :cond_40
    :try_start_40
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 144
    iget-object v0, v3, Lcom/chartboost/sdk/impl/ae;->b:[B

    if-eqz v0, :cond_7b

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 146
    iget-object v0, v3, Lcom/chartboost/sdk/impl/ae;->b:[B

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 147
    iget-object v0, v3, Lcom/chartboost/sdk/impl/ae;->c:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 148
    const-string v0, "Content-Type"

    iget-object v1, v3, Lcom/chartboost/sdk/impl/ae;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_3b

    .line 152
    :cond_68
    :try_start_68
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_9a

    .line 153
    :try_start_71
    iget-object v0, v3, Lcom/chartboost/sdk/impl/ae;->b:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_1cd

    .line 156
    if-eqz v1, :cond_7b

    .line 157
    :try_start_78
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_1b0
    .catchall {:try_start_78 .. :try_end_7b} :catchall_3b

    .line 164
    :cond_7b
    :goto_7b
    :try_start_7b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_3b

    move-result-wide v0

    .line 168
    :try_start_81
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_a2

    move-result v4

    .line 170
    :try_start_85
    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 171
    sub-long v0, v6, v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/ad;->h:J

    .line 173
    const/4 v0, -0x1

    if-ne v4, v0, :cond_ae

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9a
    .catchall {:try_start_85 .. :try_end_9a} :catchall_3b

    .line 155
    :catchall_9a
    move-exception v0

    move-object v1, v2

    .line 156
    :goto_9c
    if-eqz v1, :cond_a1

    .line 157
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_1b3
    .catchall {:try_start_9e .. :try_end_a1} :catchall_3b

    .line 159
    :cond_a1
    :goto_a1
    :try_start_a1
    throw v0

    .line 170
    :catchall_a2
    move-exception v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 171
    sub-long v0, v6, v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/ad;->h:J

    throw v2
    :try_end_ae
    .catchall {:try_start_a1 .. :try_end_ae} :catchall_3b

    .line 181
    :cond_ae
    :try_start_ae
    invoke-static {v4}, Lcom/chartboost/sdk/impl/an;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 182
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    if-eqz v0, :cond_175

    .line 183
    new-instance v8, Ljava/io/File;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_df
    .catchall {:try_start_ae .. :try_end_df} :catchall_130

    .line 189
    :try_start_df
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_13b

    move-result-object v3

    .line 190
    :try_start_e3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_1c4

    .line 191
    :try_start_e8
    invoke-static {v3, v1}, Lcom/chartboost/sdk/impl/bh;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_1c8

    .line 194
    if-eqz v3, :cond_f0

    .line 195
    :try_start_ed
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_1b6
    .catchall {:try_start_ed .. :try_end_f0} :catchall_130

    .line 200
    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f5

    .line 201
    :try_start_f2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_1b9
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_130

    .line 206
    :cond_f5
    :goto_f5
    :try_start_f5
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_189

    .line 207
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_148

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after failing to rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_130
    .catchall {:try_start_f5 .. :try_end_130} :catchall_130

    .line 236
    :catchall_130
    move-exception v0

    :try_start_131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, p1, Lcom/chartboost/sdk/impl/ad;->i:J

    throw v0
    :try_end_13b
    .catchall {:try_start_131 .. :try_end_13b} :catchall_3b

    .line 193
    :catchall_13b
    move-exception v0

    move-object v1, v2

    .line 194
    :goto_13d
    if-eqz v1, :cond_142

    .line 195
    :try_start_13f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_1bc
    .catchall {:try_start_13f .. :try_end_142} :catchall_130

    .line 200
    :cond_142
    :goto_142
    if-eqz v2, :cond_147

    .line 201
    :try_start_144
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_1be
    .catchall {:try_start_144 .. :try_end_147} :catchall_130

    .line 203
    :cond_147
    :goto_147
    :try_start_147
    throw v0

    .line 209
    :cond_148
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ad;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_175
    .catchall {:try_start_147 .. :try_end_175} :catchall_130

    .line 215
    :cond_175
    :try_start_175
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_19b
    .catchall {:try_start_175 .. :try_end_178} :catchall_1a5

    move-result-object v2

    .line 219
    :goto_179
    if-eqz v2, :cond_1a1

    .line 220
    :try_start_17b
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bh;->b(Ljava/io/InputStream;)[B
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_1a5

    move-result-object v0

    .line 226
    :goto_184
    if-eqz v2, :cond_189

    .line 227
    :try_start_186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_1c0
    .catchall {:try_start_186 .. :try_end_189} :catchall_130

    .line 236
    :cond_189
    :goto_189
    :try_start_189
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, p1, Lcom/chartboost/sdk/impl/ad;->i:J

    .line 239
    new-instance v1, Lcom/chartboost/sdk/impl/ag;

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/impl/ag;-><init>(I[B)V
    :try_end_197
    .catchall {:try_start_189 .. :try_end_197} :catchall_3b

    .line 241
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    return-object v1

    .line 216
    :catch_19b
    move-exception v0

    .line 217
    :try_start_19c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_179

    .line 222
    :cond_1a1
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1a4
    .catchall {:try_start_19c .. :try_end_1a4} :catchall_1a5

    goto :goto_184

    .line 225
    :catchall_1a5
    move-exception v0

    .line 226
    if-eqz v2, :cond_1ab

    .line 227
    :try_start_1a8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1c2
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_130

    .line 229
    :cond_1ab
    :goto_1ab
    :try_start_1ab
    throw v0

    .line 233
    :cond_1ac
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1af
    .catchall {:try_start_1ab .. :try_end_1af} :catchall_130

    goto :goto_189

    .line 159
    :catch_1b0
    move-exception v0

    goto/16 :goto_7b

    :catch_1b3
    move-exception v1

    goto/16 :goto_a1

    .line 197
    :catch_1b6
    move-exception v2

    goto/16 :goto_f0

    .line 203
    :catch_1b9
    move-exception v1

    goto/16 :goto_f5

    .line 197
    :catch_1bc
    move-exception v1

    goto :goto_142

    .line 203
    :catch_1be
    move-exception v1

    goto :goto_147

    .line 229
    :catch_1c0
    move-exception v1

    goto :goto_189

    :catch_1c2
    move-exception v1

    goto :goto_1ab

    .line 193
    :catchall_1c4
    move-exception v0

    move-object v1, v3

    goto/16 :goto_13d

    :catchall_1c8
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_13d

    .line 155
    :catchall_1cd
    move-exception v0

    goto/16 :goto_9c
.end method

.method private static a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    const/16 v2, 0x64

    if-gt v2, p0, :cond_16

    const/16 v2, 0xc8

    if-ge p0, v2, :cond_16

    move v2, v0

    .line 256
    :goto_b
    if-nez v2, :cond_18

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_18

    const/16 v2, 0x130

    if-eq p0, v2, :cond_18

    :goto_15
    return v0

    :cond_16
    move v2, v1

    .line 255
    goto :goto_b

    :cond_18
    move v0, v1

    .line 256
    goto :goto_15
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/an;)I
    .registers 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget v0, v0, Lcom/chartboost/sdk/impl/ad;->d:I

    iget-object v1, p1, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget v1, v1, Lcom/chartboost/sdk/impl/ad;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 26
    .local p0, "this":Lcom/chartboost/sdk/impl/an;, "Lcom/chartboost/sdk/impl/an<TT;>;"
    check-cast p1, Lcom/chartboost/sdk/impl/an;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/an;)I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;

    if-eqz v0, :cond_2d

    .line 62
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/af;->b:Lcom/chartboost/sdk/Model/CBError;

    if-nez v0, :cond_16

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/af;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->h:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/ag;)V

    .line 104
    :cond_15
    :goto_15
    return-void

    .line 65
    :cond_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/af;->b:Lcom/chartboost/sdk/Model/CBError;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/an;->h:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/ag;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_15

    .line 67
    :catch_22
    move-exception v0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deliver result"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15

    .line 74
    :cond_2d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ad;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 80
    :try_start_3f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->d:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/ad;)Lcom/chartboost/sdk/impl/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->h:Lcom/chartboost/sdk/impl/ag;

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->h:Lcom/chartboost/sdk/impl/ag;

    iget v0, v0, Lcom/chartboost/sdk/impl/ag;->a:I

    .line 83
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_7f

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_7f

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->h:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Lcom/chartboost/sdk/impl/ag;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_65} :catch_a0
    .catchall {:try_start_3f .. :try_end_65} :catchall_de

    .line 94
    :goto_65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/ad;->g:J

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget v0, v0, Lcom/chartboost/sdk/impl/ad;->j:I

    packed-switch v0, :pswitch_data_10e

    goto :goto_15

    .line 97
    :pswitch_79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    .line 86
    :cond_7f
    :try_start_7f
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure due to HTTP status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_9f} :catch_a0
    .catchall {:try_start_7f .. :try_end_9f} :catchall_de

    goto :goto_65

    .line 91
    :catch_a0
    move-exception v0

    .line 92
    :try_start_a1
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_de

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/ad;->g:J

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget v0, v0, Lcom/chartboost/sdk/impl/ad;->j:I

    packed-switch v0, :pswitch_data_116

    goto/16 :goto_15

    .line 97
    :pswitch_c7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15

    .line 89
    :cond_ce
    :try_start_ce
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Internet Unavailable"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->g:Lcom/chartboost/sdk/impl/af;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_dd} :catch_a0
    .catchall {:try_start_ce .. :try_end_dd} :catchall_de

    goto :goto_65

    .line 94
    :catchall_de
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/an;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v1, Lcom/chartboost/sdk/impl/ad;->g:J

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ad;

    iget v1, v1, Lcom/chartboost/sdk/impl/ad;->j:I

    packed-switch v1, :pswitch_data_11e

    .line 101
    :goto_f2
    throw v0

    .line 100
    :pswitch_f3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :pswitch_fa
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    .line 97
    :pswitch_101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->f:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f2

    .line 100
    :pswitch_107
    iget-object v1, p0, Lcom/chartboost/sdk/impl/an;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f2

    .line 95
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_79
        :pswitch_f3
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_fa
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_101
        :pswitch_107
    .end packed-switch
.end method
