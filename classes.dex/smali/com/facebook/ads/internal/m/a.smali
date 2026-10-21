###### Class com.facebook.ads.internal.m.a (com.facebook.ads.internal.m.a)
.class public Lcom/facebook/ads/internal/m/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/m/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:D

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/m/e;

.field private final g:Lcom/facebook/ads/internal/m/f;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/m/e;Lcom/facebook/ads/internal/m/f;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/internal/m/e;",
            "Lcom/facebook/ads/internal/m/f;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/a;->b:D

    iput-wide p2, p0, Lcom/facebook/ads/internal/m/a;->c:D

    iput-object p4, p0, Lcom/facebook/ads/internal/m/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/m/a;->f:Lcom/facebook/ads/internal/m/e;

    iput-object p7, p0, Lcom/facebook/ads/internal/m/a;->g:Lcom/facebook/ads/internal/m/f;

    iput-boolean p8, p0, Lcom/facebook/ads/internal/m/a;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2c

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/facebook/ads/internal/m/a;->f()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "analog"

    invoke-static {}, Lcom/facebook/ads/internal/g/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    invoke-static {v0}, Lcom/facebook/ads/internal/m/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/m/a;->e:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2b
    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/m/a;->b:D

    return-wide v0
.end method

.method public c()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/m/a;->c:D

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
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

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method final f()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->f:Lcom/facebook/ads/internal/m/e;

    sget-object v1, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final g()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public h()Lcom/facebook/ads/internal/m/e;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->f:Lcom/facebook/ads/internal/m/e;

    return-object v0
.end method

.method public i()Lcom/facebook/ads/internal/m/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/a;->g:Lcom/facebook/ads/internal/m/f;

    return-object v0
.end method

###### Class com.facebook.ads.internal.m.a.C0014a (com.facebook.ads.internal.m.a$a)
.class public Lcom/facebook/ads/internal/m/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/ads/internal/m/e;

.field private f:Lcom/facebook/ads/internal/m/f;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/facebook/ads/internal/m/a$a;
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/m/a$a;->b:D

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a$a;->e:Lcom/facebook/ads/internal/m/e;

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a$a;->f:Lcom/facebook/ads/internal/m/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/internal/m/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/facebook/ads/internal/m/a$a;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/m/a$a;->g:Z

    return-object p0
.end method

.method public a()Lcom/facebook/ads/internal/m/a;
    .registers 10

    new-instance v0, Lcom/facebook/ads/internal/m/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/a$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/internal/m/a$a;->b:D

    iget-object v4, p0, Lcom/facebook/ads/internal/m/a$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/ads/internal/m/a$a;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/facebook/ads/internal/m/a$a;->e:Lcom/facebook/ads/internal/m/e;

    iget-object v7, p0, Lcom/facebook/ads/internal/m/a$a;->f:Lcom/facebook/ads/internal/m/f;

    iget-boolean v8, p0, Lcom/facebook/ads/internal/m/a$a;->g:Z

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/m/a;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/m/e;Lcom/facebook/ads/internal/m/f;Z)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/a$a;->c:Ljava/lang/String;

    return-object p0
.end method
