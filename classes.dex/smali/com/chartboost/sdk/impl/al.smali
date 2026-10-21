###### Class com.chartboost.sdk.impl.al (com.chartboost.sdk.impl.al)
.class public Lcom/chartboost/sdk/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/chartboost/sdk/Libraries/f;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/f;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/Libraries/f;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/Libraries/f;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ".png"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/h$a;
    .registers 8

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/h$a;

    .line 44
    :goto_16
    return-object v0

    .line 35
    :cond_17
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, ".png"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/chartboost/sdk/Libraries/h$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/al;->a:Lcom/chartboost/sdk/Libraries/f;

    invoke-direct {v0, p1, v1, v2}, Lcom/chartboost/sdk/Libraries/h$a;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/f;)V

    .line 38
    iget-object v1, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 41
    :cond_42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/al;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_4f
    const/4 v0, 0x0

    goto :goto_16
.end method
