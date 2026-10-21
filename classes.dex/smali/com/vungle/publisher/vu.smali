###### Class com.vungle.publisher.vu (com.vungle.publisher.vu)
.class public Lcom/vungle/publisher/vu;
.super Lcom/vungle/publisher/wu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/vu$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/wu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    :cond_d
    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 29
    :cond_b
    return-object v0
.end method

###### Class com.vungle.publisher.vu.a (com.vungle.publisher.vu$a)
.class public Lcom/vungle/publisher/vu$a;
.super Lcom/vungle/publisher/wu$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/vu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/wu$a",
        "<",
        "Lcom/vungle/publisher/vu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/wu$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/vu;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/vu$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vu;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/vungle/publisher/vu;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_2d

    .line 51
    invoke-virtual {p0}, Lcom/vungle/publisher/vu$a;->a()Lcom/vungle/publisher/vu;

    move-result-object v1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 57
    if-eqz v0, :cond_12

    if-eqz v3, :cond_12

    .line 58
    iget-object v4, v1, Lcom/vungle/publisher/vu;->a:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2c
    move-object v0, v1

    .line 62
    :cond_2d
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/vu;
    .registers 3

    .prologue
    .line 67
    new-array v0, p1, [Lcom/vungle/publisher/vu;

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Lcom/vungle/publisher/wu;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/vu$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/vu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/vungle/publisher/vu$a;->a()Lcom/vungle/publisher/vu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/vu$a;->a(I)[Lcom/vungle/publisher/vu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/vu$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/vu;

    move-result-object v0

    return-object v0
.end method
