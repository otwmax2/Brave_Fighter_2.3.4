###### Class com.facebook.ads.internal.q.c.e (com.facebook.ads.internal.q.c.e)
.class public Lcom/facebook/ads/internal/q/c/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/q/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/internal/q/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

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

.field private e:Ljava/util/Map;
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

.field private f:Lcom/facebook/ads/internal/p/a/n;

.field private g:Lcom/facebook/ads/internal/q/c/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/q/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/q/c/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/q/c/e;->b:Ljava/util/Set;

    sget-object v0, Lcom/facebook/ads/internal/q/c/e;->b:Ljava/util/Set;

    const-string v1, "#"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/q/c/e;->b:Ljava/util/Set;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/q/c/e;->c:Landroid/content/Context;

    if-eqz p2, :cond_19

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_d
    iput-object v0, p0, Lcom/facebook/ads/internal/q/c/e;->d:Ljava/util/Map;

    if-eqz p3, :cond_16

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_16
    iput-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->e:Ljava/util/Map;

    return-void

    :cond_19
    move-object v0, v1

    goto :goto_d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-object p1

    :cond_13
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "&"

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_41
    const-string v0, "?"

    goto :goto_1d
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/q/c/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v1

    :try_start_7
    iget-object v2, p0, Lcom/facebook/ads/internal/q/c/e;->e:Ljava/util/Map;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/facebook/ads/internal/q/c/e;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2a

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->f:Lcom/facebook/ads/internal/p/a/n;

    :goto_1a
    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->f:Lcom/facebook/ads/internal/p/a/n;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->f:Lcom/facebook/ads/internal/p/a/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/p/a/n;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_29

    const/4 v0, 0x1

    :cond_29
    :goto_29
    return v0

    :cond_2a
    new-instance v2, Lcom/facebook/ads/internal/p/a/p;

    invoke-direct {v2}, Lcom/facebook/ads/internal/p/a/p;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/q/c/e;->e:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/p/a/p;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/p/a/p;

    invoke-virtual {v1, p1, v2}, Lcom/facebook/ads/internal/p/a/a;->b(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->f:Lcom/facebook/ads/internal/p/a/n;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/q/c/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/g/a;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analog"

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/internal/q/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object p1

    :goto_e
    return-object p1

    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/facebook/ads/internal/q/c/f;
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/facebook/ads/internal/q/c/e;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    move-object v0, v3

    :goto_13
    return-object v0

    :cond_14
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/q/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->d:Ljava/util/Map;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/internal/q/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2f

    :cond_4d
    move-object v0, v2

    :cond_4e
    const/4 v1, 0x1

    :goto_4f
    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_62

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/q/c/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    new-instance v0, Lcom/facebook/ads/internal/q/c/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/q/c/e;->f:Lcom/facebook/ads/internal/p/a/n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/q/c/f;-><init>(Lcom/facebook/ads/internal/p/a/n;)V

    goto :goto_13

    :cond_62
    move-object v0, v3

    goto :goto_13

    :cond_64
    move v1, v2

    goto :goto_4f
.end method

.method public a(Lcom/facebook/ads/internal/q/c/e$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/q/c/e;->g:Lcom/facebook/ads/internal/q/c/e$a;

    return-void
.end method

.method protected a(Lcom/facebook/ads/internal/q/c/f;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/q/c/e;->g:Lcom/facebook/ads/internal/q/c/e$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/q/c/e;->g:Lcom/facebook/ads/internal/q/c/e$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/q/c/e$a;->a(Lcom/facebook/ads/internal/q/c/f;)V

    :cond_9
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/q/c/e;->a([Ljava/lang/String;)Lcom/facebook/ads/internal/q/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/q/c/e;->g:Lcom/facebook/ads/internal/q/c/e$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/q/c/e;->g:Lcom/facebook/ads/internal/q/c/e$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/q/c/e$a;->a()V

    :cond_9
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/q/c/f;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/q/c/e;->a(Lcom/facebook/ads/internal/q/c/f;)V

    return-void
.end method

###### Class com.facebook.ads.internal.q.c.e.a (com.facebook.ads.internal.q.c.e$a)
.class public interface abstract Lcom/facebook/ads/internal/q/c/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/facebook/ads/internal/q/c/f;)V
.end method
