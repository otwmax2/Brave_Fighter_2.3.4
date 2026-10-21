###### Class com.unity3d.ads.request.WebRequest (com.unity3d.ads.request.WebRequest)
.class public Lcom/unity3d/ads/request/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/request/WebRequest$RequestType;
    }
.end annotation


# instance fields
.field private _body:Ljava/lang/String;

.field private _canceled:Z

.field private _connectTimeout:I

.field private _contentLength:J

.field private _headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

.field private _readTimeout:I

.field private _requestType:Ljava/lang/String;

.field private _responseCode:I

.field private _responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v4, 0x7530

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-virtual {v0}, Lcom/unity3d/ads/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    .line 47
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    .line 48
    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/unity3d/ads/request/WebRequest;->_headers:Ljava/util/Map;

    .line 50
    iput p4, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    .line 51
    iput p5, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    .line 52
    return-void
.end method

.method private getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/ads/request/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 223
    :try_start_10
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_99

    .line 238
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_1a
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getConnectTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 240
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getReadTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 243
    :try_start_2c
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/net/ProtocolException; {:try_start_2c .. :try_end_33} :catch_e1

    .line 249
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_10d

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_10d

    .line 250
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    .local v3, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 225
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_99
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open HTTPS connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b7
    :try_start_b7
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_c3

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_1a

    .line 233
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_c3
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v4, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open HTTP connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_e1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/net/ProtocolException;
    new-instance v4, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Request Method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    .end local v1    # "e":Ljava/net/ProtocolException;
    :cond_10d
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    .line 56
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_body:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    return v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    if-eqz v0, :cond_b

    .line 80
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    return v0
.end method

.method public getRequestType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    return v0
.end method

.method public makeRequest()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/ads/request/NetworkIOException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    .line 215
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public makeStreamRequest(Ljava/io/OutputStream;)J
    .registers 16
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/ads/request/NetworkIOException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 121
    invoke-direct {p0}, Lcom/unity3d/ads/request/WebRequest;->getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 122
    .local v8, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 125
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 126
    const/4 v11, 0x0

    .line 129
    .local v11, "pout":Ljava/io/PrintWriter;
    :try_start_1c
    new-instance v12, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v12, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_158
    .catchall {:try_start_1c .. :try_end_2d} :catchall_d7

    .line 130
    .end local v11    # "pout":Ljava/io/PrintWriter;
    .local v12, "pout":Ljava/io/PrintWriter;
    :try_start_2d
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ab

    .line 131
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    :goto_3a
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3d} :catch_b3
    .catchall {:try_start_2d .. :try_end_3d} :catchall_155

    .line 145
    if-eqz v12, :cond_42

    .line 146
    :try_start_3f
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_de

    .line 157
    .end local v12    # "pout":Ljava/io/PrintWriter;
    :cond_42
    :try_start_42
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_48} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_48} :catch_ec

    .line 163
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    .line 165
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 166
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    .line 171
    :cond_5b
    :try_start_5b
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_10a

    move-result-object v10

    .line 179
    .local v10, "input":Ljava/io/InputStream;
    :cond_5f
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    if-eqz v0, :cond_76

    .line 180
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    iget v4, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    iget-object v5, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/request/IWebRequestProgressListener;->onRequestStart(Ljava/lang/String;JILjava/util/Map;)V

    .line 183
    :cond_76
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    .local v6, "binput":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 185
    .local v7, "bytesRead":I
    const-wide/16 v2, 0x0

    .line 186
    .local v2, "total":J
    const/16 v0, 0x1000

    new-array v13, v0, [B

    .line 188
    .local v13, "readTarget":[B
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14c

    const/4 v0, -0x1

    if-eq v7, v0, :cond_14c

    .line 190
    :try_start_8b
    invoke-virtual {v6, v13}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_12e

    move-result v7

    .line 196
    if-lez v7, :cond_82

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v13, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    int-to-long v0, v7

    add-long/2addr v2, v0

    .line 200
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    if-eqz v0, :cond_82

    .line 201
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/request/IWebRequestProgressListener;->onRequestProgress(Ljava/lang/String;JJ)V

    goto :goto_82

    .line 134
    .end local v2    # "total":J
    .end local v6    # "binput":Ljava/io/BufferedInputStream;
    .end local v7    # "bytesRead":I
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v13    # "readTarget":[B
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :cond_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b2} :catch_b3
    .catchall {:try_start_ab .. :try_end_b2} :catchall_155

    goto :goto_3a

    .line 139
    :catch_b3
    move-exception v9

    move-object v11, v12

    .line 140
    .end local v12    # "pout":Ljava/io/PrintWriter;
    .local v9, "e":Ljava/io/IOException;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    :goto_b5
    :try_start_b5
    const-string v0, "Error while writing POST params"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 141
    new-instance v0, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing POST params: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d7
    .catchall {:try_start_b5 .. :try_end_d7} :catchall_d7

    .line 144
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_d7
    move-exception v0

    .line 145
    :goto_d8
    if-eqz v11, :cond_dd

    .line 146
    :try_start_da
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_e5

    .line 151
    :cond_dd
    throw v0

    .line 149
    .end local v11    # "pout":Ljava/io/PrintWriter;
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :catch_de
    move-exception v9

    .line 150
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "Error closing writer"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    throw v9

    .line 149
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "pout":Ljava/io/PrintWriter;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    :catch_e5
    move-exception v9

    .line 150
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "Error closing writer"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    throw v9

    .line 159
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "pout":Ljava/io/PrintWriter;
    :catch_ec
    move-exception v9

    .line 160
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_ed
    new-instance v0, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_10a
    move-exception v9

    .line 173
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .line 174
    .restart local v10    # "input":Ljava/io/InputStream;
    if-nez v10, :cond_5f

    .line 175
    new-instance v0, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t open error stream: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v2    # "total":J
    .restart local v6    # "binput":Ljava/io/BufferedInputStream;
    .restart local v7    # "bytesRead":I
    .restart local v13    # "readTarget":[B
    :catch_12e
    move-exception v9

    .line 193
    .restart local v9    # "e":Ljava/io/IOException;
    new-instance v0, Lcom/unity3d/ads/request/NetworkIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/request/NetworkIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    .end local v9    # "e":Ljava/io/IOException;
    :cond_14c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 207
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 209
    return-wide v2

    .line 159
    .end local v2    # "total":J
    .end local v6    # "binput":Ljava/io/BufferedInputStream;
    .end local v7    # "bytesRead":I
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v13    # "readTarget":[B
    :catch_153
    move-exception v9

    goto :goto_ed

    .line 144
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :catchall_155
    move-exception v0

    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintWriter;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    goto :goto_d8

    .line 139
    :catch_158
    move-exception v9

    goto/16 :goto_b5
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequest;->_body:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    .line 106
    return-void
.end method

.method public setProgressListener(Lcom/unity3d/ads/request/IWebRequestProgressListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/unity3d/ads/request/IWebRequestProgressListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    .line 118
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2
    .param p1, "readTimeout"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    .line 114
    return-void
.end method

###### Class com.unity3d.ads.request.WebRequest.RequestType (com.unity3d.ads.request.WebRequest$RequestType)
.class public final enum Lcom/unity3d/ads/request/WebRequest$RequestType;
.super Ljava/lang/Enum;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/request/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/request/WebRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/request/WebRequest$RequestType;

.field public static final enum GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

.field public static final enum HEAD:Lcom/unity3d/ads/request/WebRequest$RequestType;

.field public static final enum POST:Lcom/unity3d/ads/request/WebRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/unity3d/ads/request/WebRequest$RequestType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    .line 38
    new-instance v0, Lcom/unity3d/ads/request/WebRequest$RequestType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    .line 39
    new-instance v0, Lcom/unity3d/ads/request/WebRequest$RequestType;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/ads/request/WebRequest$RequestType;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/ads/request/WebRequest$RequestType;

    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/ads/request/WebRequest$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->$VALUES:[Lcom/unity3d/ads/request/WebRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/request/WebRequest$RequestType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/request/WebRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/request/WebRequest$RequestType;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->$VALUES:[Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-virtual {v0}, [Lcom/unity3d/ads/request/WebRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/request/WebRequest$RequestType;

    return-object v0
.end method
