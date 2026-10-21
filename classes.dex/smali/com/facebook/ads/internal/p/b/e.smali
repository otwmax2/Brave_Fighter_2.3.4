###### Class com.facebook.ads.internal.p.b.e (com.facebook.ads.internal.p.b.e)
.class Lcom/facebook/ads/internal/p/b/e;
.super Lcom/facebook/ads/internal/p/b/k;


# instance fields
.field private final a:Lcom/facebook/ads/internal/p/b/h;

.field private final b:Lcom/facebook/ads/internal/p/b/a/b;

.field private c:Lcom/facebook/ads/internal/p/b/b;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/b/h;Lcom/facebook/ads/internal/p/b/a/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/p/b/k;-><init>(Lcom/facebook/ads/internal/p/b/n;Lcom/facebook/ads/internal/p/b/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/e;->b:Lcom/facebook/ads/internal/p/b/a/b;

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    return-void
.end method

.method private a(Ljava/io/OutputStream;J)V
    .registers 8

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_4
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/facebook/ads/internal/p/b/e;->a([BJI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/p/b/d;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/h;->a()I

    move-result v3

    if-lez v3, :cond_27

    move v0, v1

    :goto_b
    iget-object v4, p0, Lcom/facebook/ads/internal/p/b/e;->b:Lcom/facebook/ads/internal/p/b/a/b;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/p/b/a/b;->a()I

    move-result v4

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Lcom/facebook/ads/internal/p/b/d;->c:Z

    if-eqz v0, :cond_25

    iget-wide v6, p1, Lcom/facebook/ads/internal/p/b/d;->b:J

    long-to-float v0, v6

    int-to-float v4, v4

    int-to-float v3, v3

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_26

    :cond_25
    move v2, v1

    :cond_26
    return v2

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method private b(Lcom/facebook/ads/internal/p/b/d;)Ljava/lang/String;
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/h;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/e;->b:Lcom/facebook/ads/internal/p/b/a/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/p/b/a/b;->d()Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/e;->b:Lcom/facebook/ads/internal/p/b/a/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/p/b/a/b;->a()I

    move-result v3

    move v8, v3

    :goto_1e
    if-ltz v8, :cond_a7

    move v3, v1

    :goto_21
    iget-boolean v4, p1, Lcom/facebook/ads/internal/p/b/d;->c:Z

    if-eqz v4, :cond_aa

    int-to-long v4, v8

    iget-wide v6, p1, Lcom/facebook/ads/internal/p/b/d;->b:J

    sub-long/2addr v4, v6

    move-wide v6, v4

    :goto_2a
    if-eqz v3, :cond_ae

    iget-boolean v4, p1, Lcom/facebook/ads/internal/p/b/d;->c:Z

    if-eqz v4, :cond_ae

    move v4, v1

    :goto_31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p1, Lcom/facebook/ads/internal/p/b/d;->c:Z

    if-eqz v5, :cond_b0

    const-string v5, "HTTP/1.1 206 PARTIAL CONTENT\n"

    :goto_3c
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "Accept-Ranges: bytes\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_b3

    const-string v3, "Content-Length: %d\n"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_b6

    const-string v3, "Content-Range: bytes %d-%d/%d\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/facebook/ads/internal/p/b/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v6, v8, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_7c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_b9

    const-string v0, "Content-Type: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9b
    move v0, v2

    goto/16 :goto_f

    :cond_9e
    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/p/b/h;->a()I

    move-result v3

    move v8, v3

    goto/16 :goto_1e

    :cond_a7
    move v3, v2

    goto/16 :goto_21

    :cond_aa
    int-to-long v4, v8

    move-wide v6, v4

    goto/16 :goto_2a

    :cond_ae
    move v4, v2

    goto :goto_31

    :cond_b0
    const-string v5, "HTTP/1.1 200 OK\n"

    goto :goto_3c

    :cond_b3
    const-string v3, ""

    goto :goto_56

    :cond_b6
    const-string v3, ""

    goto :goto_7c

    :cond_b9
    const-string v0, ""

    goto :goto_8c
.end method

.method private b(Ljava/io/OutputStream;J)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/facebook/ads/internal/p/b/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/p/b/h;-><init>(Lcom/facebook/ads/internal/p/b/h;)V

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/p/b/h;->a(I)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_f
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/p/b/h;->a([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_f

    :cond_1d
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_26

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/h;->b()V

    return-void

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/p/b/h;->b()V

    throw v0
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/e;->c:Lcom/facebook/ads/internal/p/b/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/e;->c:Lcom/facebook/ads/internal/p/b/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/e;->b:Lcom/facebook/ads/internal/p/b/a/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/p/b/a/b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/e;->a:Lcom/facebook/ads/internal/p/b/h;

    iget-object v2, v2, Lcom/facebook/ads/internal/p/b/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/ads/internal/p/b/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/p/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/e;->c:Lcom/facebook/ads/internal/p/b/b;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/p/b/d;Ljava/net/Socket;)V
    .registers 7

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/e;->b(Lcom/facebook/ads/internal/p/b/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p1, Lcom/facebook/ads/internal/p/b/d;->b:J

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/e;->a(Lcom/facebook/ads/internal/p/b/d;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/ads/internal/p/b/e;->a(Ljava/io/OutputStream;J)V

    :goto_21
    return-void

    :cond_22
    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/ads/internal/p/b/e;->b(Ljava/io/OutputStream;J)V

    goto :goto_21
.end method
