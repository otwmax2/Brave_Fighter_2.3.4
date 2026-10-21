###### Class com.facebook.ads.internal.p.b.a.b (com.facebook.ads.internal.p.b.a.b)
.class public Lcom/facebook/ads/internal/p/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/p/b/a;


# instance fields
.field public a:Ljava/io/File;

.field private final b:Lcom/facebook/ads/internal/p/b/a/a;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/internal/p/b/a/a;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2b

    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_b

    :catch_b
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error using file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2b
    :try_start_2b
    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/a/b;->b:Lcom/facebook/ads/internal/p/b/a/a;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/a/d;->a(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object v0, p1

    :goto_3b
    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    if-eqz v1, :cond_6c

    const-string v0, "r"

    :goto_45
    invoke-direct {v2, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    return-void

    :cond_4b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3b

    :cond_6c
    const-string v0, "rw"
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_6e} :catch_b

    goto :goto_45
.end method

.method private a(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catch_a
    move-exception v0

    :try_start_b
    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading length of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BJI)I
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_40

    move-result v0

    monitor-exit p0

    return v0

    :catch_f
    move-exception v0

    :try_start_10
    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/a/b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BI)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Lcom/facebook/ads/internal/p/b/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error append cache: cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is completed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_4c

    :catch_28
    move-exception v0

    :try_start_29
    const-string v1, "Error writing %d bytes to %s from buffer with size %d"

    new-instance v2, Lcom/facebook/ads/internal/p/b/l;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/a/b;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5f} :catch_28
    .catchall {:try_start_4f .. :try_end_5f} :catchall_4c

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->b:Lcom/facebook/ads/internal/p/b/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/p/b/a/a;->a(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_f
    .catchall {:try_start_1 .. :try_end_d} :catchall_2b

    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    :try_start_10
    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/a/b;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_66

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/a/b;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".download"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_69

    new-instance v0, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for completion!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_69
    :try_start_69
    iput-object v1, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_66

    :try_start_6b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->c:Ljava/io/RandomAccessFile;
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_76} :catch_77
    .catchall {:try_start_6b .. :try_end_76} :catchall_66

    goto :goto_7

    :catch_77
    move-exception v0

    :try_start_78
    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_99
    .catchall {:try_start_78 .. :try_end_99} :catchall_66
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/p/b/a/b;->a(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
