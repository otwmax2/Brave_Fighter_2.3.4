###### Class com.ironsource.sdk.utils.IronSourceAsyncHttpRequestTask (com.ironsource.sdk.utils.IronSourceAsyncHttpRequestTask)
.class public Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "IronSourceAsyncHttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 19
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_2
    new-instance v3, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_26
    .catchall {:try_start_2 .. :try_end_a} :catchall_30

    .line 20
    .end local v2    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    :try_start_a
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 21
    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_3a
    .catchall {:try_start_a .. :try_end_1a} :catchall_37

    .line 28
    if-eqz v4, :cond_3d

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    .line 33
    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    :cond_20
    :goto_20
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 24
    :catch_26
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_30

    .line 28
    if-eqz v4, :cond_20

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_20

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v5

    :goto_31
    if-eqz v4, :cond_36

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_36
    throw v5

    .line 28
    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_37
    move-exception v5

    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_31

    .line 24
    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_3a
    move-exception v1

    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_27

    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_3d
    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_20
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
