###### Class com.facebook.ads.internal.d.c (com.facebook.ads.internal.d.c)
.class public Lcom/facebook/ads/internal/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/ads/internal/d/c;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/c/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/a/n;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/c;
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/d/c;->b:Lcom/facebook/ads/internal/d/c;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/facebook/ads/internal/d/c;

    monitor-enter v1

    :try_start_b
    sget-object v2, Lcom/facebook/ads/internal/d/c;->b:Lcom/facebook/ads/internal/d/c;

    if-nez v2, :cond_16

    new-instance v2, Lcom/facebook/ads/internal/d/c;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/d/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/ads/internal/d/c;->b:Lcom/facebook/ads/internal/d/c;

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1a

    :cond_17
    sget-object v0, Lcom/facebook/ads/internal/d/c;->b:Lcom/facebook/ads/internal/d/c;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 2
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v1, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_23
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_57
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_28} :catch_a9
    .catchall {:try_start_23 .. :try_end_28} :catchall_b9

    :try_start_28
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v2, 0x300000

    if-lt v0, v2, :cond_45

    sget-object v0, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    const-string v2, "Bitmap size exceeds max size for storage"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3e} :catch_d4
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3e} :catch_cf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_3e} :catch_ca
    .catchall {:try_start_28 .. :try_end_3e} :catchall_c2

    invoke-static {v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    :goto_44
    return-void

    :cond_45
    :try_start_45
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4a} :catch_d4
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_cf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_4a} :catch_ca
    .catchall {:try_start_45 .. :try_end_4a} :catchall_c2

    :try_start_4a
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_50} :catch_d7
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_50} :catch_d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_50} :catch_cc
    .catchall {:try_start_4a .. :try_end_50} :catchall_c4

    invoke-static {v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    goto :goto_44

    :catch_57
    move-exception v0

    move-object v2, v1

    :goto_59
    :try_start_59
    sget-object v3, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad output destination (file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_c7

    invoke-static {v2}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    goto :goto_44

    :catch_82
    move-exception v0

    move-object v3, v1

    :goto_84
    :try_start_84
    sget-object v2, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write bitmap to file (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_c2

    invoke-static {v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    goto :goto_44

    :catch_a9
    move-exception v0

    move-object v3, v1

    :goto_ab
    :try_start_ab
    sget-object v2, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    const-string v4, "Unable to write bitmap to output stream"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_c2

    invoke-static {v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    goto :goto_44

    :catchall_b9
    move-exception v0

    move-object v3, v1

    :goto_bb
    invoke-static {v3}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_c2
    move-exception v0

    goto :goto_bb

    :catchall_c4
    move-exception v0

    move-object v1, v2

    goto :goto_bb

    :catchall_c7
    move-exception v0

    move-object v3, v2

    goto :goto_bb

    :catch_ca
    move-exception v0

    goto :goto_ab

    :catch_cc
    move-exception v0

    move-object v1, v2

    goto :goto_ab

    :catch_cf
    move-exception v0

    goto :goto_84

    :catch_d1
    move-exception v0

    move-object v1, v2

    goto :goto_84

    :catch_d4
    move-exception v0

    move-object v2, v3

    goto :goto_59

    :catch_d7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_59
.end method

.method private a(II)Z
    .registers 4

    if-lez p1, :cond_e

    if-lez p2, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/internal/d/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/internal/q/b/c;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result-object v0

    goto :goto_15

    :catch_2f
    move-exception v0

    sget-object v2, Lcom/facebook/ads/internal/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy local image into cache (url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_18
.end method

.method private c(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "asset:///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    :try_start_9
    iget-object v1, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_35
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3d

    move-result-object v1

    :try_start_1d
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/internal/d/c;->a(II)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {v1, p2, p3}, Lcom/facebook/ads/internal/q/b/c;->a(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_5f
    .catchall {:try_start_1d .. :try_end_26} :catchall_5d

    move-result-object v0

    :goto_27
    if-eqz v1, :cond_2c

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    :cond_2c
    :goto_2c
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2f
    :goto_2f
    return-object v0

    :cond_30
    :try_start_30
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5f
    .catchall {:try_start_30 .. :try_end_33} :catchall_5d

    move-result-object v0

    goto :goto_27

    :catch_35
    move-exception v1

    move-object v1, v0

    :goto_37
    if-eqz v1, :cond_2f

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    goto :goto_2f

    :catchall_3d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_41
    if-eqz v1, :cond_46

    invoke-static {v1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    :cond_46
    throw v0

    :cond_47
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/internal/d/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_58

    :try_start_4d
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/d/c;->d(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_2c

    :catch_52
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2c

    :cond_58
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2c

    :catchall_5d
    move-exception v0

    goto :goto_41

    :catch_5f
    move-exception v2

    goto :goto_37
.end method

.method private d(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/internal/q/b/c;->a(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/d/c;->a(Ljava/io/Closeable;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/ads/internal/d/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/d/c;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/d/c;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_34

    :cond_3a
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/internal/d/c;->a(II)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/internal/q/b/c;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_34

    :cond_49
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_34
.end method
