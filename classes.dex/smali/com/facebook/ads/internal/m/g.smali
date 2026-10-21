###### Class com.facebook.ads.internal.m.g (com.facebook.ads.internal.m.g)
.class public Lcom/facebook/ads/internal/m/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/m/b$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/facebook/ads/internal/e/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/m/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/m/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/e/d;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/internal/m/g;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .registers 22

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    if-nez p1, :cond_8

    move-object/from16 p1, p0

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v16

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v12, v2

    move-object v11, v8

    move v14, v4

    move v8, v10

    :goto_27
    if-lt v8, v15, :cond_2d

    move/from16 v0, v16

    if-ge v14, v0, :cond_9b

    :cond_2d
    if-lez p2, :cond_9b

    if-ge v8, v15, :cond_b0

    if-nez v5, :cond_b0

    :try_start_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v2, "time"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3e} :catch_7f

    move-result-wide v2

    :goto_3f
    add-int/lit8 v5, v8, 0x1

    move-wide v6, v2

    move v10, v5

    move-object v5, v4

    :goto_44
    move/from16 v0, v16

    if-ge v14, v0, :cond_ac

    if-nez v11, :cond_ac

    :try_start_4a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v2, "time"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_55} :catch_87

    move-result-wide v2

    :goto_56
    add-int/lit8 v14, v14, 0x1

    move-object v8, v4

    move v11, v14

    :goto_5a
    if-nez v5, :cond_5e

    if-eqz v8, :cond_b2

    :cond_5e
    if-eqz v5, :cond_64

    cmpg-double v4, v2, v6

    if-gez v4, :cond_8f

    :cond_64
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v17, v6

    move-object v6, v4

    move-object v7, v5

    move-wide/from16 v4, v17

    :goto_73
    add-int/lit8 p2, p2, -0x1

    move-wide v12, v2

    move v14, v11

    move v8, v10

    move-object v11, v6

    move-wide/from16 v17, v4

    move-object v5, v7

    move-wide/from16 v6, v17

    goto :goto_27

    :catch_7f
    move-exception v2

    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_3f

    :catch_87
    move-exception v2

    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_56

    :cond_8f
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v6, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v7, v6

    move-object v6, v8

    goto :goto_73

    :cond_9b
    if-lez p2, :cond_a2

    if-eqz v5, :cond_a6

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a2
    :goto_a2
    move-object/from16 p1, v9

    goto/16 :goto_2

    :cond_a6
    if-eqz v11, :cond_a2

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a2

    :cond_ac
    move-wide v2, v12

    move-object v8, v11

    move v11, v14

    goto :goto_5a

    :cond_b0
    move v10, v8

    goto :goto_44

    :cond_b2
    move-wide v12, v2

    move v14, v11

    move-object v11, v8

    move v8, v10

    goto/16 :goto_27
.end method

.method private a(I)Lorg/json/JSONObject;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->d()Landroid/database/Cursor;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_55
    .catchall {:try_start_1 .. :try_end_6} :catchall_64

    move-result-object v3

    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/d;->a(I)Landroid/database/Cursor;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_77
    .catchall {:try_start_7 .. :try_end_c} :catchall_72

    move-result-object v2

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_83

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/m/g;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/m/g;->c(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v5, v4

    :goto_1c
    iget-object v4, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/l/a;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/facebook/ads/internal/f/e;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_81

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_81

    invoke-static {v4, v0, p1}, Lcom/facebook/ads/internal/m/g;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    move-object v4, v0

    :goto_37
    if-eqz v4, :cond_7f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v5, :cond_45

    const-string v6, "tokens"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_45
    const-string v5, "events"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4a} :catch_7b
    .catchall {:try_start_d .. :try_end_4a} :catchall_75

    :goto_4a
    if-eqz v3, :cond_4f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4f
    if-eqz v2, :cond_54

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_54
    :goto_54
    return-object v0

    :catch_55
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_58
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5d
    if-eqz v0, :cond_62

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_62
    move-object v0, v1

    goto :goto_54

    :catchall_64
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_67
    if-eqz v3, :cond_6c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6c
    if-eqz v2, :cond_71

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v0

    :catchall_72
    move-exception v0

    move-object v2, v1

    goto :goto_67

    :catchall_75
    move-exception v0

    goto :goto_67

    :catch_77
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_58

    :catch_7b
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_58

    :cond_7f
    move-object v0, v1

    goto :goto_4a

    :cond_81
    move-object v4, v0

    goto :goto_37

    :cond_83
    move-object v0, v1

    move-object v5, v1

    goto :goto_1c
.end method

.method private a(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/internal/f/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/facebook/ads/internal/f/e;->a(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/d;->a(Ljava/lang/String;)Z

    goto :goto_9
.end method

.method private b(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .registers 8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_96

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token_id"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_time"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_id"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    iget v0, v0, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    if-eqz v3, :cond_90

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_7b
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attempt"

    sget-object v3, Lcom/facebook/ads/internal/e/c;->i:Lcom/facebook/ads/internal/e/b;

    iget v3, v3, Lcom/facebook/ads/internal/e/b;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_9

    :cond_90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_7b

    :cond_96
    return-object v1
.end method

.method private c(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .registers 8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token_id"

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_time"

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "session_id"

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    if-eqz v3, :cond_79

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_67
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attempt"

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_67

    :cond_7f
    return-object v1
.end method

.method private d()Lorg/json/JSONObject;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->f()Landroid/database/Cursor;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_5b
    .catchall {:try_start_1 .. :try_end_6} :catchall_6a

    move-result-object v3

    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->e()Landroid/database/Cursor;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_7d
    .catchall {:try_start_7 .. :try_end_c} :catchall_78

    move-result-object v2

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_89

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_89

    invoke-direct {p0, v3}, Lcom/facebook/ads/internal/m/g;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/m/g;->b(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v5, v4

    :goto_22
    iget-object v4, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/l/a;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/ads/internal/f/e;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_87

    invoke-static {v4, v0}, Lcom/facebook/ads/internal/m/g;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v4, v0

    :goto_3d
    if-eqz v4, :cond_85

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v5, :cond_4b

    const-string v6, "tokens"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string v5, "events"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_50} :catch_81
    .catchall {:try_start_d .. :try_end_50} :catchall_7b

    :goto_50
    if-eqz v3, :cond_55

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_55
    if-eqz v2, :cond_5a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    return-object v0

    :catch_5b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_5e
    if-eqz v2, :cond_63

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_63
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_68
    move-object v0, v1

    goto :goto_5a

    :catchall_6a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6d
    if-eqz v3, :cond_72

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_72
    if-eqz v2, :cond_77

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v0

    :catchall_78
    move-exception v0

    move-object v2, v1

    goto :goto_6d

    :catchall_7b
    move-exception v0

    goto :goto_6d

    :catch_7d
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_5e

    :catch_81
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_5e

    :cond_85
    move-object v0, v1

    goto :goto_50

    :cond_87
    move-object v4, v0

    goto :goto_3d

    :cond_89
    move-object v0, v1

    move-object v5, v1

    goto :goto_22
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->j(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/m/g;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0}, Lcom/facebook/ads/internal/m/g;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Lorg/json/JSONArray;)Z
    .registers 11

    const/16 v8, 0x7d0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->g(Landroid/content/Context;)Z

    move-result v4

    move v0, v1

    move v2, v3

    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_55

    :try_start_12
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_34

    iget-object v5, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v5, v6}, Lcom/facebook/ads/internal/e/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    if-eqz v4, :cond_31

    invoke-static {v6}, Lcom/facebook/ads/internal/f/e;->b(Ljava/lang/String;)V

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_34
    const/16 v7, 0x3e8

    if-lt v5, v7, :cond_3f

    if-ge v5, v8, :cond_3f

    invoke-direct {p0, v6}, Lcom/facebook/ads/internal/m/g;->a(Ljava/lang/String;)V

    move v2, v1

    goto :goto_31

    :cond_3f
    if-lt v5, v8, :cond_31

    const/16 v7, 0xbb8

    if-ge v5, v7, :cond_31

    iget-object v5, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v5, v6}, Lcom/facebook/ads/internal/e/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_31

    if-eqz v4, :cond_31

    invoke-static {v6}, Lcom/facebook/ads/internal/f/e;->b(Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_52} :catch_53

    goto :goto_31

    :catch_53
    move-exception v5

    goto :goto_31

    :cond_55
    return v2
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->g()V

    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/f/e;->c(Landroid/content/Context;)Z

    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .registers 6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_17

    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/m/g;->a(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_14} :catch_18

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void

    :catch_18
    move-exception v2

    goto :goto_14
.end method

.method public c()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/l/a;->j(Landroid/content/Context;)I

    move-result v4

    if-ge v4, v0, :cond_b

    :goto_a
    return v1

    :cond_b
    const/4 v2, 0x0

    :try_start_c
    iget-object v3, p0, Lcom/facebook/ads/internal/m/g;->c:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/e/d;->d()Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_31

    move-result-object v2

    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_1d
    iget-object v5, p0, Lcom/facebook/ads/internal/m/g;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/ads/internal/f/e;->b(Landroid/content/Context;)I
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_39

    move-result v5

    add-int/2addr v3, v5

    if-le v3, v4, :cond_2f

    :goto_26
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2b
    move v1, v0

    goto :goto_a

    :cond_2d
    move v3, v1

    goto :goto_1d

    :cond_2f
    move v0, v1

    goto :goto_26

    :catchall_31
    move-exception v0

    move-object v1, v2

    :goto_33
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0

    :catchall_39
    move-exception v0

    move-object v1, v2

    goto :goto_33
.end method
