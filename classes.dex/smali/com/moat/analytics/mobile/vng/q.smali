###### Class com.moat.analytics.mobile.vng.q (com.moat.analytics.mobile.vng.q)
.class Lcom/moat/analytics/mobile/vng/q;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_38

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_31} :catch_4c
    .catchall {:try_start_1 .. :try_end_31} :catchall_59

    move-result-object v0

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_60

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    :try_start_38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_4c
    .catchall {:try_start_38 .. :try_end_43} :catchall_59

    move-result-object v0

    if-eqz v1, :cond_37

    :try_start_46
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_37

    :catch_4a
    move-exception v1

    goto :goto_37

    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_59

    move-result-object v0

    if-eqz v1, :cond_37

    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_37

    :catch_57
    move-exception v1

    goto :goto_37

    :catchall_59
    move-exception v0

    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_62

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    goto :goto_37

    :catch_62
    move-exception v1

    goto :goto_5f
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/16 v0, 0x100

    new-array v2, v0, [C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v4, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v1

    :cond_12
    array-length v5, v2

    invoke-virtual {v4, v2, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_21

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    if-lt v0, v5, :cond_12

    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
