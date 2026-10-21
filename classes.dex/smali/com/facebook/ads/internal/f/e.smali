###### Class com.facebook.ads.internal.f.e (com.facebook.ads.internal.f.e)
.class public Lcom/facebook/ads/internal/f/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/f/e;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;Landroid/content/Context;Ljava/util/Map;)Lcom/facebook/ads/internal/f/d;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/internal/f/d;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/facebook/ads/internal/f/b;

    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/p;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, v3}, Lcom/facebook/ads/internal/f/b;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    new-instance v0, Lcom/facebook/ads/internal/f/d;

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->b()D

    move-result-wide v4

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/ads/internal/f/b;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v4, v5, v3, v2}, Lcom/facebook/ads/internal/f/d;-><init>(DLjava/lang/String;Ljava/util/Map;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_20

    :try_start_1c
    invoke-static {v0, p1}, Lcom/facebook/ads/internal/f/e;->a(Lcom/facebook/ads/internal/f/d;Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_23

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    move-object v0, v1

    goto :goto_1f

    :catch_23
    move-exception v1

    goto :goto_1f
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/f/e;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lorg/json/JSONArray;
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    sget-object v6, Lcom/facebook/ads/internal/f/e;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "debuglogs"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "debuglogs"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_f2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1f} :catch_e4
    .catchall {:try_start_9 .. :try_end_1f} :catchall_be

    move-result-object v4

    :try_start_20
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_f6
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_e9
    .catchall {:try_start_20 .. :try_end_25} :catchall_db

    :try_start_25
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_fa
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_ed
    .catchall {:try_start_25 .. :try_end_2a} :catchall_df

    move v0, p1

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    if-eqz v0, :cond_99

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "attempt"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "attempt"

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_46
    const-string v2, "id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string v8, "attempt"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    const-string v8, "attempt"

    sget-object v9, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6d
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-lez v0, :cond_2b

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_75
    invoke-static {v2, v8}, Lcom/facebook/ads/internal/f/e;->a(Ljava/lang/String;I)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_78} :catch_79
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_78} :catch_f0
    .catchall {:try_start_2b .. :try_end_78} :catchall_e2

    goto :goto_6d

    :catch_79
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_7c
    move-object v4, v3

    move-object v3, v2

    :goto_7e
    :try_start_7e
    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v7, "Failed to read crashes"

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_e2

    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_8a
    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_8f
    if-eqz v4, :cond_94

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_94} :catch_b5
    .catchall {:try_start_87 .. :try_end_94} :catchall_b2

    :cond_94
    :goto_94
    :try_start_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_b2

    return-object v5

    :cond_96
    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :cond_99
    if-eqz v1, :cond_9e

    :try_start_9b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9e
    if-eqz v3, :cond_a3

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_a3
    if-eqz v4, :cond_94

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a8} :catch_a9
    .catchall {:try_start_9b .. :try_end_a8} :catchall_b2

    goto :goto_94

    :catch_a9
    move-exception v0

    :try_start_aa
    sget-object v1, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v2, "Failed to close buffers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_94

    :catchall_b2
    move-exception v0

    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_b2

    throw v0

    :catch_b5
    move-exception v0

    :try_start_b6
    sget-object v1, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v2, "Failed to close buffers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_b2

    goto :goto_94

    :catchall_be
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_c2
    if-eqz v1, :cond_c7

    :try_start_c4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_c7
    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_cc
    if-eqz v4, :cond_d1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d1} :catch_d2
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_b2

    :cond_d1
    :goto_d1
    :try_start_d1
    throw v0

    :catch_d2
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v3, "Failed to close buffers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_b2

    goto :goto_d1

    :catchall_db
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_c2

    :catchall_df
    move-exception v0

    move-object v1, v2

    goto :goto_c2

    :catchall_e2
    move-exception v0

    goto :goto_c2

    :catch_e4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_7e

    :catch_e9
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7e

    :catch_ed
    move-exception v0

    move-object v1, v2

    goto :goto_7e

    :catch_f0
    move-exception v0

    goto :goto_7e

    :catch_f2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7c

    :catch_f6
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_7c

    :catch_fa
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_7c
.end method

.method private static a(Lcom/facebook/ads/internal/f/d;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_time"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_id"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_59

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f/d;->e()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_4f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attempt"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_4f
.end method

.method public static a(Lcom/facebook/ads/internal/f/d;Landroid/content/Context;)V
    .registers 6

    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    sget-object v1, Lcom/facebook/ads/internal/f/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-static {p0}, Lcom/facebook/ads/internal/f/e;->a(Lcom/facebook/ads/internal/f/d;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "debuglogs"

    const v3, 0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p1}, Lcom/facebook/ads/internal/f/e;->d(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_3a
    .catchall {:try_start_7 .. :try_end_38} :catchall_43

    :goto_38
    :try_start_38
    monitor-exit v1

    :cond_39
    return-void

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v3, "Failed to store crash"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_f
    sget-object v1, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1f
    sget-object v1, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "finished event should not be updated to OngoingEvent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DEBUG_PREF"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EventCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DEBUG_PREF"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EventCount"

    if-gez p1, :cond_14

    move p1, v0

    :cond_14
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    sget-object v7, Lcom/facebook/ads/internal/f/e;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_a
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "debuglogs"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_148

    const-string v1, "debuglogs"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_139
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_20} :catch_127
    .catchall {:try_start_a .. :try_end_20} :catchall_f2

    move-result-object v5

    :try_start_21
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_13f
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_26} :catch_12d
    .catchall {:try_start_21 .. :try_end_26} :catchall_11e

    :try_start_26
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_144
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2b} :catch_132
    .catchall {:try_start_26 .. :try_end_2b} :catchall_122

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    sget-object v9, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    const-string v9, "attempt"

    sget-object v10, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_57
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5a} :catch_5b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_5a} :catch_136
    .catchall {:try_start_2b .. :try_end_5a} :catchall_125

    goto :goto_2b

    :catch_5b
    move-exception v1

    :goto_5c
    :try_start_5c
    sget-object v6, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v8, "Failed to rewrite File."

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_125

    if-eqz v3, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_68
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_6d
    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_72
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_77} :catch_e9
    .catchall {:try_start_65 .. :try_end_77} :catchall_dd

    :cond_77
    :goto_77
    :try_start_77
    sget-object v1, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v7
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_dd

    :goto_82
    return v0

    :cond_83
    :try_start_83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v1, v0

    :goto_8d
    if-ge v1, v9, :cond_a3

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_a3
    const-string v1, "debuglogs"

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    :goto_b5
    invoke-static {p0}, Lcom/facebook/ads/internal/f/e;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/facebook/ads/internal/f/e;->b(Landroid/content/Context;I)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_bc} :catch_5b
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_bc} :catch_136
    .catchall {:try_start_83 .. :try_end_bc} :catchall_125

    const/4 v0, 0x1

    if-eqz v3, :cond_c2

    :try_start_bf
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_c2
    if-eqz v4, :cond_c7

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_c7
    if-eqz v5, :cond_cc

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_cc
    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d1} :catch_e0
    .catchall {:try_start_bf .. :try_end_d1} :catchall_dd

    :cond_d1
    :goto_d1
    :try_start_d1
    sget-object v1, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v7

    goto :goto_82

    :catchall_dd
    move-exception v0

    monitor-exit v7
    :try_end_df
    .catchall {:try_start_d1 .. :try_end_df} :catchall_dd

    throw v0

    :catch_e0
    move-exception v1

    :try_start_e1
    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v3, "Failed to close buffers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d1

    :catch_e9
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v3, "Failed to close buffers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f1
    .catchall {:try_start_e1 .. :try_end_f1} :catchall_dd

    goto :goto_77

    :catchall_f2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_f6
    if-eqz v3, :cond_fb

    :try_start_f8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_fb
    if-eqz v4, :cond_100

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_100
    if-eqz v5, :cond_105

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_105
    if-eqz v2, :cond_10a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_10a} :catch_115
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_dd

    :cond_10a
    :goto_10a
    :try_start_10a
    sget-object v1, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    throw v0

    :catch_115
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/f/e;->a:Ljava/lang/String;

    const-string v3, "Failed to close buffers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11d
    .catchall {:try_start_10a .. :try_end_11d} :catchall_dd

    goto :goto_10a

    :catchall_11e
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_f6

    :catchall_122
    move-exception v0

    move-object v3, v2

    goto :goto_f6

    :catchall_125
    move-exception v0

    goto :goto_f6

    :catch_127
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_5c

    :catch_12d
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_5c

    :catch_132
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5c

    :catch_136
    move-exception v1

    goto/16 :goto_5c

    :catch_139
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_5c

    :catch_13f
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_5c

    :catch_144
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5c

    :cond_148
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_b5
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/f/e;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/facebook/ads/internal/f/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static d(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DEBUG_PREF"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EventCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/f/e;->b(Landroid/content/Context;I)V

    return-void
.end method
