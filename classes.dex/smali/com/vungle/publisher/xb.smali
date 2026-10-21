###### Class com.vungle.publisher.xb (com.vungle.publisher.xb)
.class public Lcom/vungle/publisher/xb;
.super Lcom/vungle/publisher/vs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/xb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/vs;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/xb;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vungle/publisher/xb;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/vungle/publisher/xb;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vungle/publisher/xb;->a:Ljava/util/Map;

    return-object p1
.end method

###### Class com.vungle.publisher.xb.a (com.vungle.publisher.xb$a)
.class public Lcom/vungle/publisher/xb$a;
.super Lcom/vungle/publisher/vy;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vy",
        "<",
        "Lcom/vungle/publisher/xb;",
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
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/vy;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/xb;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/vungle/publisher/xb;

    invoke-direct {v0}, Lcom/vungle/publisher/xb;-><init>()V

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)Lcom/vungle/publisher/xb;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_2c

    .line 32
    invoke-virtual {p0}, Lcom/vungle/publisher/xb$a;->a()Lcom/vungle/publisher/xb;

    move-result-object v1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v0}, Lcom/vungle/publisher/xb;->a(Lcom/vungle/publisher/xb;Ljava/util/Map;)Ljava/util/Map;

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 35
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-static {v1}, Lcom/vungle/publisher/xb;->a(Lcom/vungle/publisher/xb;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_2b
    move-object v0, v1

    .line 40
    :cond_2c
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/xb;
    .registers 3

    .prologue
    .line 45
    new-array v0, p1, [Lcom/vungle/publisher/xb;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/xb$a;->a()Lcom/vungle/publisher/xb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xb$a;->a(I)[Lcom/vungle/publisher/xb;

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
    .line 23
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xb$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/xb;

    move-result-object v0

    return-object v0
.end method
