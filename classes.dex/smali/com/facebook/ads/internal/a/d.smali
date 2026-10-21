###### Class com.facebook.ads.internal.a.d (com.facebook.ads.internal.a.d)
.class public Lcom/facebook/ads/internal/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/a/d$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/json/JSONArray;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_20

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    move-object v0, v1

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/a/d$a;Lcom/facebook/ads/internal/m/c;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/ads/internal/a/d$a;->a()Lcom/facebook/ads/internal/a/c;

    move-result-object v3

    if-eqz v3, :cond_c

    sget-object v0, Lcom/facebook/ads/internal/a/c;->a:Lcom/facebook/ads/internal/a/c;

    if-ne v3, v0, :cond_d

    :cond_c
    :goto_c
    return v2

    :cond_d
    invoke-interface {p1}, Lcom/facebook/ads/internal/a/d$a;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_30
    sget-object v4, Lcom/facebook/ads/internal/a/c;->b:Lcom/facebook/ads/internal/a/c;

    if-ne v3, v4, :cond_47

    move v3, v1

    :goto_35
    if-ne v0, v3, :cond_c

    invoke-interface {p1}, Lcom/facebook/ads/internal/a/d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lcom/facebook/ads/internal/m/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    move v2, v1

    goto :goto_c

    :cond_47
    move v3, v2

    goto :goto_35

    :cond_49
    move v2, v1

    goto :goto_c

    :cond_4b
    move v0, v2

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_e
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_15

    move v0, v1

    goto :goto_8

    :catch_13
    move-exception v1

    goto :goto_8

    :catch_15
    move-exception v1

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.a.d.a (com.facebook.ads.internal.a.d$a)
.class public interface abstract Lcom/facebook/ads/internal/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Lcom/facebook/ads/internal/a/c;
.end method

.method public abstract b()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method
