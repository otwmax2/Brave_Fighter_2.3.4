###### Class com.vungle.publisher.wg (com.vungle.publisher.wg)
.class public Lcom/vungle/publisher/wg;
.super Lcom/vungle/publisher/wp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wg$a;
    }
.end annotation


# instance fields
.field m:Ljava/lang/String;

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/wp;-><init>()V

    return-void
.end method


# virtual methods
.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/wg;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/wg;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/wg;->o:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.wg.a (com.vungle.publisher.wg$a)
.class public Lcom/vungle/publisher/wg$a;
.super Lcom/vungle/publisher/wp$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/wp$b",
        "<",
        "Lcom/vungle/publisher/wg;",
        "Lcom/vungle/publisher/wv$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/wv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vungle/publisher/wp$b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wg$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wg;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wg;
    .registers 3

    .prologue
    .line 110
    new-array v0, p1, [Lcom/vungle/publisher/wg;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vungle/publisher/wg$a;->c()Lcom/vungle/publisher/wg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wg$a;->a(I)[Lcom/vungle/publisher/wg;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/wg;
    .registers 2

    .prologue
    .line 115
    new-instance v0, Lcom/vungle/publisher/wg;

    invoke-direct {v0}, Lcom/vungle/publisher/wg;-><init>()V

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
    .line 86
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wg$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wg;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wg;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_2c

    .line 98
    invoke-super {p0, p1}, Lcom/vungle/publisher/wp$b;->e(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wg;

    .line 99
    invoke-virtual {p0}, Lcom/vungle/publisher/wg$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    const-string v2, "postBundle"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wg;->m:Ljava/lang/String;

    .line 101
    const-string v2, "size"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wg;->n:Ljava/lang/Integer;

    .line 102
    const-string v2, "md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wg;->o:Ljava/lang/String;

    .line 103
    const-string v2, "md5"

    iget-object v3, v0, Lcom/vungle/publisher/wg;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/vungle/publisher/wg$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_2c
    return-object v0
.end method

.method protected d()Lcom/vungle/publisher/wv$a;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/wg$a;->b:Lcom/vungle/publisher/wv$a;

    return-object v0
.end method

.method public synthetic e(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wg$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic e()Lcom/vungle/publisher/wu$a;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vungle/publisher/wg$a;->d()Lcom/vungle/publisher/wv$a;

    move-result-object v0

    return-object v0
.end method
