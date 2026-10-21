###### Class com.chartboost.sdk.impl.e (com.chartboost.sdk.impl.e)
.class public Lcom/chartboost/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/e$a;
    }
.end annotation


# instance fields
.field private final A:J

.field private final B:[Ljava/lang/String;

.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lcom/chartboost/sdk/Libraries/f;

.field final c:Lcom/chartboost/sdk/Libraries/i;

.field final d:Landroid/os/Handler;

.field final e:Lcom/chartboost/sdk/c;

.field final f:Lcom/chartboost/sdk/impl/c;

.field g:I

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final l:Lcom/chartboost/sdk/impl/l;

.field private final m:Lcom/chartboost/sdk/impl/ah;

.field private final n:Lcom/chartboost/sdk/impl/ai;

.field private final o:Lcom/chartboost/sdk/impl/ap;

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/content/SharedPreferences;

.field private final r:Lcom/chartboost/sdk/Tracking/a;

.field private final s:Lcom/chartboost/sdk/impl/ak;

.field private final t:Lcom/chartboost/sdk/d;

.field private final u:Lcom/chartboost/sdk/impl/al;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
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

.field private final z:J


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/c;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/l;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ap;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Lcom/chartboost/sdk/d;",
            "Lcom/chartboost/sdk/impl/al;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v2, 0x0

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->g:I

    .line 128
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/e;->z:J

    .line 131
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/e;->A:J

    .line 133
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ASKED_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ASKED_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "REQUESTING_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "REQUESTING_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "DOWNLOADING_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "DOWNLOADING_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "READY"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ASKING_UI_TO_SHOW_AD"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "DONE"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->B:[Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 162
    iput-object p3, p0, Lcom/chartboost/sdk/impl/e;->l:Lcom/chartboost/sdk/impl/l;

    .line 163
    iput-object p4, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 164
    iput-object p5, p0, Lcom/chartboost/sdk/impl/e;->m:Lcom/chartboost/sdk/impl/ah;

    .line 165
    iput-object p6, p0, Lcom/chartboost/sdk/impl/e;->n:Lcom/chartboost/sdk/impl/ai;

    .line 166
    iput-object p7, p0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    .line 167
    iput-object p8, p0, Lcom/chartboost/sdk/impl/e;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 168
    iput-object p9, p0, Lcom/chartboost/sdk/impl/e;->q:Landroid/content/SharedPreferences;

    .line 169
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    .line 170
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    .line 171
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    .line 172
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/c;

    .line 173
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->s:Lcom/chartboost/sdk/impl/ak;

    .line 174
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->t:Lcom/chartboost/sdk/d;

    .line 175
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->u:Lcom/chartboost/sdk/impl/al;

    .line 177
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    .line 179
    const/4 v2, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->v:I

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    .line 183
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->j:Ljava/util/SortedSet;

    .line 184
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/SortedSet;

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->x:Ljava/util/Map;

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/e;->y:Ljava/util/Map;

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/e;->w:Z

    .line 190
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/f;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;
    .registers 21

    .prologue
    .line 740
    new-instance v2, Lcom/chartboost/sdk/Model/c;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    new-instance v4, Lcom/chartboost/sdk/impl/d;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/f;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chartboost/sdk/impl/e;->m:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/chartboost/sdk/impl/e;->q:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chartboost/sdk/impl/e;->s:Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/chartboost/sdk/impl/e;->t:Lcom/chartboost/sdk/d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chartboost/sdk/impl/e;->u:Lcom/chartboost/sdk/impl/al;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, p2

    invoke-direct/range {v2 .. v17}, Lcom/chartboost/sdk/Model/c;-><init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;Lcom/chartboost/sdk/impl/c;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 714
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    if-nez v0, :cond_e

    .line 715
    const-string v0, "AdUnitManager"

    const-string v2, "AdUnit does not have a template body"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 735
    :goto_d
    return-object v0

    .line 719
    :cond_e
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 720
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 722
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 723
    const-string v0, "{% certification_providers %}"

    iget-object v4, p1, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    .line 724
    invoke-static {v4}, Lcom/chartboost/sdk/impl/o;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 728
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 732
    :cond_4f
    :try_start_4f
    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/n;->a(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_54

    move-result-object v0

    goto :goto_d

    .line 733
    :catch_54
    move-exception v0

    .line 734
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "loadTemplateHtml"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 735
    goto :goto_d
.end method

.method private a(Lcom/chartboost/sdk/impl/f;ILjava/lang/String;)V
    .registers 15

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 381
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 382
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget v1, v1, Lcom/chartboost/sdk/impl/c;->a:I

    if-ne v1, v10, :cond_7e

    move v6, v8

    .line 383
    :goto_12
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_80

    if-nez v6, :cond_80

    move v7, v8

    .line 385
    :goto_19
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    .line 387
    new-instance v1, Lcom/chartboost/sdk/impl/e$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/impl/e$1;-><init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/f;JZZ)V

    .line 416
    iget v2, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ne v2, v10, :cond_82

    .line 417
    :goto_2a
    if-eqz v6, :cond_84

    .line 418
    new-instance v2, Lcom/chartboost/sdk/impl/aj;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 420
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    const-string v0, "raw"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;

    .line 443
    :goto_5f
    const/4 v0, 0x1

    iput v0, v2, Lcom/chartboost/sdk/impl/aj;->j:I

    .line 445
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->m:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_7d
    return-void

    :cond_7e
    move v6, v9

    .line 382
    goto :goto_12

    :cond_80
    move v7, v9

    .line 383
    goto :goto_19

    :cond_82
    move v8, v9

    .line 416
    goto :goto_2a

    .line 424
    :cond_84
    if-eqz v7, :cond_e1

    .line 425
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/c;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 426
    new-instance v2, Lcom/chartboost/sdk/impl/am;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/am;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 428
    const-string v1, "cache_assets"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 429
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 430
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/am;->l:Z

    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c9} :catch_ca

    goto :goto_5f

    .line 449
    :catch_ca
    move-exception v0

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendAdGetRequest"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 451
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "error sending ad-get request"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_7d

    .line 435
    :cond_e1
    :try_start_e1
    new-instance v2, Lcom/chartboost/sdk/impl/aj;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 436
    const-string v0, "local-videos"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 438
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_115} :catch_ca

    goto/16 :goto_5f
.end method

.method private a(Lcom/chartboost/sdk/Model/a;)Z
    .registers 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v1, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 355
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    .line 356
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    .line 357
    const-string v1, "AdUnitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    .line 361
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x1

    goto :goto_43
.end method

.method private a(Ljava/util/SortedSet;IIILjava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/f;",
            ">;III",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 269
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 272
    iget v2, v0, Lcom/chartboost/sdk/impl/f;->c:I

    if-ne v2, p2, :cond_18

    iget-object v2, v0, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v2, :cond_1c

    .line 273
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 277
    :cond_1c
    iget-object v2, v0, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 280
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/c;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 281
    const/16 v2, 0x8

    iput v2, v0, Lcom/chartboost/sdk/impl/f;->c:I

    .line 282
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 287
    :cond_3d
    iput p3, v0, Lcom/chartboost/sdk/impl/f;->c:I

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 289
    invoke-direct {p0, v0, p4, p5}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;ILjava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method

.method private b(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    .line 776
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, p2}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v1, :cond_18

    .line 801
    :goto_17
    return-void

    .line 781
    :cond_18
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_66

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v5, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 782
    :goto_20
    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-eqz v1, :cond_2d

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ne v1, v6, :cond_68

    :cond_2d
    const-string v2, "cache"

    .line 785
    :goto_2f
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_6b

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    :goto_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 787
    if-eqz v1, :cond_75

    .line 788
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_72

    const-string v3, "native"

    .line 791
    :goto_45
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ltz v0, :cond_77

    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->B:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_77

    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->B:[Ljava/lang/String;

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    aget-object v7, v0, v1

    .line 794
    :goto_56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->b:Ljava/lang/String;

    .line 797
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    .line 794
    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_66
    move-object v5, v0

    .line 781
    goto :goto_20

    .line 782
    :cond_68
    const-string v2, "show"

    goto :goto_2f

    .line 785
    :cond_6b
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_37

    .line 788
    :cond_72
    const-string v3, "web"

    goto :goto_45

    :cond_75
    move-object v3, v0

    goto :goto_45

    .line 791
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_56
.end method

.method private b(Lcom/chartboost/sdk/impl/f;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 804
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-nez v0, :cond_11

    .line 850
    :goto_10
    return-void

    .line 808
    :cond_11
    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_d8

    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 810
    :goto_19
    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-eqz v1, :cond_25

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-eq v1, v10, :cond_25

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ne v1, v11, :cond_db

    :cond_25
    const-string v3, "cache"

    .line 816
    :goto_27
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_df

    .line 817
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 821
    :goto_33
    if-eqz v1, :cond_e7

    .line 822
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_e3

    const-string v4, "native"

    .line 825
    :goto_3d
    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ltz v1, :cond_ea

    iget v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->B:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_ea

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->B:[Ljava/lang/String;

    iget v2, p1, Lcom/chartboost/sdk/impl/f;->c:I

    aget-object v1, v1, v2

    .line 828
    :goto_4e
    const/16 v2, 0xb

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v6, "adGetRequestSubmitToCallbackMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/f;->p:Ljava/lang/Integer;

    .line 829
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v8

    const/4 v6, 0x1

    const-string v7, "downloadRequestToCompletionMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/f;->n:Ljava/lang/Integer;

    .line 830
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v6, "downloadAccumulatedProcessingMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/f;->o:Ljava/lang/Integer;

    .line 831
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v10

    const/4 v6, 0x3

    const-string v7, "adGetRequestGetResponseCodeMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/f;->q:Ljava/lang/Integer;

    .line 832
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v6, "adGetRequestReadDataMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/f;->r:Ljava/lang/Integer;

    .line 833
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v11

    const/4 v6, 0x5

    const-string v7, "cacheRequestToReadyMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/f;->k:Ljava/lang/Integer;

    .line 834
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "showRequestToReadyMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/f;->l:Ljava/lang/Integer;

    .line 835
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "showRequestToShownMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    .line 836
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "adId"

    .line 837
    invoke-static {v7, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v2, v6

    const/16 v0, 0x9

    const-string v6, "location"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    .line 838
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v0

    const/16 v0, 0xa

    const-string v6, "state"

    .line 839
    invoke-static {v6, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v2, v0

    .line 828
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 842
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v2, v1, Lcom/chartboost/sdk/impl/c;->b:Ljava/lang/String;

    move-object v1, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto/16 :goto_10

    :cond_d8
    move-object v0, v5

    .line 808
    goto/16 :goto_19

    .line 810
    :cond_db
    const-string v3, "show"

    goto/16 :goto_27

    .line 819
    :cond_df
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;

    goto/16 :goto_33

    .line 822
    :cond_e3
    const-string v4, "web"

    goto/16 :goto_3d

    :cond_e7
    move-object v4, v5

    goto/16 :goto_3d

    .line 825
    :cond_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/chartboost/sdk/impl/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4e
.end method

.method private c()V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 226
    .line 228
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    if-ne v0, v4, :cond_a6

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v3

    :cond_18
    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    iget-object v9, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/f;

    .line 233
    if-eqz v1, :cond_18

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 238
    iget-wide v10, p0, Lcom/chartboost/sdk/impl/e;->z:J

    sub-long/2addr v0, v6

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 239
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v9, v0, v10

    if-gez v9, :cond_a4

    .line 240
    :cond_4f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_53
    move-object v2, v0

    .line 241
    goto :goto_18

    :cond_55
    move-object v6, v2

    .line 244
    :goto_56
    if-eqz v6, :cond_7f

    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_7f

    .line 245
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 246
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-gtz v0, :cond_7d

    move v0, v4

    .line 247
    :goto_7a
    if-eqz v0, :cond_7f

    .line 262
    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    move v0, v5

    .line 246
    goto :goto_7a

    .line 251
    :cond_7f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8a

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 253
    iput-object v3, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 256
    :cond_8a
    if-eqz v6, :cond_7c

    .line 257
    iget-object v7, p0, Lcom/chartboost/sdk/impl/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 259
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 257
    invoke-interface {v7, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_7c

    :cond_a4
    move-object v0, v2

    goto :goto_53

    :cond_a6
    move-object v6, v3

    goto :goto_56
.end method

.method private c(Lcom/chartboost/sdk/impl/f;)V
    .registers 8

    .prologue
    const/4 v2, 0x5

    .line 468
    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-eq v0, v2, :cond_f

    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    .line 495
    :cond_e
    :goto_e
    return-void

    .line 472
    :cond_f
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    if-ne v0, v2, :cond_39

    const/4 v0, 0x1

    move v1, v0

    .line 473
    :goto_15
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->g:I

    if-le v0, v1, :cond_e

    .line 477
    new-instance v0, Lcom/chartboost/sdk/impl/e$2;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/e$2;-><init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/f;)V

    .line 489
    iput v1, p1, Lcom/chartboost/sdk/impl/f;->g:I

    .line 490
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->l:Lcom/chartboost/sdk/impl/l;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 494
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/h;

    .line 490
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/chartboost/sdk/impl/l;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/h;)V

    goto :goto_e

    .line 472
    :cond_39
    const/4 v0, 0x2

    move v1, v0

    goto :goto_15
.end method

.method private d()V
    .registers 9

    .prologue
    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 369
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 373
    :cond_2c
    return-void
.end method

.method private d(Lcom/chartboost/sdk/impl/f;)V
    .registers 9

    .prologue
    .line 516
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 518
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 519
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->h:Ljava/lang/Long;

    if-eqz v1, :cond_21

    .line 520
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/chartboost/sdk/impl/f;->k:Ljava/lang/Integer;

    .line 521
    :cond_21
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    if-eqz v1, :cond_39

    .line 522
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/chartboost/sdk/impl/f;->l:Ljava/lang/Integer;

    .line 524
    :cond_39
    const-string v1, "ad-unit-cached"

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Ljava/lang/String;)V

    .line 526
    const/4 v1, 0x6

    iput v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 528
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/f;->f:Z

    if-eqz v1, :cond_58

    .line 529
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    :cond_58
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5e

    .line 534
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->h(Lcom/chartboost/sdk/impl/f;)V

    .line 536
    :cond_5e
    return-void
.end method

.method private e(Lcom/chartboost/sdk/impl/f;)V
    .registers 3

    .prologue
    .line 539
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    .line 541
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->g(Lcom/chartboost/sdk/impl/f;)V

    .line 542
    return-void
.end method

.method private e()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 948
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget v2, v2, Lcom/chartboost/sdk/impl/c;->a:I

    if-eqz v2, :cond_9

    .line 955
    :cond_8
    :goto_8
    return v1

    .line 951
    :cond_9
    sget-boolean v2, Lcom/chartboost/sdk/i;->u:Z

    if-nez v2, :cond_8

    .line 954
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->q:Landroid/content/SharedPreferences;

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 955
    if-ne v2, v0, :cond_19

    :goto_17
    move v1, v0

    goto :goto_8

    :cond_19
    move v0, v1

    goto :goto_17
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f(Lcom/chartboost/sdk/impl/f;)V
    .registers 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/16 v0, 0x8

    iput v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 548
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    .line 549
    return-void
.end method

.method private g(Lcom/chartboost/sdk/impl/f;)V
    .registers 8

    .prologue
    .line 567
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 569
    iget-wide v2, v0, Lcom/chartboost/sdk/Model/e;->s:J

    .line 570
    iget v1, v0, Lcom/chartboost/sdk/Model/e;->t:I

    .line 572
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->y:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 573
    if-nez v0, :cond_1d

    .line 574
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 575
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->y:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-long/2addr v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 579
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->x:Ljava/util/Map;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-void
.end method

.method private h(Lcom/chartboost/sdk/impl/f;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->n:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 655
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    :goto_1d
    return-void

    .line 662
    :cond_1e
    :try_start_1e
    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    .line 663
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v4, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 665
    iget v0, v3, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_ef

    .line 666
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/c;->g:Z

    if-nez v0, :cond_3c

    iget-object v0, v3, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 667
    :cond_3c
    iget-object v0, v3, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/e;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_4b

    .line 669
    const-string v1, "AdUnitManager"

    const-string v5, "Video media unavailable for the impression"

    invoke-static {v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_4b
    :goto_4b
    if-nez v0, :cond_8d

    .line 675
    iget-object v1, v3, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    .line 676
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_ed

    .line 677
    const-string v1, "AdUnitManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    :goto_8a
    move-object v1, v0

    .line 680
    goto :goto_58

    :cond_8c
    move-object v0, v1

    .line 683
    :cond_8d
    if-nez v0, :cond_ea

    .line 686
    iget v1, v3, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_e7

    .line 687
    invoke-direct {p0, v3, v4}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 688
    if-nez v1, :cond_e3

    .line 689
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 692
    :goto_9f
    if-nez v1, :cond_e1

    .line 693
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_a4} :catch_cb

    move-result-object v0

    .line 701
    :goto_a5
    if-nez v1, :cond_d9

    .line 702
    const/4 v1, 0x7

    iput v1, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 703
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 704
    iput-object v0, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 705
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->j:Ljava/lang/Long;

    .line 706
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1d

    .line 696
    :catch_cb
    move-exception v0

    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "showReady"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 698
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-object v0, v2

    goto :goto_a5

    .line 708
    :cond_d9
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    goto/16 :goto_1d

    :cond_e1
    move-object v0, v2

    goto :goto_a5

    :cond_e3
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_9f

    :cond_e7
    move-object v1, v0

    move-object v0, v2

    goto :goto_9f

    :cond_ea
    move-object v1, v0

    move-object v0, v2

    goto :goto_a5

    :cond_ed
    move-object v0, v1

    goto :goto_8a

    :cond_ef
    move-object v0, v2

    goto/16 :goto_4b
.end method

.method private i(Lcom/chartboost/sdk/impl/f;)V
    .registers 8

    .prologue
    .line 892
    new-instance v5, Lcom/chartboost/sdk/impl/g;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-direct {v5, p0, v0}, Lcom/chartboost/sdk/impl/g;-><init>(Lcom/chartboost/sdk/impl/e;Ljava/lang/String;)V

    .line 894
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->o:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 895
    const/4 v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/aj;->j:I

    .line 899
    const-string v1, "cached"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 902
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 903
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 904
    :cond_2e
    const-string v2, "location"

    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 905
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->m:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 906
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    iget v3, v3, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 5

    .prologue
    .line 913
    if-nez p1, :cond_5

    .line 914
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 940
    :goto_4
    return-object v0

    .line 917
    :cond_5
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 919
    if-nez v1, :cond_10

    .line 921
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_4

    .line 924
    :cond_10
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    .line 925
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 926
    if-eqz v0, :cond_25

    const-string v0, "video-portrait"

    :goto_1c
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 928
    if-nez v0, :cond_28

    .line 930
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_4

    .line 926
    :cond_25
    const-string v0, "video-landscape"

    goto :goto_1c

    .line 933
    :cond_28
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 936
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_4

    .line 939
    :cond_37
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    goto :goto_4

    :cond_4c
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_4
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .registers 5

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 297
    if-eqz v0, :cond_19

    iget v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_15

    iget v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_19

    .line 300
    :cond_15
    iget-object v0, v0, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    .line 302
    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 296
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    if-nez v0, :cond_a

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    .line 196
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    .line 198
    :cond_a
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/f;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 855
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 856
    const/4 v0, 0x6

    iput v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 857
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->j:Ljava/lang/Long;

    .line 858
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    .line 859
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    .line 861
    :cond_f
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 761
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_16

    .line 762
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v0, :cond_17

    .line 763
    const/4 v0, 0x6

    iput v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 764
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->j:Ljava/lang/Long;

    .line 765
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    .line 766
    iput-object v2, p1, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    .line 773
    :cond_16
    :goto_16
    return-void

    .line 768
    :cond_17
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->g(Lcom/chartboost/sdk/impl/f;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    .line 770
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    goto :goto_16
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 4

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-nez v0, :cond_7

    .line 564
    :goto_5
    monitor-exit p0

    return-void

    .line 556
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    .line 558
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 559
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->g(Lcom/chartboost/sdk/impl/f;)V

    .line 563
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    goto :goto_5

    .line 553
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/a;)V
    .registers 5

    .prologue
    .line 457
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    .line 459
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const/4 v0, 0x4

    :goto_a
    iput v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    .line 460
    iput-object p2, p1, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    .line 462
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->c(Lcom/chartboost/sdk/impl/f;)V

    .line 464
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_18

    .line 465
    monitor-exit p0

    return-void

    .line 459
    :cond_16
    const/4 v0, 0x5

    goto :goto_a

    .line 457
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/f;ZII)V
    .registers 7

    .prologue
    .line 502
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    .line 503
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->n:Ljava/lang/Integer;

    .line 504
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->o:Ljava/lang/Integer;

    .line 505
    if-eqz p2, :cond_21

    .line 506
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->d(Lcom/chartboost/sdk/impl/f;)V

    .line 512
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    .line 513
    monitor-exit p0

    return-void

    .line 508
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->e(Lcom/chartboost/sdk/impl/f;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1c

    .line 502
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 201
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/e;->w:Z

    if-nez v0, :cond_2e

    .line 203
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/e;->w:Z

    .line 205
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/e;->d()V

    .line 207
    iget v0, p0, Lcom/chartboost/sdk/impl/e;->g:I

    if-ne v0, v1, :cond_29

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->j:Ljava/util/SortedSet;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "show"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 209
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/SortedSet;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "cache"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    .line 213
    :cond_29
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/e;->c()V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2f

    .line 215
    iput-boolean v6, p0, Lcom/chartboost/sdk/impl/e;->w:Z

    .line 218
    :cond_2e
    return-void

    .line 215
    :catchall_2f
    move-exception v0

    iput-boolean v6, p0, Lcom/chartboost/sdk/impl/e;->w:Z

    throw v0
.end method

.method b(Lcom/chartboost/sdk/impl/f;)V
    .registers 8

    .prologue
    .line 865
    iget v0, p1, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4f

    .line 867
    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 868
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    .line 870
    :cond_27
    const-string v0, "ad-unit-shown"

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->y:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->i(Lcom/chartboost/sdk/impl/f;)V

    .line 877
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    .line 878
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    .line 880
    :cond_4f
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 307
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 308
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 309
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/e;->A:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    :goto_1c
    return-void

    .line 313
    :cond_1d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 317
    if-eqz v0, :cond_3a

    iget v2, v0, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3a

    iget-object v2, v0, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    .line 318
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 323
    :cond_3a
    if-nez v0, :cond_51

    .line 324
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    iget v2, p0, Lcom/chartboost/sdk/impl/e;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/e;->v:I

    invoke-direct {v0, v2, p1, v4}, Lcom/chartboost/sdk/impl/f;-><init>(ILjava/lang/String;I)V

    .line 325
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_51
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/chartboost/sdk/impl/f;->f:Z

    .line 329
    iget-object v2, v0, Lcom/chartboost/sdk/impl/f;->h:Ljava/lang/Long;

    if-nez v2, :cond_64

    .line 330
    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/impl/f;->h:Ljava/lang/Long;

    .line 333
    :cond_64
    iget v0, v0, Lcom/chartboost/sdk/impl/f;->c:I

    packed-switch v0, :pswitch_data_7e

    .line 350
    :goto_69
    :pswitch_69
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    goto :goto_1c

    .line 344
    :pswitch_6d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/c$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 333
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_6d
        :pswitch_6d
    .end packed-switch
.end method

.method c(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 583
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 584
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 585
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/e;->A:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    :goto_1b
    return-void

    .line 589
    :cond_1c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 590
    if-nez v0, :cond_3b

    .line 591
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    iget v1, p0, Lcom/chartboost/sdk/impl/e;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/e;->v:I

    invoke-direct {v0, v1, p1, v4}, Lcom/chartboost/sdk/impl/f;-><init>(ILjava/lang/String;I)V

    .line 592
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->j:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_3b
    iget-object v1, v0, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    if-nez v1, :cond_4b

    .line 597
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    .line 600
    :cond_4b
    iget v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    packed-switch v1, :pswitch_data_70

    .line 635
    :goto_50
    :pswitch_50
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    goto :goto_1b

    .line 602
    :pswitch_54
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->i:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 603
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->j:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 604
    iput v4, v0, Lcom/chartboost/sdk/impl/f;->c:I

    goto :goto_50

    .line 611
    :pswitch_61
    const/4 v1, 0x3

    iput v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    goto :goto_50

    .line 618
    :pswitch_65
    const/4 v1, 0x5

    iput v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    .line 619
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/e;->c(Lcom/chartboost/sdk/impl/f;)V

    goto :goto_50

    .line 626
    :pswitch_6c
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/e;->h(Lcom/chartboost/sdk/impl/f;)V

    goto :goto_50

    .line 600
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_54
        :pswitch_50
        :pswitch_61
        :pswitch_50
        :pswitch_65
        :pswitch_50
        :pswitch_6c
        :pswitch_50
    .end packed-switch
.end method

.method d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 884
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 885
    if-eqz v0, :cond_15

    iget v1, v0, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    .line 886
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/e;->f(Lcom/chartboost/sdk/impl/f;)V

    .line 887
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    .line 889
    :cond_15
    return-void
.end method

###### Class com.chartboost.sdk.impl.e.AnonymousClass1 (com.chartboost.sdk.impl.e$1)
.class Lcom/chartboost/sdk/impl/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/f;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/chartboost/sdk/impl/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/f;JZZ)V
    .registers 8

    .prologue
    .line 387
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e$1;->e:Lcom/chartboost/sdk/impl/e;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    iput-wide p3, p0, Lcom/chartboost/sdk/impl/e$1;->b:J

    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/e$1;->c:Z

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/e$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 5

    .prologue
    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$1;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0, v1, p2}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError;)V

    .line 412
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$1;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/e;->c:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/e$1;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/f;->p:Ljava/lang/Integer;

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/impl/aj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/f;->q:Ljava/lang/Integer;

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/impl/aj;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/f;->r:Ljava/lang/Integer;

    .line 395
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/e$1;->c:Z

    if-eqz v0, :cond_4f

    .line 396
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V

    .line 402
    :goto_47
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$1;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/a;)V

    .line 407
    :goto_4e
    return-void

    .line 397
    :cond_4f
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/e$1;->d:Z

    if-eqz v0, :cond_74

    .line 398
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_47

    .line 403
    :catch_5b
    move-exception v0

    .line 404
    const-class v1, Lcom/chartboost/sdk/impl/e;

    const-string v2, "sendAdGetRequest.onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$1;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$1;->a:Lcom/chartboost/sdk/impl/f;

    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Response conversion failure"

    invoke-direct {v2, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_4e

    .line 400
    :cond_74
    :try_start_74
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_7b} :catch_5b

    goto :goto_47
.end method

###### Class com.chartboost.sdk.impl.e.AnonymousClass2 (com.chartboost.sdk.impl.e$2)
.class Lcom/chartboost/sdk/impl/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/e;->c(Lcom/chartboost/sdk/impl/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/f;

.field final synthetic b:Lcom/chartboost/sdk/impl/e;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/f;)V
    .registers 3

    .prologue
    .line 477
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e$2;->b:Lcom/chartboost/sdk/impl/e;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/e$2;->a:Lcom/chartboost/sdk/impl/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .registers 6

    .prologue
    .line 482
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$2;->b:Lcom/chartboost/sdk/impl/e;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$2;->a:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;ZII)V

    .line 486
    return-void
.end method

###### Class com.chartboost.sdk.impl.e.a (com.chartboost.sdk.impl.e$a)
.class public Lcom/chartboost/sdk/impl/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/chartboost/sdk/impl/f;

.field final d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field final synthetic e:Lcom/chartboost/sdk/impl/e;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 6

    .prologue
    .line 990
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput p2, p0, Lcom/chartboost/sdk/impl/e$a;->a:I

    .line 992
    iput-object p3, p0, Lcom/chartboost/sdk/impl/e$a;->b:Ljava/lang/String;

    .line 993
    iput-object p4, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/f;

    .line 994
    iput-object p5, p0, Lcom/chartboost/sdk/impl/e$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 995
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_13

    .line 1001
    :try_start_3
    iget v0, p0, Lcom/chartboost/sdk/impl/e$a;->a:I

    packed-switch v0, :pswitch_data_5c

    .line 1035
    :goto_8
    :pswitch_8
    monitor-exit v1

    .line 1039
    :goto_9
    return-void

    .line 1003
    :pswitch_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->a()V

    goto :goto_8

    .line 1035
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_13

    .line 1036
    :catch_13
    move-exception v0

    .line 1037
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9

    .line 1007
    :pswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/chartboost/sdk/impl/e;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 1008
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->b()V

    goto :goto_8

    .line 1012
    :pswitch_29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->b(Ljava/lang/String;)V

    goto :goto_8

    .line 1016
    :pswitch_31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->c(Ljava/lang/String;)V

    goto :goto_8

    .line 1020
    :pswitch_39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/impl/f;)V

    goto :goto_8

    .line 1024
    :pswitch_41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/f;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/e$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_8

    .line 1028
    :pswitch_4b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->a(Lcom/chartboost/sdk/impl/f;)V

    goto :goto_8

    .line 1032
    :pswitch_53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->e:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->d(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_10

    goto :goto_8

    .line 1001
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_1e
        :pswitch_29
        :pswitch_31
        :pswitch_39
        :pswitch_41
        :pswitch_4b
        :pswitch_53
    .end packed-switch
.end method
