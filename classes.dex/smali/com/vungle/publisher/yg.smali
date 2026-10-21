###### Class com.vungle.publisher.yg (com.vungle.publisher.yg)
.class public Lcom/vungle/publisher/yg;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/yg$a;
    }
.end annotation

###### Class com.vungle.publisher.yg.a (com.vungle.publisher.yg$a)
.class public Lcom/vungle/publisher/yg$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/yg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/vungle/publisher/wd;",
        "Lrx/Observable",
        "<",
        "Lcom/vungle/publisher/wc;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/wj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/wr$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/m;Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Lcom/vungle/publisher/yg$a$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/publisher/yg$a$1;-><init>(Lcom/vungle/publisher/yg$a;Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/yg$a$1;->a(Lcom/vungle/publisher/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wc;

    .line 66
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/vungle/publisher/wd;)Lcom/vungle/publisher/wc;
    .registers 6

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/vungle/publisher/wd;->n()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/vungle/publisher/wd;->d()Lcom/vungle/publisher/m;

    move-result-object v2

    .line 44
    const/4 v0, 0x0

    .line 46
    if-eqz v1, :cond_51

    .line 48
    invoke-virtual {p1}, Lcom/vungle/publisher/wd;->k()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 49
    const-string v0, "VunglePrepare"

    const-string v1, "received expired ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ad is expired"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_20
    if-nez v2, :cond_31

    .line 52
    const-string v0, "VunglePrepare"

    const-string v1, "received null adType from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "adType is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_31
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received a valid ad, continue processing ad with type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/vungle/publisher/wd;->o()Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    invoke-direct {p0, v2, v0}, Lcom/vungle/publisher/yg$a;->a(Lcom/vungle/publisher/m;Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;

    move-result-object v0

    .line 62
    :cond_51
    return-object v0
.end method

.method public b(Lcom/vungle/publisher/wd;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/wd;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/vungle/publisher/wc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/yg$a;->a(Lcom/vungle/publisher/wd;)Lcom/vungle/publisher/wc;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 24
    check-cast p1, Lcom/vungle/publisher/wd;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/yg$a;->b(Lcom/vungle/publisher/wd;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.yg.a.AnonymousClass1 (com.vungle.publisher.yg$a$1)
.class Lcom/vungle/publisher/yg$a$1;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yg$a;->a(Lcom/vungle/publisher/m;Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<",
        "Lcom/vungle/publisher/wc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/vungle/publisher/yg$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yg$a;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vungle/publisher/yg$a$1;->b:Lcom/vungle/publisher/yg$a;

    iput-object p2, p0, Lcom/vungle/publisher/yg$a$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a$1;->e()Lcom/vungle/publisher/wc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a$1;->f()Lcom/vungle/publisher/wc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a$1;->g()Lcom/vungle/publisher/wc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a$1;->h()Lcom/vungle/publisher/wc;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/wc;
    .registers 3

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yg$a$1;->b:Lcom/vungle/publisher/yg$a;

    iget-object v0, v0, Lcom/vungle/publisher/yg$a;->a:Lcom/vungle/publisher/wg$a;

    iget-object v1, p0, Lcom/vungle/publisher/yg$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/wg$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wg;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 71
    :catch_b
    move-exception v0

    .line 72
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected f()Lcom/vungle/publisher/wc;
    .registers 3

    .prologue
    .line 78
    const-string v0, "VunglePrepare"

    const-string v1, "received invalid ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "received invalid ad from server, tossing it and getting a new one"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected g()Lcom/vungle/publisher/wc;
    .registers 3

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yg$a$1;->b:Lcom/vungle/publisher/yg$a;

    iget-object v0, v0, Lcom/vungle/publisher/yg$a;->c:Lcom/vungle/publisher/wr$a;

    iget-object v1, p0, Lcom/vungle/publisher/yg$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/wr$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wr;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 86
    :catch_b
    move-exception v0

    .line 87
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected h()Lcom/vungle/publisher/wc;
    .registers 3

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yg$a$1;->b:Lcom/vungle/publisher/yg$a;

    iget-object v0, v0, Lcom/vungle/publisher/yg$a;->b:Lcom/vungle/publisher/wj$a;

    iget-object v1, p0, Lcom/vungle/publisher/yg$a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/wj$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wj;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 95
    :catch_b
    move-exception v0

    .line 96
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
