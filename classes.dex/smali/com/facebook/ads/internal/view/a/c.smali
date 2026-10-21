###### Class com.facebook.ads.internal.view.a.c (com.facebook.ads.internal.view.a.c)
.class public Lcom/facebook/ads/internal/view/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJJJJJ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/facebook/ads/internal/view/a/c;->b:J

    iput-wide p4, p0, Lcom/facebook/ads/internal/view/a/c;->c:J

    iput-wide p6, p0, Lcom/facebook/ads/internal/view/a/c;->d:J

    iput-wide p8, p0, Lcom/facebook/ads/internal/view/a/c;->e:J

    iput-wide p10, p0, Lcom/facebook/ads/internal/view/a/c;->f:J

    iput-wide p12, p0, Lcom/facebook/ads/internal/view/a/c;->g:J

    iput-wide p14, p0, Lcom/facebook/ads/internal/view/a/c;->h:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/internal/view/a/c$1;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Lcom/facebook/ads/internal/view/a/c;-><init>(Ljava/lang/String;JJJJJJJ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "initial_url"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "handler_time_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_start_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response_end_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dom_content_loaded_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scroll_ready_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_finish_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_finish_ms"

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/a/c;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.facebook.ads.internal.view.a.c.AnonymousClass1 (com.facebook.ads.internal.view.a.c$1)
.class synthetic Lcom/facebook/ads/internal/view/a/c$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ads.internal.view.a.c.a (com.facebook.ads.internal.view.a.c$a)
.class public Lcom/facebook/ads/internal/view/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->b:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->c:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->d:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->e:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->f:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->g:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/c$a;->h:J

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->b:J

    return-object p0
.end method

.method public a()Lcom/facebook/ads/internal/view/a/c;
    .registers 20

    new-instance v2, Lcom/facebook/ads/internal/view/a/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/view/a/c$a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/ads/internal/view/a/c$a;->b:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/facebook/ads/internal/view/a/c$a;->c:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/facebook/ads/internal/view/a/c$a;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/facebook/ads/internal/view/a/c$a;->e:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/facebook/ads/internal/view/a/c$a;->f:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/facebook/ads/internal/view/a/c$a;->g:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/ads/internal/view/a/c$a;->h:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/internal/view/a/c;-><init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/internal/view/a/c$1;)V

    return-object v2
.end method

.method public b(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->c:J

    return-object p0
.end method

.method public c(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->d:J

    return-object p0
.end method

.method public d(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->e:J

    return-object p0
.end method

.method public e(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->f:J

    return-object p0
.end method

.method public f(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->g:J

    return-object p0
.end method

.method public g(J)Lcom/facebook/ads/internal/view/a/c$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/c$a;->h:J

    return-object p0
.end method
