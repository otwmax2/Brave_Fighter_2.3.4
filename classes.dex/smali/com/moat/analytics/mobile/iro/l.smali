###### Class com.moat.analytics.mobile.iro.l (com.moat.analytics.mobile.iro.l)
.class final Lcom/moat/analytics/mobile/iro/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˋ(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 21
    new-array v2, v6, [C

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v4, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v1

    .line 26
    :cond_12
    invoke-virtual {v4, v2, v1, v6}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_20

    .line 27
    add-int/2addr v0, v5

    .line 28
    invoke-virtual {v3, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 29
    const/16 v5, 0x400

    if-lt v0, v5, :cond_12

    .line 33
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ॱ(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 50
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 51
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 52
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 57
    const/16 v3, 0x190

    if-lt v2, v3, :cond_33

    .line 58
    invoke-static {}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    .line 69
    :cond_32
    :goto_32
    return-object v0

    .line 60
    :cond_33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/l;->ˋ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_47
    .catchall {:try_start_1 .. :try_end_3e} :catchall_54

    move-result-object v0

    .line 66
    if-eqz v1, :cond_32

    .line 68
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_32

    :catch_45
    move-exception v1

    goto :goto_32

    .line 64
    :catch_47
    move-exception v0

    :try_start_48
    invoke-static {}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_54

    move-result-object v0

    .line 66
    if-eqz v1, :cond_32

    .line 68
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_32

    :catch_52
    move-exception v1

    goto :goto_32

    .line 66
    :catchall_54
    move-exception v0

    if-eqz v1, :cond_5a

    .line 68
    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 69
    :cond_5a
    :goto_5a
    throw v0

    :catch_5b
    move-exception v1

    goto :goto_5a
.end method

###### Class com.moat.analytics.mobile.iro.l.AnonymousClass1 (com.moat.analytics.mobile.iro.l$1)
.class final Lcom/moat/analytics/mobile/iro/l$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ˎ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/l$1;->ˎ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/l$1;->ˎ:Ljava/lang/String;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/l;->ॱ(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 80
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
