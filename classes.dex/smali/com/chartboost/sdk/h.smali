###### Class com.chartboost.sdk.h (com.chartboost.sdk.h)
.class public Lcom/chartboost/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/h$a;
    }
.end annotation


# static fields
.field private static v:Lcom/chartboost/sdk/h;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field final b:Lcom/chartboost/sdk/impl/l;

.field public final c:Lcom/chartboost/sdk/Libraries/d;

.field public final d:Lcom/chartboost/sdk/impl/e;

.field public final e:Lcom/chartboost/sdk/impl/c;

.field final f:Lcom/chartboost/sdk/impl/e;

.field final g:Lcom/chartboost/sdk/impl/c;

.field public final h:Lcom/chartboost/sdk/impl/ah;

.field final i:Lcom/chartboost/sdk/impl/m;

.field public final j:Lcom/chartboost/sdk/impl/ap;

.field final k:Lcom/chartboost/sdk/impl/e;

.field final l:Lcom/chartboost/sdk/impl/c;

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/content/SharedPreferences;

.field public final o:Lcom/chartboost/sdk/Tracking/a;

.field public final p:Landroid/os/Handler;

.field public final q:Lcom/chartboost/sdk/c;

.field public final r:Lcom/chartboost/sdk/impl/ak;

.field s:Z

.field t:Z

.field u:Z

.field private final w:Lcom/chartboost/sdk/impl/s;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/s;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 49

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 73
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 75
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->u:Z

    .line 98
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v40

    .line 100
    new-instance v2, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ai;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/sdk/impl/ai;

    .line 101
    new-instance v2, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v2}, Lcom/chartboost/sdk/Libraries/i;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/Libraries/i;

    .line 103
    new-instance v2, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ao;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chartboost/sdk/impl/ao;

    .line 104
    new-instance v2, Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/ah;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ao;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 112
    invoke-static {v8}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 116
    :try_start_5c
    const-string v2, "config"

    const-string v3, "{}"

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_69} :catch_300

    .line 124
    :goto_69
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 125
    invoke-static {v12, v2, v13}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 126
    new-instance v2, Lcom/chartboost/sdk/Model/e;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Model/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v12, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    :cond_82
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/impl/s;

    .line 130
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    .line 131
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    .line 133
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    .line 135
    new-instance v15, Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v0, p4

    invoke-direct {v15, v0, v8, v12}, Lcom/chartboost/sdk/Libraries/f;-><init>(Lcom/chartboost/sdk/impl/s;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 137
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/e;->y:Z

    if-nez v2, :cond_312

    .line 138
    const-string v2, ""

    sput-object v2, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 143
    :goto_b1
    new-instance v2, Lcom/chartboost/sdk/Libraries/d;

    invoke-direct {v2, v13}, Lcom/chartboost/sdk/Libraries/d;-><init>(Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    .line 144
    new-instance v7, Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v9, p2

    move-object v11, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/chartboost/sdk/impl/ap;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ai;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    .line 146
    new-instance v14, Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcom/chartboost/sdk/Tracking/a;-><init>(Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    .line 148
    new-instance v16, Lcom/chartboost/sdk/impl/l;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v23, v0

    move-object/from16 v17, p5

    move-object/from16 v18, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v23}, Lcom/chartboost/sdk/impl/l;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/l;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    .line 150
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v2

    new-instance v3, Lcom/chartboost/sdk/impl/av;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Lcom/chartboost/sdk/impl/av;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/av;

    .line 152
    new-instance v3, Lcom/chartboost/sdk/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    move-object/from16 v0, p6

    invoke-direct {v3, v2, v4, v12, v0}, Lcom/chartboost/sdk/d;-><init>(Lcom/chartboost/sdk/impl/av;Lcom/chartboost/sdk/impl/l;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Handler;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/chartboost/sdk/d;

    .line 154
    new-instance v2, Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v3, v5, v1}, Lcom/chartboost/sdk/impl/ak;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Landroid/os/Handler;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ak;

    .line 156
    new-instance v16, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v20, v0

    move-object/from16 v17, p1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move-object/from16 v21, p6

    invoke-direct/range {v16 .. v22}, Lcom/chartboost/sdk/c;-><init>(Landroid/app/Activity;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    .line 158
    new-instance v2, Lcom/chartboost/sdk/impl/al;

    invoke-direct {v2, v15}, Lcom/chartboost/sdk/impl/al;-><init>(Lcom/chartboost/sdk/Libraries/f;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/chartboost/sdk/impl/al;

    .line 160
    invoke-static {}, Lcom/chartboost/sdk/impl/c;->c()Lcom/chartboost/sdk/impl/c;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/impl/c;->a()Lcom/chartboost/sdk/impl/c;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/impl/c;->b()Lcom/chartboost/sdk/impl/c;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    .line 164
    new-instance v23, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/c;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/e;-><init>(Lcom/chartboost/sdk/impl/c;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    .line 165
    new-instance v23, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/e;-><init>(Lcom/chartboost/sdk/impl/c;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    .line 166
    new-instance v23, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ak;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/e;-><init>(Lcom/chartboost/sdk/impl/c;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ap;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/al;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    .line 168
    new-instance v16, Lcom/chartboost/sdk/impl/m;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v21, v0

    move-object/from16 v18, v15

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v22}, Lcom/chartboost/sdk/impl/m;-><init>(Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/m;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/m;

    .line 170
    sput-object v8, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 171
    sput-object p2, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 172
    sput-object p3, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 173
    const-string v2, "cbLimitTrack"

    sget-boolean v3, Lcom/chartboost/sdk/i;->x:Z

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/chartboost/sdk/i;->x:Z

    .line 175
    sget-object v2, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v5, v2}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/content/Context;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 178
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-boolean v5, v2, Lcom/chartboost/sdk/Model/e;->J:Z

    .line 179
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/e;->K:Z

    if-nez v2, :cond_318

    const/4 v2, 0x1

    move v3, v2

    .line 180
    :goto_2f1
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/e;->L:Z

    if-nez v2, :cond_31b

    const/4 v2, 0x1

    .line 177
    :goto_2fc
    invoke-static {v4, v5, v3, v2}, Lcom/chartboost/sdk/impl/o;->a(Landroid/app/Application;ZZZ)V

    .line 181
    return-void

    .line 118
    :catch_300
    move-exception v2

    .line 119
    const-string v3, "Sdk"

    const-string v4, "Unable to process config"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_69

    .line 140
    :cond_312
    const/4 v2, 0x0

    invoke-static {v8, v2, v13}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V

    goto/16 :goto_b1

    .line 179
    :cond_318
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2f1

    .line 180
    :cond_31b
    const/4 v2, 0x0

    goto :goto_2fc
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 184
    const-string v0, "cbPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/chartboost/sdk/h;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/h;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V
    .registers 6

    .prologue
    .line 436
    sget-object v0, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 438
    if-nez p1, :cond_36

    .line 439
    :try_start_4
    const-string v1, "user_agent"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 440
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_3f

    move-result-object v0

    .line 455
    :goto_1d
    sput-object v0, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 458
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_agent"

    .line 459
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    return-void

    .line 443
    :cond_2d
    :try_start_2d
    const-string v1, "user_agent"

    sget-object v2, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 448
    :cond_36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_3f

    move-result-object v0

    goto :goto_1d

    .line 451
    :catch_3f
    move-exception v1

    goto :goto_1d
.end method

.method static a(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 468
    sput-boolean p1, Lcom/chartboost/sdk/i;->x:Z

    .line 469
    invoke-static {p0}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_15

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cbLimitTrack"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    :cond_15
    return-void
.end method

.method static a(Lcom/chartboost/sdk/h;)V
    .registers 1

    .prologue
    .line 85
    sput-object p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/h;

    .line 86
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 306
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->e()Z

    move-result v1

    if-nez v1, :cond_10

    .line 309
    iget-object v0, v0, Lcom/chartboost/sdk/impl/s;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :goto_f
    return-void

    .line 311
    :cond_10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_f
.end method

.method static f()Z
    .registers 2

    .prologue
    .line 315
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->c:Z

    if-eqz v0, :cond_20

    .line 318
    :try_start_12
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Integration Warning: your account has been disabled for this session. This app has no active publishing campaigns, please create a publishing campaign in the Chartboost dashboard and wait at least 30 minutes to re-enable. If you need assistance, please visit http://chartboo.st/publishing ."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1a

    .line 323
    :catch_1a
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private g()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->a()V

    .line 282
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->u:Z

    if-nez v0, :cond_17

    .line 283
    new-instance v0, Lcom/chartboost/sdk/h$a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 285
    :cond_17
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/impl/s;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)Z

    .line 239
    :cond_d
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->u:Z

    if-nez v0, :cond_1e

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->c()V

    .line 243
    :cond_1e
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 188
    iput-boolean v4, p0, Lcom/chartboost/sdk/h;->s:Z

    .line 189
    new-instance v5, Lcom/chartboost/sdk/h$1;

    invoke-direct {v5, p0, p1}, Lcom/chartboost/sdk/h$1;-><init>(Lcom/chartboost/sdk/h;Ljava/lang/Runnable;)V

    .line 225
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/config"

    iget-object v2, p0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 230
    iput-boolean v4, v0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 232
    return-void
.end method

.method b()V
    .registers 3

    .prologue
    .line 250
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 251
    const-string v0, "Sdk"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_b
    return-void

    .line 269
    :cond_c
    invoke-direct {p0}, Lcom/chartboost/sdk/h;->g()V

    goto :goto_b
.end method

.method c()V
    .registers 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method

.method d()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 291
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_10

    .line 295
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_d

    .line 296
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 297
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->t:Z

    .line 299
    :cond_10
    return-void
.end method

###### Class com.chartboost.sdk.h.AnonymousClass1 (com.chartboost.sdk.h$1)
.class Lcom/chartboost/sdk/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 189
    iput-object p1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 217
    :cond_e
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_20

    .line 218
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 219
    if-eqz v0, :cond_1b

    .line 220
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 221
    :cond_1b
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 223
    :cond_20
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 193
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "response"

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_35

    .line 195
    iget-object v1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v2, v2, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, v2}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 196
    iget-object v1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config"

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    :cond_35
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_3e
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_4f

    .line 205
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 206
    if-eqz v0, :cond_4b

    .line 207
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 208
    :cond_4b
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 210
    :cond_4f
    return-void
.end method

###### Class com.chartboost.sdk.h.a (com.chartboost.sdk.h$a)
.class public Lcom/chartboost/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 360
    iput-object p1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    .line 357
    iput-boolean v1, p0, Lcom/chartboost/sdk/h$a;->c:Z

    .line 358
    iput-boolean v1, p0, Lcom/chartboost/sdk/h$a;->d:Z

    .line 361
    iput p2, p0, Lcom/chartboost/sdk/h$a;->a:I

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 367
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/h$a;->a:I

    packed-switch v0, :pswitch_data_e0

    .line 414
    :cond_5
    :goto_5
    return-void

    .line 369
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->d()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_5

    .line 411
    :catch_c
    move-exception v0

    .line 412
    const-class v1, Lcom/chartboost/sdk/h$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/h$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 373
    :pswitch_2e
    :try_start_2e
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->c:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    goto :goto_5

    .line 377
    :pswitch_33
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->d:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->v:Z

    .line 379
    iget-boolean v0, p0, Lcom/chartboost/sdk/h$a;->d:Z

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->a()V

    goto :goto_5

    .line 382
    :cond_49
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->b()V

    goto :goto_5

    .line 388
    :pswitch_51
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "api/install"

    iget-object v2, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v2, v2, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v3, v3, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 393
    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/chartboost/sdk/impl/e$a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/chartboost/sdk/h$a;

    iget-object v2, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->u:Z

    goto/16 :goto_5

    .line 403
    :pswitch_c7
    iget-object v0, p0, Lcom/chartboost/sdk/h$a;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->a()V

    goto/16 :goto_5

    .line 407
    :pswitch_d0
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_5

    .line 408
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p0, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_dd} :catch_c

    goto/16 :goto_5

    .line 367
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2e
        :pswitch_33
        :pswitch_51
        :pswitch_c7
        :pswitch_d0
    .end packed-switch
.end method
