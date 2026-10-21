###### Class retrofit2.Retrofit (retrofit2.Retrofit)
.class public final Lretrofit2/Retrofit;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Retrofit$Builder;
    }
.end annotation


# instance fields
.field final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field final baseUrl:Lokhttp3/HttpUrl;

.field final callFactory:Lokhttp3/Call$Factory;

.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/ServiceMethod",
            "<**>;>;"
        }
    .end annotation
.end field

.field final validateEagerly:Z


# direct methods
.method constructor <init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .registers 8
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "baseUrl"    # Lokhttp3/HttpUrl;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "validateEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    .local p4, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    .line 73
    iput-object p2, p0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    .line 74
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 75
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    .line 76
    iput-object p5, p0, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 77
    iput-boolean p6, p0, Lretrofit2/Retrofit;->validateEagerly:Z

    .line 78
    return-void
.end method

.method private eagerlyValidateMethods(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v1

    .line 155
    .local v1, "platform":Lretrofit2/Platform;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_1a

    aget-object v0, v3, v2

    .line 156
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v0}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 157
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    .line 155
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 160
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1a
    return-void
.end method


# virtual methods
.method public baseUrl()Lokhttp3/HttpUrl;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .registers 4
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lretrofit2/Retrofit;->nextCallAdapter(Lretrofit2/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v0

    return-object v0
.end method

.method public callAdapterFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    return-object v0
.end method

.method public callFactory()Lokhttp3/Call$Factory;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    return-object v0
.end method

.method public callbackExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public converterFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    return-object v0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lretrofit2/Utils;->validateServiceInterface(Ljava/lang/Class;)V

    .line 129
    iget-boolean v0, p0, Lretrofit2/Retrofit;->validateEagerly:Z

    if-eqz v0, :cond_a

    .line 130
    invoke-direct {p0, p1}, Lretrofit2/Retrofit;->eagerlyValidateMethods(Ljava/lang/Class;)V

    .line 132
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit2/Retrofit$1;

    invoke-direct {v2, p0, p1}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;
    .registers 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit2/ServiceMethod",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/ServiceMethod;

    .line 164
    .local v1, "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 173
    .end local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .local v2, "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :goto_b
    return-object v2

    .line 166
    .end local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :cond_c
    iget-object v4, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    monitor-enter v4

    .line 167
    :try_start_f
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lretrofit2/ServiceMethod;

    move-object v1, v0

    .line 168
    if-nez v1, :cond_29

    .line 169
    new-instance v3, Lretrofit2/ServiceMethod$Builder;

    invoke-direct {v3, p0, p1}, Lretrofit2/ServiceMethod$Builder;-><init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V

    invoke-virtual {v3}, Lretrofit2/ServiceMethod$Builder;->build()Lretrofit2/ServiceMethod;

    move-result-object v1

    .line 170
    iget-object v3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_29
    monitor-exit v4

    move-object v2, v1

    .line 173
    .end local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    goto :goto_b

    .line 172
    .end local v2    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    .restart local v1    # "result":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<**>;"
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method public newBuilder()Lretrofit2/Retrofit$Builder;
    .registers 2

    .prologue
    .line 383
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0, p0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public nextCallAdapter(Lretrofit2/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .registers 11
    .param p1, "skipPast"    # Lretrofit2/CallAdapter$Factory;
    .param p2, "returnType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/CallAdapter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 215
    const-string v5, "returnType == null"

    invoke-static {p2, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    const-string v5, "annotations == null"

    invoke-static {p3, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 219
    .local v4, "start":I
    move v3, v4

    .local v3, "i":I
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_19
    if-ge v3, v2, :cond_2d

    .line 220
    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5, p2, p3, p0}, Lretrofit2/CallAdapter$Factory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;

    move-result-object v0

    .line 221
    .local v0, "adapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<**>;"
    if-eqz v0, :cond_2a

    .line 222
    return-object v0

    .line 219
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 226
    .end local v0    # "adapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<**>;"
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate call adapter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\n"

    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_69

    .line 230
    const-string v5, "  Skipped:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v3, 0x0

    :goto_46
    if-ge v3, v4, :cond_64

    .line 232
    const-string v5, "\n   * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 234
    :cond_64
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :cond_69
    const-string v5, "  Tried:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    move v3, v4

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_75
    if-ge v3, v2, :cond_93

    .line 238
    const-string v5, "\n   * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 240
    :cond_93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextRequestBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .registers 13
    .param p1, "skipPast"    # Lretrofit2/Converter$Factory;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const-string v6, "type == null"

    invoke-static {p2, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v6, "parameterAnnotations == null"

    invoke-static {p3, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v6, "methodAnnotations == null"

    invoke-static {p4, v6}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 277
    .local v5, "start":I
    move v4, v5

    .local v4, "i":I
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1e
    if-ge v4, v2, :cond_32

    .line 278
    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    .line 280
    .local v3, "factory":Lretrofit2/Converter$Factory;
    invoke-virtual {v3, p2, p3, p4, p0}, Lretrofit2/Converter$Factory;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v1

    .line 281
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    if-eqz v1, :cond_2f

    .line 283
    return-object v1

    .line 277
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 287
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v3    # "factory":Lretrofit2/Converter$Factory;
    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not locate RequestBody converter for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".\n"

    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_6e

    .line 291
    const-string v6, "  Skipped:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/4 v4, 0x0

    :goto_4b
    if-ge v4, v5, :cond_69

    .line 293
    const-string v6, "\n   * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit2/Converter$Factory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 295
    :cond_69
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :cond_6e
    const-string v6, "  Tried:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    move v4, v5

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    :goto_7a
    if-ge v4, v2, :cond_98

    .line 299
    const-string v6, "\n   * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit2/Converter$Factory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 301
    :cond_98
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public nextResponseBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .registers 11
    .param p1, "skipPast"    # Lretrofit2/Converter$Factory;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 322
    const-string v5, "type == null"

    invoke-static {p2, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    const-string v5, "annotations == null"

    invoke-static {p3, v5}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 326
    .local v4, "start":I
    move v3, v4

    .local v3, "i":I
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_19
    if-ge v3, v2, :cond_2d

    .line 327
    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 328
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5, p2, p3, p0}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v1

    .line 329
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;*>;"
    if-eqz v1, :cond_2a

    .line 331
    return-object v1

    .line 326
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 335
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;*>;"
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate ResponseBody converter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\n"

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_69

    .line 339
    const-string v5, "  Skipped:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v3, 0x0

    :goto_46
    if-ge v3, v4, :cond_64

    .line 341
    const-string v5, "\n   * "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 343
    :cond_64
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    :cond_69
    const-string v5, "  Tried:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    move v3, v4

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_75
    if-ge v3, v2, :cond_93

    .line 347
    const-string v5, "\n   * "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit2/Converter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 349
    :cond_93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .registers 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lretrofit2/Retrofit;->nextRequestBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    return-object v0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lretrofit2/Retrofit;->nextResponseBodyConverter(Lretrofit2/Converter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    return-object v0
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .registers 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const-string v3, "type == null"

    invoke-static {p1, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    const-string v3, "annotations == null"

    invoke-static {p2, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_11
    if-ge v2, v1, :cond_25

    .line 361
    iget-object v3, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    .line 362
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    invoke-virtual {v3, p1, p2, p0}, Lretrofit2/Converter$Factory;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v0

    .line 363
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    if-eqz v0, :cond_22

    .line 371
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :goto_21
    return-object v0

    .line 360
    .restart local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 371
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_25
    sget-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    goto :goto_21
.end method

###### Class retrofit2.Retrofit.AnonymousClass1 (retrofit2.Retrofit$1)
.class Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final platform:Lretrofit2/Platform;

.field final synthetic this$0:Lretrofit2/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V
    .registers 4
    .param p1, "this$0"    # Lretrofit2/Retrofit;

    .prologue
    .line 133
    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_d

    .line 140
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    :goto_c
    return-object v2

    .line 142
    :cond_d
    iget-object v2, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    invoke-virtual {v2, p2}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 143
    iget-object v2, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    iget-object v3, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v2, p2, v3, p1, p3}, Lretrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    .line 145
    :cond_1e
    iget-object v2, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    .line 146
    invoke-virtual {v2, p2}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    move-result-object v1

    .line 147
    .local v1, "serviceMethod":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lretrofit2/OkHttpCall;

    invoke-direct {v0, v1, p3}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V

    .line 148
    .local v0, "okHttpCall":Lretrofit2/OkHttpCall;, "Lretrofit2/OkHttpCall<Ljava/lang/Object;>;"
    iget-object v2, v1, Lretrofit2/ServiceMethod;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v2, v0}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c
.end method

###### Class retrofit2.Retrofit.Builder (retrofit2.Retrofit$Builder)
.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lokhttp3/HttpUrl;

.field private callFactory:Lokhttp3/Call$Factory;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lretrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 409
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    .line 410
    return-void
.end method

.method constructor <init>(Lretrofit2/Platform;)V
    .registers 4
    .param p1, "platform"    # Lretrofit2/Platform;

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 402
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 405
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lretrofit2/BuiltInConverters;

    invoke-direct {v1}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;)V
    .registers 4
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 413
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 414
    iget-object v0, p1, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 415
    iget-object v0, p1, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 416
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    iget-object v1, p1, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iget-object v1, p1, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    iget-object v0, p1, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 421
    iget-boolean v0, p1, Lretrofit2/Retrofit;->validateEagerly:Z

    iput-boolean v0, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 422
    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 4
    .param p1, "factory"    # Lretrofit2/CallAdapter$Factory;

    .prologue
    .line 528
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    return-object p0
.end method

.method public addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 4
    .param p1, "factory"    # Lretrofit2/Converter$Factory;

    .prologue
    .line 519
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-object p0
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .registers 6
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v1, "baseUrl == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 451
    .local v0, "httpUrl":Lokhttp3/HttpUrl;
    if-nez v0, :cond_24

    .line 452
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_24
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    return-object v1
.end method

.method public baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;
    .registers 6
    .param p1, "baseUrl"    # Lokhttp3/HttpUrl;

    .prologue
    .line 508
    const-string v1, "baseUrl == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 510
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseUrl must end in /: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_34
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 514
    return-object p0
.end method

.method public build()Lretrofit2/Retrofit;
    .registers 8

    .prologue
    .line 560
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    if-nez v0, :cond_c

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Base URL required."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_c
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 565
    .local v1, "callFactory":Lokhttp3/Call$Factory;
    if-nez v1, :cond_15

    .line 566
    new-instance v1, Lokhttp3/OkHttpClient;

    .end local v1    # "callFactory":Lokhttp3/Call$Factory;
    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 569
    .restart local v1    # "callFactory":Lokhttp3/Call$Factory;
    :cond_15
    iget-object v5, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 570
    .local v5, "callbackExecutor":Ljava/util/concurrent/Executor;
    if-nez v5, :cond_1f

    .line 571
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0}, Lretrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 575
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    .local v4, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0, v5}, Lretrofit2/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 581
    .local v3, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    new-instance v0, Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    iget-boolean v6, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    invoke-direct/range {v0 .. v6}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "factory"    # Lokhttp3/Call$Factory;

    .prologue
    .line 439
    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 440
    return-object p0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 540
    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 541
    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;
    .registers 3
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 430
    const-string v0, "client == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public validateEagerly(Z)Lretrofit2/Retrofit$Builder;
    .registers 2
    .param p1, "validateEagerly"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 550
    return-object p0
.end method
