###### Class com.vungle.publisher.wz (com.vungle.publisher.wz)
.class public Lcom/vungle/publisher/wz;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wz$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/wy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/vungle/publisher/wy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/wz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.wz.a (com.vungle.publisher.wz$a)
.class public Lcom/vungle/publisher/wz$a;
.super Lcom/vungle/publisher/vy;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vy",
        "<",
        "Lcom/vungle/publisher/wz;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/vy;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/wz;
    .registers 2

    .prologue
    .line 49
    new-instance v0, Lcom/vungle/publisher/wz;

    invoke-direct {v0}, Lcom/vungle/publisher/wz;-><init>()V

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wz;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_2e

    .line 30
    invoke-virtual {p0}, Lcom/vungle/publisher/wz$a;->a()Lcom/vungle/publisher/wz;

    move-result-object v1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/vungle/publisher/wz;->a:Ljava/util/Map;

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 33
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 36
    iget-object v4, v1, Lcom/vungle/publisher/wz;->a:Ljava/util/Map;

    new-instance v5, Lcom/vungle/publisher/wy;

    invoke-direct {v5, v0, v3}, Lcom/vungle/publisher/wy;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2d
    move-object v0, v1

    .line 39
    :cond_2e
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wz;
    .registers 3

    .prologue
    .line 44
    new-array v0, p1, [Lcom/vungle/publisher/wz;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/wz$a;->a()Lcom/vungle/publisher/wz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wz$a;->a(I)[Lcom/vungle/publisher/wz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wz$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wz;

    move-result-object v0

    return-object v0
.end method
