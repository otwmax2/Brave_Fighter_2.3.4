###### Class retrofit2.OkHttpCall (retrofit2.OkHttpCall)
.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;,
        Lretrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;

.field private executed:Z

.field private rawCall:Lokhttp3/Call;

.field private final serviceMethod:Lretrofit2/ServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/ServiceMethod",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V
    .registers 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/ServiceMethod",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p1, "serviceMethod":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    .line 40
    iput-object p2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private createRawCall()Lokhttp3/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    iget-object v2, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lretrofit2/ServiceMethod;->toRequest([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v1

    .line 179
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v2, v2, Lretrofit2/ServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    invoke-interface {v2, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 180
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_1a

    .line 181
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Call.Factory returned null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 223
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 226
    monitor-enter p0

    .line 227
    :try_start_4
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 228
    .local v0, "call":Lokhttp3/Call;
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 229
    if-eqz v0, :cond_c

    .line 230
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 232
    :cond_c
    return-void

    .line 228
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .registers 2

    .prologue
    .line 27
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/OkHttpCall;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/OkHttpCall",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    .local p1, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<TT;>;"
    if-nez p1, :cond_a

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "callback == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_a
    monitor-enter p0

    .line 78
    :try_start_b
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already executed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :catchall_17
    move-exception v4

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v4

    .line 79
    :cond_1a
    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 81
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 82
    .local v0, "call":Lokhttp3/Call;
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_17

    .line 83
    .local v2, "failure":Ljava/lang/Throwable;
    if-nez v0, :cond_2c

    if-nez v2, :cond_2c

    .line 85
    :try_start_25
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2b} :catch_33
    .catchall {:try_start_25 .. :try_end_2b} :catchall_17

    .end local v0    # "call":Lokhttp3/Call;
    .local v1, "call":Lokhttp3/Call;
    move-object v0, v1

    .line 90
    .end local v1    # "call":Lokhttp3/Call;
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_17

    .line 92
    if-eqz v2, :cond_38

    .line 93
    invoke-interface {p1, p0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 138
    :goto_32
    return-void

    .line 86
    :catch_33
    move-exception v3

    .line 87
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_34
    iput-object v3, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_17

    move-object v2, v3

    goto :goto_2c

    .line 97
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_38
    iget-boolean v4, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v4, :cond_3f

    .line 98
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 101
    :cond_3f
    new-instance v4, Lretrofit2/OkHttpCall$1;

    invoke-direct {v4, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_32
.end method

.method public execute()Lretrofit2/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    .line 148
    :try_start_1
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already executed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :catchall_d
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v2

    .line 149
    :cond_10
    const/4 v2, 0x1

    :try_start_11
    iput-boolean v2, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 151
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_27

    .line 152
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_22

    .line 153
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 155
    :cond_22
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 159
    :cond_27
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_d

    .line 160
    .local v0, "call":Lokhttp3/Call;
    if-nez v0, :cond_31

    .line 162
    :try_start_2b
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v0

    .end local v0    # "call":Lokhttp3/Call;
    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_31} :catch_47
    .catchall {:try_start_2b .. :try_end_31} :catchall_d

    .line 168
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_d

    .line 170
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_39

    .line 171
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 174
    :cond_39
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {p0, v2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v2

    return-object v2

    .line 163
    .end local v0    # "call":Lokhttp3/Call;
    :catch_42
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    :goto_44
    :try_start_44
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 165
    throw v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_d

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_47
    move-exception v2

    move-object v1, v2

    goto :goto_44
.end method

.method public isCanceled()Z
    .registers 3

    .prologue
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    const/4 v0, 0x1

    .line 235
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_6

    .line 239
    :goto_5
    return v0

    .line 238
    :cond_6
    monitor-enter p0

    .line 239
    :try_start_7
    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_13
    monitor-exit p0

    goto :goto_5

    .line 240
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0

    .line 239
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    .registers 14
    .param p1, "rawResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 190
    .local v5, "rawBody":Lokhttp3/ResponseBody;
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    new-instance v7, Lretrofit2/OkHttpCall$NoContentResponseBody;

    .line 191
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 192
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 195
    .local v3, "code":I
    const/16 v6, 0xc8

    if-lt v3, v6, :cond_29

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_3a

    .line 198
    :cond_29
    :try_start_29
    invoke-static {v5}, Lretrofit2/Utils;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 199
    .local v1, "bufferedBody":Lokhttp3/ResponseBody;
    invoke-static {v1, p1}, Lretrofit2/Response;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_35

    move-result-object v6

    .line 201
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 213
    .end local v1    # "bufferedBody":Lokhttp3/ResponseBody;
    :goto_34
    return-object v6

    .line 201
    :catchall_35
    move-exception v6

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    throw v6

    .line 205
    :cond_3a
    const/16 v6, 0xcc

    if-eq v3, v6, :cond_42

    const/16 v6, 0xcd

    if-ne v3, v6, :cond_4b

    .line 206
    :cond_42
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->close()V

    .line 207
    const/4 v6, 0x0

    invoke-static {v6, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v6

    goto :goto_34

    .line 210
    :cond_4b
    new-instance v2, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {v2, v5}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;-><init>(Lokhttp3/ResponseBody;)V

    .line 212
    .local v2, "catchingBody":Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;
    :try_start_50
    iget-object v6, p0, Lretrofit2/OkHttpCall;->serviceMethod:Lretrofit2/ServiceMethod;

    invoke-virtual {v6, v2}, Lretrofit2/ServiceMethod;->toResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "body":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_59} :catch_5b

    move-result-object v6

    goto :goto_34

    .line 214
    .end local v0    # "body":Ljava/lang/Object;, "TT;"
    :catch_5b
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->throwIfCaught()V

    .line 218
    throw v4
.end method

.method public declared-synchronized request()Lokhttp3/Request;
    .registers 6

    .prologue
    .line 49
    .local p0, "this":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    .line 50
    .local v0, "call":Lokhttp3/Call;
    if-eqz v0, :cond_b

    .line 51
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    move-result-object v2

    .line 61
    :goto_9
    monitor-exit p0

    return-object v2

    .line 53
    :cond_b
    :try_start_b
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v2, :cond_27

    .line 54
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_22

    .line 55
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    iget-object v4, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1f

    .line 49
    .end local v0    # "call":Lokhttp3/Call;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    .restart local v0    # "call":Lokhttp3/Call;
    :cond_22
    :try_start_22
    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 61
    :cond_27
    :try_start_27
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->request()Lokhttp3/Request;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_30} :catch_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_36
    .catchall {:try_start_27 .. :try_end_30} :catchall_1f

    move-result-object v2

    goto :goto_9

    .line 62
    :catch_32
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_33
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 64
    throw v1

    .line 65
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_36
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 67
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create request."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_1f
.end method

###### Class retrofit2.OkHttpCall.AnonymousClass1 (retrofit2.OkHttpCall$1)
.class Lretrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/OkHttpCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/OkHttpCall;

    .prologue
    .line 101
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    iput-object p1, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    iput-object p2, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 128
    :goto_7
    return-void

    .line 125
    :catch_8
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method

.method private callSuccess(Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 136
    :goto_7
    return-void

    .line 133
    :catch_8
    move-exception v0

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 116
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v1, p0, Lretrofit2/OkHttpCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-interface {v1, v2, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 120
    :goto_7
    return-void

    .line 117
    :catch_8
    move-exception v0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "rawResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lretrofit2/OkHttpCall$1;, "Lretrofit2/OkHttpCall$1;"
    :try_start_0
    iget-object v2, p0, Lretrofit2/OkHttpCall$1;->this$0:Lretrofit2/OkHttpCall;

    invoke-virtual {v2, p2}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_a

    move-result-object v1

    .line 111
    .local v1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-direct {p0, v1}, Lretrofit2/OkHttpCall$1;->callSuccess(Lretrofit2/Response;)V

    .line 112
    .end local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :goto_9
    return-void

    .line 107
    :catch_a
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lretrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class retrofit2.OkHttpCall.ExceptionCatchingRequestBody (retrofit2.OkHttpCall$ExceptionCatchingRequestBody)
.class final Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingRequestBody"
.end annotation


# instance fields
.field private final delegate:Lokhttp3/ResponseBody;

.field thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;)V
    .registers 2
    .param p1, "delegate"    # Lokhttp3/ResponseBody;

    .prologue
    .line 269
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 270
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lokhttp3/ResponseBody;

    .line 271
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 296
    return-void
.end method

.method public contentLength()J
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 3

    .prologue
    .line 282
    new-instance v0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;

    iget-object v1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;-><init>(Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method throwIfCaught()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    throw v0

    .line 302
    :cond_7
    return-void
.end method

###### Class retrofit2.OkHttpCall.ExceptionCatchingRequestBody.AnonymousClass1 (retrofit2.OkHttpCall$ExceptionCatchingRequestBody$1)
.class Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;
.super Lokio/ForwardingSource;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->source()Lokio/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;


# direct methods
.method constructor <init>(Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;
    .param p2, "x0"    # Lokio/Source;

    .prologue
    .line 282
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v2

    return-wide v2

    .line 286
    :catch_5
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    iput-object v0, v1, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    .line 288
    throw v0
.end method

###### Class retrofit2.OkHttpCall.NoContentResponseBody (retrofit2.OkHttpCall$NoContentResponseBody)
.class final Lretrofit2/OkHttpCall$NoContentResponseBody;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;J)V
    .registers 4
    .param p1, "contentType"    # Lokhttp3/MediaType;
    .param p2, "contentLength"    # J

    .prologue
    .line 247
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 248
    iput-object p1, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    .line 249
    iput-wide p2, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 250
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 257
    iget-wide v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 3

    .prologue
    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
