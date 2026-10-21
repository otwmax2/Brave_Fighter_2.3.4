###### Class com.chartboost.sdk.Tracking.a (com.chartboost.sdk.Tracking.a)
.class public Lcom/chartboost/sdk/Tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/b;


# static fields
.field private static d:Lcom/chartboost/sdk/Tracking/a;

.field private static final q:Ljava/lang/Long;


# instance fields
.field private final e:Lcom/chartboost/sdk/Libraries/d;

.field private final f:Lcom/chartboost/sdk/impl/ah;

.field private final g:Lcom/chartboost/sdk/impl/ap;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/SharedPreferences;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONArray;

.field private l:J

.field private m:J

.field private final n:J

.field private final o:Lcom/chartboost/sdk/Libraries/f;

.field private p:Z

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->q:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/Libraries/d;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ap;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/chartboost/sdk/Tracking/a;->q:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->r:J

    .line 101
    sput-object p0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/Tracking/a;

    .line 103
    iput-object p2, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lcom/chartboost/sdk/Libraries/d;

    .line 104
    iput-object p3, p0, Lcom/chartboost/sdk/Tracking/a;->f:Lcom/chartboost/sdk/impl/ah;

    .line 105
    iput-object p4, p0, Lcom/chartboost/sdk/Tracking/a;->g:Lcom/chartboost/sdk/impl/ap;

    .line 106
    iput-object p5, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    iput-object p6, p0, Lcom/chartboost/sdk/Tracking/a;->i:Landroid/content/SharedPreferences;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->n:J

    .line 109
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    .line 110
    iput-object p1, p0, Lcom/chartboost/sdk/Tracking/a;->o:Lcom/chartboost/sdk/Libraries/f;

    .line 111
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 639
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    const-string p0, ""

    goto :goto_2
.end method

.method private a(JJ)V
    .registers 10

    .prologue
    .line 584
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 585
    const-string v1, "start_timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v1, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->o:Lcom/chartboost/sdk/Libraries/f;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/chartboost/sdk/Tracking/a;->o:Lcom/chartboost/sdk/Libraries/f;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/io/File;

    const-string v4, "cb_previous_session_info"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 588
    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;[B)V

    .line 590
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 403
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/Tracking/a;

    .line 408
    if-eqz v0, :cond_a

    .line 409
    invoke-virtual {v0, p0, p1, p2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 411
    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->n:Z

    if-eqz v0, :cond_18

    .line 125
    const-string v1, "session"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    .prologue
    .line 459
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 462
    return-void
.end method

.method private a(Z)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->n:Z

    if-eqz v0, :cond_2c

    .line 142
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 143
    const-string v0, "complete"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v1, "session"

    const-string v2, "end"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 152
    const-string v0, "did-become-active"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 154
    :cond_2c
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/aj;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 598
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/track"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->g:Lcom/chartboost/sdk/impl/ap;

    const/4 v4, 0x3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 603
    const-string v1, "track"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 605
    return-object v0
.end method

.method private e()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    if-eqz v1, :cond_10

    .line 515
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_10

    const/4 v0, 0x1

    .line 517
    :cond_10
    return v0
.end method

.method private f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 524
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 525
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    const-string v1, "deviceID"

    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->e:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 562
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->l:J

    .line 563
    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->m:J

    .line 564
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    .line 565
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 568
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 570
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 571
    const-string v2, "cbPrefSessionCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 572
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 580
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->l:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/chartboost/sdk/Tracking/a;->a(JJ)V

    .line 581
    return-void
.end method

.method private i()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method private j()J
    .registers 3

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->l:J

    return-wide v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 646
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    .line 647
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 119
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 120
    const-string v0, "did-become-active"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 18

    .prologue
    .line 334
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 335
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-eqz v0, :cond_46

    .line 336
    const-string v1, "download-asset-success"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v2, 0x0

    const-string v7, "processingMs"

    .line 343
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    const/4 v2, 0x1

    const-string v7, "getResposeCodeMs"

    .line 344
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    const/4 v2, 0x2

    const-string v7, "readDataMs"

    .line 345
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    .line 342
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 336
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 349
    :cond_46
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 296
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v1, :cond_1c

    .line 297
    const-string v1, "download-asset-start"

    .line 298
    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    .line 297
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 306
    :cond_1c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 18

    .prologue
    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 314
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-eqz v0, :cond_46

    .line 315
    const-string v1, "download-asset-failure"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v2, 0x0

    const-string v3, "processingMs"

    .line 322
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "getResponseCodeMs"

    .line 323
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "readDataMs"

    .line 324
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    .line 321
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 315
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 328
    :cond_46
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 189
    const-string v1, "load"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    :cond_18
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_19

    .line 158
    const-string v1, "webview-track"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 167
    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 266
    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/e;

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/e;->l:Z

    if-eqz v1, :cond_3e

    .line 267
    const-string v2, "ad-unit-error"

    const/4 v7, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v3, 0x0

    const-string v4, "adId"

    .line 274
    invoke-static {v4, p5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "location"

    .line 275
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "state"

    .line 276
    move-object/from16 v0, p7

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v1, v3

    .line 273
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 267
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 279
    :cond_3e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 17

    .prologue
    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_19

    .line 448
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 450
    :cond_19
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 21

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 473
    iget-wide v4, p0, Lcom/chartboost/sdk/Tracking/a;->l:J

    sub-long v4, v2, v4

    .line 474
    iget-wide v6, p0, Lcom/chartboost/sdk/Tracking/a;->n:J

    sub-long/2addr v2, v6

    .line 476
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 477
    const-string v7, "event"

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    const-string v7, "kingdom"

    invoke-static {p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    const-string v7, "phylum"

    invoke-static {p3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v7, "class"

    invoke-static/range {p4 .. p4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v7, "family"

    invoke-static/range {p5 .. p5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v7, "genus"

    invoke-static/range {p6 .. p6}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v7, "meta"

    if-nez p7, :cond_4f

    new-instance p7, Lorg/json/JSONObject;

    invoke-direct/range {p7 .. p7}, Lorg/json/JSONObject;-><init>()V

    :cond_4f
    move-object/from16 v0, p7

    invoke-static {v6, v7, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v7, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    const-string v7, "session_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Tracking/a;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v7, "totalSessionTime"

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v4, "currentSessionTime"

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v4, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    monitor-enter p0

    .line 490
    :try_start_86
    iget-boolean v3, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_dd

    .line 493
    :try_start_8b
    iget-object v2, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 494
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 495
    const-string v4, "events"

    iget-object v5, p0, Lcom/chartboost/sdk/Tracking/a;->k:Lorg/json/JSONArray;

    invoke-static {v2, v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    const-string v4, "CBTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###Writing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "to tracking cache dir"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 498
    if-nez p8, :cond_c9

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->e()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 499
    :cond_c9
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/aj;

    move-result-object v2

    .line 500
    iget-object v4, p0, Lcom/chartboost/sdk/Tracking/a;->f:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v4, v2}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 501
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->k()V
    :try_end_d5
    .catchall {:try_start_8b .. :try_end_d5} :catchall_d9

    .line 504
    :cond_d5
    :try_start_d5
    iput-boolean v3, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    .line 506
    monitor-exit p0

    .line 507
    return-void

    .line 504
    :catchall_d9
    move-exception v2

    iput-boolean v3, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    throw v2

    .line 506
    :catchall_dd
    move-exception v2

    monitor-exit p0
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_dd

    throw v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    .prologue
    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_1f

    .line 249
    const-string v1, "ad-error"

    .line 252
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v4, "empty-adid"

    :goto_16
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v7, p5

    .line 249
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    :cond_1f
    return-void

    :cond_20
    move-object v4, p3

    .line 252
    goto :goto_16
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 171
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v1, :cond_1c

    .line 172
    const-string v1, "folder"

    .line 173
    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p1

    .line 172
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 181
    :cond_1c
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 138
    return-void
.end method

.method declared-synchronized b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 16

    .prologue
    const/4 v6, 0x0

    .line 414
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 415
    if-eqz v0, :cond_4f

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->k:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    if-nez v1, :cond_4f

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_59

    .line 419
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 420
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->r:J

    sub-long v2, v10, v2

    sget-object v1, Lcom/chartboost/sdk/Tracking/a;->q:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4c

    .line 421
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->r:Z

    if-eqz v0, :cond_31

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 422
    :cond_31
    const-string v1, "exception"

    .line 423
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p2

    .line 422
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 430
    iput-wide v10, p0, Lcom/chartboost/sdk/Tracking/a;->r:J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_51
    .catchall {:try_start_17 .. :try_end_4c} :catchall_5c

    .line 435
    :cond_4c
    const/4 v0, 0x0

    :try_start_4d
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_59

    .line 438
    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void

    .line 432
    :catch_51
    move-exception v0

    .line 433
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5c

    .line 435
    const/4 v0, 0x0

    :try_start_56
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_59

    goto :goto_4f

    .line 414
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 435
    :catchall_5c
    move-exception v0

    const/4 v1, 0x0

    :try_start_5e
    iput-boolean v1, p0, Lcom/chartboost/sdk/Tracking/a;->p:Z

    throw v0
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_59
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 353
    const-string v1, "playback-complete"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    :cond_18
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 201
    const-string v1, "ad-show"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    :cond_18
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_1f

    .line 284
    const-string v1, "ad-warning"

    .line 287
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v4, "empty-adid"

    :goto_16
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 284
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    :cond_1f
    return-void

    :cond_20
    move-object v4, p3

    .line 287
    goto :goto_16
.end method

.method public c()V
    .registers 5

    .prologue
    .line 535
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->o:Lcom/chartboost/sdk/Libraries/f;

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/io/File;

    const-string v2, "cb_previous_session_info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/chartboost/sdk/Tracking/a;->o:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 537
    :goto_17
    if-eqz v0, :cond_51

    .line 538
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->m:J

    .line 539
    const-string v1, "start_timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->l:J

    .line 540
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 543
    iget-wide v2, p0, Lcom/chartboost/sdk/Tracking/a;->m:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4d

    .line 544
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 545
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 555
    :goto_4a
    return-void

    .line 536
    :cond_4b
    const/4 v0, 0x0

    goto :goto_17

    .line 550
    :cond_4d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Z)V

    .line 554
    :cond_51
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->g()V

    goto :goto_4a
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 365
    const-string v1, "replay"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 373
    :cond_18
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 213
    const-string v1, "ad-click"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    :cond_18
    return-void
.end method

.method d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 377
    const-string v1, "playback-start"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    :cond_18
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 225
    const-string v1, "ad-close"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    :cond_18
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 388
    const-string v1, "playback-stop"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    :cond_18
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_18

    .line 237
    const-string v1, "ad-dismiss"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session [ startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sessionEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->i()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
