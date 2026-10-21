###### Class com.tendcloud.tenddata.game.m (com.tendcloud.tenddata.game.m)
.class public Lcom/tendcloud/tenddata/game/m;
.super Ljava/lang/Object;


# static fields
.field private static final j:J = 0x300000L

.field private static final k:Ljava/lang/String; = "td-cache"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/io/File;

.field c:Ljava/io/RandomAccessFile;

.field d:Ljava/lang/String;

.field e:Ljava/util/zip/CRC32;

.field f:Ljava/util/concurrent/locks/Lock;

.field g:J

.field h:J

.field i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->i:J

    :try_start_1b
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/m;->d:Ljava/lang/String;

    const-string v0, "td-cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/m;->b:Ljava/io/File;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/m;->e()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2b} :catch_41

    :try_start_2b
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/m;->f()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_41

    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x300000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/m;->d()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3e} :catch_41

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_2e

    :catch_41
    move-exception v0

    goto :goto_3e
.end method

.method private a(J)Z
    .registers 14

    const/16 v9, 0x2e

    const/16 v8, 0x1f

    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a7

    :try_start_a
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-ne v1, v8, :cond_6d

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v3

    if-ltz v3, :cond_9c

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9c

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move v1, v0

    :goto_3d
    if-ge v1, v3, :cond_4d

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/zip/CRC32;->update(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4d
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-ne v1, v8, :cond_9c

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    if-ne v2, v1, :cond_9c

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_66} :catch_9b
    .catchall {:try_start_a .. :try_end_66} :catchall_a7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_6c
    return v0

    :cond_6d
    if-ne v1, v9, :cond_9c

    :try_start_6f
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    if-ltz v1, :cond_9c

    int-to-long v4, v1

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_9c

    if-ne v2, v9, :cond_9c

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_95} :catch_9b
    .catchall {:try_start_6f .. :try_end_95} :catchall_a7

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6c

    :catch_9b
    move-exception v1

    :cond_9c
    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    :try_start_9f
    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_a7

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6c

    :catchall_a7
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(JZ)[B
    .registers 15

    const/4 v1, 0x0

    const/16 v9, 0x2e

    const/16 v8, 0x1f

    :try_start_5
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a5

    :try_start_a
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_67

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    if-ltz v0, :cond_99

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_99

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    if-ne v3, v8, :cond_99

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v3, v4

    if-ne v2, v3, :cond_99

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_61} :catch_98
    .catchall {:try_start_a .. :try_end_61} :catchall_a5

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_66
    return-object v0

    :cond_67
    if-ne v0, v9, :cond_99

    :try_start_69
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    if-ltz v0, :cond_99

    int-to-long v4, v0

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_99

    if-ne v2, v9, :cond_99

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    if-eqz p3, :cond_91

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_91} :catch_98
    .catchall {:try_start_69 .. :try_end_91} :catchall_a5

    :cond_91
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_66

    :catch_98
    move-exception v0

    :cond_99
    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    :try_start_9c
    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_a5

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_66

    :catchall_a5
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b(J)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b([B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_45

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private d()V
    .registers 9

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_55

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->i:J

    :goto_c
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :cond_2f
    :goto_2f
    :try_start_2f
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_58

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/m;->a(JZ)[B

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_48

    goto :goto_2f

    :catchall_48
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_55
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    goto :goto_c

    :cond_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/m;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/m;->e()V

    iput-wide v6, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    iput-wide v6, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/m;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private f()V
    .registers 9

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3f

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->i:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x300000

    cmp-long v1, v2, v4

    if-gez v1, :cond_29

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->i:J

    :cond_29
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    invoke-direct {p0, v2, v3}, Lcom/tendcloud/tenddata/game/m;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    goto :goto_1

    :cond_3f
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_5
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_10
    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2e

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/m;->a(JZ)[B

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_39

    move-result v1

    if-lt v1, p1, :cond_10

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    :cond_38
    return-object v0

    :catch_39
    move-exception v1

    goto :goto_2e
.end method

.method public a()V
    .registers 3

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/m;->b(J)V

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->h:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/m;->g:J

    return-void
.end method

.method public a([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/m;->b([B)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/m;->b()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/m;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
