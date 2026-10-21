###### Class com.ironsource.mediationsdk.server.HttpFunctions (com.ironsource.mediationsdk.server.HttpFunctions)
.class public Lcom/ironsource/mediationsdk/server/HttpFunctions;
.super Ljava/lang/Object;
.source "HttpFunctions.java"


# static fields
.field public static final ERROR_PREFIX:Ljava/lang/String; = "ERROR:"

.field private static final SERVER_BAD_REQUEST_ERROR:Ljava/lang/String; = "Bad Request - 400"

.field private static final SERVER_REQUEST_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final SERVER_REQUEST_GET_METHOD:Ljava/lang/String; = "GET"

.field private static final SERVER_REQUEST_POST_METHOD:Ljava/lang/String; = "POST"

.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 84
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "requestURL":Ljava/net/URL;
    invoke-static {p2, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBase64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "authorizationString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 89
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 90
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    const-string v8, "Authorization"

    invoke-virtual {v2, v8, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 98
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v8, v4, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v7, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 104
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_65
    .catchall {:try_start_4 .. :try_end_4d} :catchall_77

    move-result v6

    .line 106
    .local v6, "responseCode":I
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_5e

    move v8, v9

    .line 110
    :goto_53
    if-eqz v4, :cond_58

    .line 112
    :try_start_55
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_60

    .line 116
    :cond_58
    :goto_58
    if-eqz v2, :cond_5d

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v1    # "authorizationString":Ljava/lang/String;
    .end local v5    # "requestURL":Ljava/net/URL;
    .end local v6    # "responseCode":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_5d
    :goto_5d
    return v8

    .restart local v1    # "authorizationString":Ljava/lang/String;
    .restart local v5    # "requestURL":Ljava/net/URL;
    .restart local v6    # "responseCode":I
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_5e
    move v8, v10

    .line 106
    goto :goto_53

    .line 113
    :catch_60
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 107
    .end local v1    # "authorizationString":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "requestURL":Ljava/net/URL;
    .end local v6    # "responseCode":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_65
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_6b

    .line 112
    :try_start_68
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_72

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    if-eqz v2, :cond_70

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_70
    move v8, v10

    goto :goto_5d

    .line 113
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_72
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_77
    move-exception v8

    if-eqz v4, :cond_7d

    .line 112
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_83

    .line 116
    :cond_7d
    :goto_7d
    if-eqz v2, :cond_82

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_82
    throw v8

    .line 113
    :catch_83
    move-exception v3

    .line 114
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d
.end method

.method public static getStringFromURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "link"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;
    .registers 15
    .param p0, "link"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 37
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v6, "requestURL":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 40
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 42
    const-string v10, "GET"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 45
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 48
    .local v7, "responseCode":I
    const/16 v10, 0x190

    if-ne v7, v10, :cond_41

    .line 50
    if-eqz p1, :cond_35

    .line 51
    const-string v10, "Bad Request - 400"

    invoke-interface {p1, v10}, Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;->onUnrecoverableError(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_9e
    .catchall {:try_start_3 .. :try_end_35} :catchall_8f

    .line 72
    :cond_35
    if-eqz v1, :cond_3a

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_3a
    if-eqz v4, :cond_3f

    .line 75
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_3f
    move-object v8, v11

    .end local v6    # "requestURL":Ljava/net/URL;
    .end local v7    # "responseCode":I
    :goto_40
    return-object v8

    .line 56
    .restart local v6    # "requestURL":Ljava/net/URL;
    .restart local v7    # "responseCode":I
    :cond_41
    :try_start_41
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4f} :catch_9e
    .catchall {:try_start_41 .. :try_end_4f} :catchall_8f

    .line 57
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_4f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_54
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_6c

    .line 61
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5e
    .catchall {:try_start_4f .. :try_end_5d} :catchall_9b

    goto :goto_54

    .line 69
    .end local v3    # "line":Ljava/lang/String;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_5e
    move-exception v2

    move-object v4, v5

    .line 72
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "requestURL":Ljava/net/URL;
    .end local v7    # "responseCode":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_60
    if-eqz v1, :cond_65

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_65
    if-eqz v4, :cond_6a

    .line 75
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_6a
    move-object v8, v11

    goto :goto_40

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "requestURL":Ljava/net/URL;
    .restart local v7    # "responseCode":I
    .restart local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6c
    :try_start_6c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "result":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_5e
    .catchall {:try_start_6c .. :try_end_73} :catchall_9b

    move-result v10

    if-eqz v10, :cond_83

    .line 72
    if-eqz v1, :cond_7b

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_7b
    if-eqz v5, :cond_80

    .line 75
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_80
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v8, v11

    goto :goto_40

    .line 72
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_83
    if-eqz v1, :cond_88

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_88
    if-eqz v5, :cond_8d

    .line 75
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_8d
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_40

    .line 72
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "requestURL":Ljava/net/URL;
    .end local v7    # "responseCode":I
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_8f
    move-exception v10

    :goto_90
    if-eqz v1, :cond_95

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_95
    if-eqz v4, :cond_9a

    .line 75
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_9a
    throw v10

    .line 72
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "requestURL":Ljava/net/URL;
    .restart local v7    # "responseCode":I
    :catchall_9b
    move-exception v10

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_90

    .line 69
    .end local v6    # "requestURL":Ljava/net/URL;
    .end local v7    # "responseCode":I
    :catch_9e
    move-exception v2

    goto :goto_60
.end method
