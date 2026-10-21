###### Class com.vungle.publisher.uj (com.vungle.publisher.uj)
.class public Lcom/vungle/publisher/uj;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field static final a:Ljava/lang/String; = "ISO-8859-1"

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "\\bcharset=([\\w\\-]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/uj;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .registers 4

    .prologue
    .line 66
    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p1, :cond_14

    .line 79
    sget-object v1, Lcom/vungle/publisher/uj;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 81
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_14
    return-object v0
.end method

.method public a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/uj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v2, "VungleNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response character set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Ljava/io/InputStreamReader;

    .line 31
    invoke-direct {p0, v3}, Lcom/vungle/publisher/uj;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 32
    :goto_31
    invoke-static {v0}, Lcom/vungle/publisher/zk;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    sget-object v0, Lcom/vungle/publisher/uj;->a:Ljava/lang/String;

    :cond_39
    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_c5

    .line 33
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 36
    :goto_45
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_62

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_50

    goto :goto_45

    .line 44
    :catchall_50
    move-exception v0

    move-object v1, v2

    .line 45
    :goto_52
    if-eqz v1, :cond_57

    .line 46
    :try_start_54
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_a7

    .line 52
    :cond_57
    :goto_57
    if-eqz p1, :cond_5c

    .line 53
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5c
    throw v0

    .line 31
    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_c5

    move-result-object v3

    goto :goto_31

    .line 39
    :cond_62
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_50

    .line 45
    if-eqz v2, :cond_83

    .line 46
    :try_start_80
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_89

    .line 52
    :cond_83
    :goto_83
    if-eqz p1, :cond_88

    .line 53
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    :cond_88
    return-object v0

    .line 49
    :catch_89
    move-exception v1

    .line 50
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error closing input stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_83

    .line 49
    :catch_a7
    move-exception v1

    .line 50
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error closing input stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    .line 44
    :catchall_c5
    move-exception v0

    goto :goto_52
.end method
