###### Class com.ironsource.eventsmodule.EventsSender (com.ironsource.eventsmodule.EventsSender)
.class public Lcom/ironsource/eventsmodule/EventsSender;
.super Landroid/os/AsyncTask;
.source "EventsSender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final APPLICATION_JSON:Ljava/lang/String;

.field private final CONTENT_TYPE_FIELD:Ljava/lang/String;

.field private final SERVER_REQUEST_ENCODING:Ljava/lang/String;

.field private final SERVER_REQUEST_METHOD:Ljava/lang/String;

.field private final SERVER_REQUEST_TIMEOUT:I

.field private extraData:Ljava/util/ArrayList;

.field private mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    .line 21
    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    .line 22
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    .line 23
    const-string v0, "Content-Type"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->CONTENT_TYPE_FIELD:Ljava/lang/String;

    .line 24
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->APPLICATION_JSON:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V
    .registers 3
    .param p1, "resultListener"    # Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    .line 21
    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    .line 22
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    .line 23
    const-string v0, "Content-Type"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->CONTENT_TYPE_FIELD:Ljava/lang/String;

    .line 24
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->APPLICATION_JSON:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 12
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 49
    :try_start_2
    new-instance v3, Ljava/net/URL;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "requestURL":Ljava/net/URL;
    const/4 v6, 0x2

    aget-object v6, p1, v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/ironsource/eventsmodule/EventsSender;->extraData:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 52
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x3a98

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 53
    const/16 v6, 0x3a98

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    const-string v6, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v0, v6, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 62
    .local v2, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v6, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 66
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 68
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 72
    .local v4, "responseCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_69

    move v6, v7

    :goto_64
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_6b

    move-result-object v6

    .line 76
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "requestURL":Ljava/net/URL;
    .end local v4    # "responseCode":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_68
    return-object v6

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "requestURL":Ljava/net/URL;
    .restart local v4    # "responseCode":I
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_69
    move v6, v8

    .line 74
    goto :goto_64

    .line 75
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "requestURL":Ljava/net/URL;
    .end local v4    # "responseCode":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_6b
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_68
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/EventsSender;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    iget-object v1, p0, Lcom/ironsource/eventsmodule/EventsSender;->extraData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/eventsmodule/IEventsSenderResultListener;->onEventsSenderResult(Ljava/util/ArrayList;Z)V

    .line 90
    :cond_f
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/EventsSender;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
